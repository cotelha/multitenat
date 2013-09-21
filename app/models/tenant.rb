class Tenant < ActiveRecord::Base
  attr_accessible :subdomain
  after_create :create_schema

  def create_schema
    connection.execute("create schema #{self.subdomain}")
    scope_schema do
      load Rails.root.join("db/schema.rb")
      connection.execute("drop table #{self.class.table_name}")
    end
  end

  def scope_schema(*paths)
    original_search_path = connection.schema_search_path
    connection.schema_search_path = ["#{self.subdomain}", *paths].join(",")
    yield
  ensure
    connection.schema_search_path = original_search_path
  end

end
