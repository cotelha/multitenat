# encoding: utf-8
require 'find'

INTEGRATION_TASKS = %w(
    git:status:check
    log:clear
    tmp:clear
    git:pull
    bundle:install
    db:migrate
    spec
    check_coverage
    git:push
)

task :check_coverage do
  require 'nokogiri'
  require 'git'
  COVERAGE_FILE = Rails.root + "coverage/index.html"
  OLD_COVERAGE_FILE = Rails.root + ".coverage_status"
  if File.exists?(OLD_COVERAGE_FILE)
    old_coverage = File.read(OLD_COVERAGE_FILE).gsub("%\n", "").to_f
  else
    old_coverage = 0.0
    File.open(OLD_COVERAGE_FILE, "w") { |f| f << old_coverage }
  end
  if File.exists?(COVERAGE_FILE)
    doc = Nokogiri::HTML(File.read(COVERAGE_FILE))
    actual_coverage = doc.xpath("//*[@id='AllFiles']/h2/span[2]/span").text.gsub("%", "").to_f
    if actual_coverage < old_coverage
      puts "Você é um fanfarrão. Nem tente fazer push de código com menos do que #{old_coverage}% de coverage."
      return false
    else
      File.open(OLD_COVERAGE_FILE, "w") { |f| f << actual_coverage }
      repository = Git.open("#{Rails.root}/../")
      repository.add("src/.coverage_status")
      unless (`git status`).include?('nothing to commit')
        repository.commit("Atualizando o coverage para #{actual_coverage}")
      end
    end
  else
    puts "Cobertura de testes não foi calculada, não há como verificar!"
    return false
  end
end

# Extract project name.
def project_name
  # File.expand_path(Rails.root).split("/").last
  File.expand_path(Rails.root).split("/")[-2]
end

# Print message with separator.
def p80(message)
  puts "-"*80
  puts message if message
  yield if block_given?
end

# Extract environment parameters
def environment_parameters(key)
  return ENV[key].split(/\s*\,\s*/) if ENV[key]
  []
end

# Check if need to skip task.
def skip_task?(task)
  environment_parameters('SKIP_TASKS').include?(task)
end

# Remove old backups
def remove_old_backups(backup_dir)
  backups_to_keep = ENV['NUMBER_OF_BACKUPS_TO_KEEP'] || 10
  backups = []
  Find.find(backup_dir) { |file_name| backups << file_name if !File.directory?(file_name) && file_name =~ /.*\.zip$/ }
  backups.sort!
  (backups - backups.last(backups_to_keep - 1)).each do |file_name|
    puts "Removing #{file_name}..."
    FileUtils.rm(file_name)
  end
end

namespace :backup do
  desc 'Creates a backup of the project in the local disk.'
  task :local do
    backup_dir = '../../backups/backup-' + project_name
    sh "mkdir -p #{backup_dir}" if !FileTest.exists?(backup_dir)
    remove_old_backups(backup_dir)
    sh "zip -rq '#{backup_dir}/#{project_name}-#{Time.now.strftime('%Y%m%d-%H%M%S')}.zip' '../#{project_name}'"
  end
end

namespace :git do

  def has_files_to_commit?
    return false if (`git status`).include?('nothing to commit')
    true
  end

  namespace :status do
    desc 'Check if project can be committed to the repository.'
    task :check do
      result = `git status`
      if result.include?('Untracked files:') || result.include?('unmerged:') || has_files_to_commit?
        puts "Files out of sync:"
        puts result
        fail
      end
    end
  end

  desc 'Update files from repository.'
  task :pull do
    sh "git pull"
  end

  desc 'Push project.'
  task :push do
    Rake::Task['git:commit'].invoke if has_files_to_commit?
    sh "git push"
  end
end

namespace :bundle do
  desc "Run bundle install"
  task :install do
    sh "bundle install"
  end
end

desc 'Integrate new code to repository'
task :integrate do
  ENV['COVERAGE'] = 'on'
  INTEGRATION_TASKS.each do |subtask|
    if Rake::Task.task_defined?("#{subtask}:before") && !skip_task?(subtask)
      p80("Executing #{subtask}:before...") do
        RAILS_ENV = ENV['RAILS_ENV'] || 'development'
        Rake::Task["#{subtask}:before"].invoke
      end
    end

    if skip_task?(subtask)
      p80 "Skipping #{subtask}..."
    else
      p80("Executing #{subtask}...") do
        RAILS_ENV = ENV['RAILS_ENV'] || 'development'
        Rake::Task[subtask].invoke
      end
    end

    if Rake::Task.task_defined?("#{subtask}:after") && !skip_task?(subtask)
      p80("Executing #{subtask}:after...") do
        RAILS_ENV = ENV['RAILS_ENV'] || 'development'
        Rake::Task["#{subtask}:after"].invoke
      end
    end
  end
end
