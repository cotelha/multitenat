# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130922151443) do

  create_table "acondicionamentos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "codigo",     :limit => 30
  end

  create_table "acude_formados", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agendamento_tipos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agendamento_tipos_users", :id => false, :force => true do |t|
    t.integer "agendamento_tipo_id"
    t.integer "user_id"
  end

  create_table "agendas", :force => true do |t|
    t.time     "inicio_manha"
    t.time     "fim_manha"
    t.time     "inicio_tarde"
    t.time     "fim_tarde"
    t.integer  "qtd_atendete"
    t.integer  "tempo_atendimento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dia_semana"
  end

  create_table "ajudas", :force => true do |t|
    t.string   "titulo"
    t.text     "texto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "grupo_id"
  end

  create_table "analise_propriedade_campos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "analise_quimicas", :force => true do |t|
    t.integer  "efluente_parametro_id"
    t.date     "data_medida"
    t.integer  "analise_id"
    t.decimal  "valor_medido"
    t.decimal  "limite_deteccao"
    t.integer  "processo_planilha_efluente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "area_fiscalizacaos", :force => true do |t|
    t.string   "nome"
    t.boolean  "parecer"
    t.boolean  "notificacao"
    t.boolean  "evento"
    t.boolean  "multa"
    t.boolean  "auto_infracao"
    t.boolean  "distribuir"
    t.boolean  "expediente"
    t.boolean  "remessa_externa"
    t.boolean  "concluir"
    t.boolean  "alterar_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "recurso"
    t.boolean  "adicionar_nota"
    t.boolean  "adicionar_carga"
    t.boolean  "rel_vistoria_denuncia"
    t.boolean  "parecer_denuncia"
  end

  create_table "area_fiscalizacaos_users", :id => false, :force => true do |t|
    t.integer "area_fiscalizacao_id"
    t.integer "user_id"
  end

  create_table "area_restricao_usos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas", :force => true do |t|
    t.string   "nome"
    t.boolean  "area_externa_secretaria"
    t.boolean  "lancar_parecer"
    t.boolean  "concluir_processo"
    t.boolean  "conpensacao_florestal"
    t.boolean  "pendencia"
    t.boolean  "protocolar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "edit_solicitacao"
    t.boolean  "edit_formulario"
    t.boolean  "distribuir"
    t.boolean  "manutencao"
    t.boolean  "estatistica"
    t.boolean  "relatorio"
    t.boolean  "gerar_pendencia"
    t.boolean  "inserir_pendencia"
    t.boolean  "aguardando_execucao"
    t.boolean  "expediente"
    t.boolean  "fiscalizacao"
    t.boolean  "prorrogar_pendencia"
    t.boolean  "atender_pendencia"
    t.boolean  "renovacao"
    t.boolean  "edit_info_adicional"
    t.boolean  "prorrogar_cancelar_processo"
    t.boolean  "documento_vinculado"
    t.boolean  "compensacao_florestal_edit"
    t.boolean  "enquadramento"
  end

  create_table "areas_users", :id => false, :force => true do |t|
    t.integer "area_id"
    t.integer "user_id"
  end

  create_table "arquivo_anexo_processos", :force => true do |t|
    t.string   "titulo"
    t.integer  "user_id"
    t.integer  "processo_id"
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_update_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "atividade_agricolas", :force => true do |t|
    t.string   "nome"
    t.integer  "grupo_atividade_agricola_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unidade_medida_id"
  end

  create_table "atividade_servicos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "atividade_interna"
    t.integer  "horas_conclusao"
    t.integer  "horas_execucao"
    t.integer  "origem_servico_id"
    t.integer  "exige_protocolo"
    t.boolean  "executado_prefeitura"
    t.boolean  "atividade_programa"
    t.decimal  "vlr_unit_servico",      :precision => 15, :scale => 2
    t.integer  "atividade_um_id"
    t.integer  "template_impressao_id"
  end

  create_table "atividade_servicos_prestador_servico_programas", :id => false, :force => true do |t|
    t.integer "atividade_servico_id"
    t.integer "prestador_servico_programa_id"
  end

  create_table "atividade_servicos_template_impressaos", :id => false, :force => true do |t|
    t.integer "atividade_servico_id"
    t.integer "template_impressao_id"
  end

  create_table "atividade_ums", :force => true do |t|
    t.integer  "unidade_medida_id"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "atividades", :force => true do |t|
    t.text     "nome",                                                                :null => false
    t.integer  "tp_solicitacao_id"
    t.string   "desc_unid_medida",        :limit => 50
    t.string   "codram",                  :limit => 15
    t.integer  "tp_form_florestal"
    t.decimal  "vlr_vrm",                               :precision => 8, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "grupo_atividade_id"
    t.boolean  "exige_tecnico"
    t.integer  "unidade_medida_id"
    t.integer  "atividade_um_id"
    t.integer  "por_licenciado_id"
    t.boolean  "ativo"
    t.boolean  "porte_unico"
    t.integer  "potencial_poluidor_id"
    t.integer  "criterio_id"
    t.text     "ajuda"
    t.integer  "atividade_id"
    t.integer  "sub_grupo_atividade_id"
    t.boolean  "processo_id_obrigatorio"
    t.integer  "template_impressao_id"
  end

  create_table "atividades_tp_documentos", :id => false, :force => true do |t|
    t.integer "atividade_id"
    t.integer "tp_documento_id"
  end

  create_table "atividades_unidade_medidas", :force => true do |t|
    t.integer  "atividade_id"
    t.integer  "unidade_medida_id"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audits", :force => true do |t|
    t.integer  "auditable_id"
    t.string   "auditable_type"
    t.integer  "associated_id"
    t.string   "associated_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "username"
    t.string   "action"
    t.text     "audited_changes"
    t.integer  "version",         :default => 0
    t.string   "comment"
    t.string   "remote_address"
    t.datetime "created_at"
  end

  add_index "audits", ["associated_id", "associated_type"], :name => "associated_index"
  add_index "audits", ["auditable_id", "auditable_type"], :name => "auditable_index"
  add_index "audits", ["created_at"], :name => "index_audits_on_created_at"
  add_index "audits", ["user_id", "user_type"], :name => "user_index"

  create_table "auto_infracaos", :force => true do |t|
    t.string   "processo_administrativo"
    t.string   "enumero"
    t.date     "data_atuacao"
    t.string   "nome"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cpf_cnpj"
    t.text     "descricao"
    t.text     "fundamentacao_legal"
    t.text     "situacao"
    t.string   "fiscal"
    t.string   "matricula"
    t.integer  "tipo_auto_infracao_id"
    t.string   "anexo_file_name"
    t.string   "anexo_content_type"
    t.integer  "anexo_file_size"
    t.datetime "anexo_update_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "penalidades"
    t.text     "observacao"
    t.integer  "solicita_fiscalizacao_id"
    t.integer  "user_id"
    t.boolean  "tipo"
    t.date     "data_ciencia"
    t.integer  "prazo"
    t.date     "data_emissao"
    t.string   "hora_emissao"
    t.string   "nome_pessoa_notificada"
    t.string   "fiscal_ids"
  end

  create_table "bacias", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bairros", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "distrito"
    t.integer  "quadrante_id"
  end

  create_table "boletos", :force => true do |t|
    t.decimal  "valor",        :precision => 8, :scale => 2
    t.integer  "processo_id"
    t.integer  "tipo"
    t.string   "nr_documento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cad_unico_legal_representantes", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.string   "cargo"
    t.integer  "empreendedor_cad_unico_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cadastro_condicionantes", :force => true do |t|
    t.integer  "atividade_id"
    t.integer  "tp_solicitacao_id"
    t.string   "titulo"
    t.text     "descricao"
    t.string   "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dias_validade"
    t.boolean  "admin"
    t.integer  "sub_grupo_atividade_id"
  end

  add_index "cadastro_condicionantes", ["ancestry"], :name => "index_cadastro_condicionantes_on_ancestry"

  create_table "cadastro_pmes", :force => true do |t|
    t.string   "nome"
    t.boolean  "formula"
    t.string   "expressao"
    t.decimal  "valor",      :precision => 8, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carga_processos", :force => true do |t|
    t.text     "descricao"
    t.integer  "nr_paginas"
    t.integer  "user_id"
    t.integer  "processo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "classes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compensacao_florestals", :force => true do |t|
    t.integer  "tp_compensacao_id"
    t.integer  "prazo"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "local_area_id"
    t.string   "end_compensacao"
    t.string   "nm_razao_compensacao"
    t.string   "cnpj_cpf"
    t.string   "nm_cientifico"
    t.string   "nm_comum"
    t.integer  "tp_especie_id"
    t.integer  "quantidade"
    t.decimal  "tamanho_area",         :precision => 12, :scale => 2
    t.integer  "processo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "registro_imovel"
    t.string   "matricula_imovel"
    t.string   "comarca"
    t.integer  "vistoria_id"
    t.string   "status"
    t.boolean  "atendida"
  end

  create_table "condicionante_fiscalizacaos", :force => true do |t|
    t.text     "condicionante"
    t.integer  "user_id"
    t.integer  "fiscalizacao_parecer_id"
    t.integer  "dias_validade"
    t.text     "observacao"
    t.integer  "ordem"
    t.boolean  "atendida"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "condicionantes", :force => true do |t|
    t.text     "condicionante"
    t.integer  "dias_validade"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "processo_id"
    t.integer  "user_id"
    t.boolean  "oculta_deferimento"
    t.boolean  "atendida"
    t.integer  "notificacoes"
    t.text     "observacao"
    t.integer  "ordem"
  end

  create_table "config_prefeituras", :force => true do |t|
    t.string   "nome"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "tipo_de_busca"
    t.string   "nome_cidade"
    t.string   "uf_cidade"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "nome_estado"
    t.string   "nome_secretaria"
    t.boolean  "dendometrico_por_especie"
    t.string   "nome_responsavel_licenca1"
    t.string   "cargo_responsavel_licenca1"
    t.string   "nome_responsavel_licenca2"
    t.string   "cargo_responsavel_licenca2"
    t.string   "endereco"
    t.string   "numero"
    t.string   "cep"
    t.string   "fone"
    t.string   "fax"
    t.string   "email"
    t.string   "bairro"
    t.string   "orgao_estadual"
    t.string   "sigla"
    t.integer  "numero_inicial_licenca"
    t.integer  "numero_inicial_solicitacao"
    t.string   "logo_secretaria_file_name"
    t.string   "logo_secretaria_content_type"
    t.integer  "logo_secretaria_file_size"
    t.datetime "logo_secretaria_updated_at"
    t.decimal  "valor_ur"
    t.text     "descricao_secretaria"
    t.string   "sigla_secretaria"
    t.text     "text_legal"
    t.boolean  "oculta_enquadramento"
    t.string   "mascara_codram"
    t.text     "email_processo_concluido"
    t.text     "email_pendencia"
    t.text     "email_vencimento_licenca"
    t.string   "mascara_protocolo"
    t.text     "observacoes_ambiental"
    t.text     "observacoes_florestal"
    t.text     "observacoes_renovacao"
    t.text     "recibo_informativo"
    t.text     "texto_informativo_tp_licenca"
    t.integer  "dias_aviso_venc_licenca"
    t.integer  "dias_aviso_venc_condicionante"
    t.text     "text_legal_isencao"
    t.integer  "template_impressao_id"
    t.string   "video_tutorial"
    t.boolean  "permissao_anexar_arquivo"
    t.boolean  "relatorio_quadrante"
    t.integer  "dt_validade_padrao"
    t.text     "texto_info_externo"
    t.string   "tipo_coordenada"
    t.string   "fuso"
    t.boolean  "abilita_atividade"
    t.text     "texto_informativo_dispenca"
    t.boolean  "cod_empreendimento"
    t.boolean  "termo_compensacao_vegetal"
    t.text     "texto_informativo_licenciamento"
    t.text     "menssagem_inicial"
    t.text     "observacoes_certidao"
    t.boolean  "confirmacao_processo"
    t.text     "observacoes_isencao"
    t.boolean  "numeracao_indvidual"
    t.boolean  "timbre_all_page"
    t.string   "top"
    t.string   "bottom"
    t.string   "left"
    t.string   "right"
    t.string   "page_style"
    t.boolean  "concluir_manual"
    t.string   "logo_home_file_name"
    t.string   "logo_home_content_type"
    t.integer  "logo_home_file_size"
    t.datetime "logo_home_updated_at"
  end

  create_table "conta_bancos", :force => true do |t|
    t.string   "banco"
    t.integer  "dias_vencimento"
    t.string   "instrucao1"
    t.string   "instrucao2"
    t.string   "instrucao3"
    t.string   "instrucao4"
    t.string   "instrucao5"
    t.string   "instrucao6"
    t.string   "cedente"
    t.string   "documento_cedente"
    t.integer  "receita"
    t.string   "cod_unico"
    t.string   "exercicio"
    t.integer  "agencia"
    t.integer  "conta_corrente"
    t.string   "especie_documento"
    t.string   "especie"
    t.string   "aceite"
    t.string   "convenio"
    t.string   "numero_documento"
    t.string   "carteira"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contratos", :force => true do |t|
    t.string   "contratante"
    t.integer  "mes_ini"
    t.integer  "mes_fim"
    t.integer  "ano_ini"
    t.integer  "ano_fim"
    t.text     "objetivo"
    t.integer  "solicita_cadastro_tecnico_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "controle_equipamentos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coordenada_processos", :force => true do |t|
    t.integer  "processo_id"
    t.text     "coordenada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "criterios", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "defensivo_agricolas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "dendometrico_processos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "dado_dendometrico_id"
    t.string   "indentificacao"
    t.string   "nome_cientifico"
    t.string   "nome_comum"
    t.integer  "quantidade"
    t.decimal  "ft_forma"
    t.decimal  "cap"
    t.decimal  "dap"
    t.decimal  "altura"
    t.decimal  "volume_toras"
    t.decimal  "volume_residuos"
    t.integer  "sanidade_id"
    t.integer  "especie_ameacada_id"
    t.integer  "ano_plantio"
    t.integer  "situacao_plantio_id"
    t.boolean  "especie_nativa"
    t.decimal  "volume_total"
    t.boolean  "folhosa"
    t.integer  "ramificacao_id"
    t.boolean  "especie_ameacada"
    t.boolean  "restrige_licenca"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "desmembramento_areas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destino_minerio_extraidos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destinos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "codigo",     :limit => 30
  end

  create_table "dispositivo_legals", :force => true do |t|
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documento_finalizados", :force => true do |t|
    t.integer  "processo_id"
    t.text     "documento"
    t.integer  "nr_licenca"
    t.date     "dt_validade"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "template_impressao_id"
    t.string   "status"
    t.text     "documentos_condicionantes"
    t.text     "observacoes"
    t.integer  "empreendimento_id"
    t.integer  "empreendedor_id"
    t.decimal  "valor_licenciado",                  :precision => 15, :scale => 2
    t.string   "protocolo"
    t.string   "nome_assinatura1"
    t.string   "cargo_assinatura1"
    t.string   "nome_assinatura2"
    t.string   "cargo_assinatura2"
    t.integer  "pai_id"
    t.decimal  "taxa",                              :precision => 10, :scale => 2
    t.decimal  "taxa_complementar",                 :precision => 10, :scale => 2
    t.boolean  "visualizar_externamente"
    t.boolean  "exige_planilha_residuo"
    t.integer  "frequencia_dias_planilha_residuos"
    t.text     "documentos_renovacao"
    t.text     "motivo_indeferimento"
    t.decimal  "multa_diaria",                      :precision => 10, :scale => 2
    t.boolean  "exige_planilha_efluente"
    t.integer  "notificacoes"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "micro_bacia_id"
  end

  create_table "documento_menus", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documento_processo_reabertos", :force => true do |t|
    t.integer  "processo_id"
    t.string   "protocolo"
    t.text     "motivo"
    t.text     "licenca"
    t.text     "parecer"
    t.integer  "nr_licenca"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documento_processos", :force => true do |t|
    t.text     "documento"
    t.date     "data_emissao"
    t.integer  "nr_documento"
    t.integer  "processo_id"
    t.integer  "user_id"
    t.integer  "template_documento_ambiental_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_assinatura_id"
    t.boolean  "assinatura_conjunto"
  end

  create_table "documentos", :force => true do |t|
    t.string   "titulo"
    t.integer  "secao_id"
    t.integer  "tp_solicitacao_id"
    t.integer  "tp_documento_id"
    t.integer  "atividade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_updated_at"
    t.text     "anexo"
    t.boolean  "tipo"
    t.integer  "sub_grupo_atividade_id"
  end

  create_table "efluente_laboratorios", :force => true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "cgc"
    t.string   "nr_cadastro_estadual"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cep"
    t.string   "municipio"
    t.string   "uf"
    t.string   "telefone"
    t.string   "fax"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "efluente_lancamento_pontos", :force => true do |t|
    t.string   "nome"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "tipo_coordenada"
    t.integer  "empreendimento_id"
    t.integer  "micro_bacia_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "efluente_parametros", :force => true do |t|
    t.string   "nome"
    t.decimal  "vlr_max"
    t.decimal  "vlr_min"
    t.string   "sigla"
    t.integer  "unidade_medida_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "metais"
  end

  create_table "efluente_tecnicos", :force => true do |t|
    t.string   "nome"
    t.string   "profissao"
    t.string   "conselho_classe"
    t.string   "nr_registro_conselho"
    t.string   "art"
    t.string   "cpf"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cep"
    t.string   "uf"
    t.string   "municipio"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empreendedor_cad_unicos", :force => true do |t|
    t.string   "cnpj_cpf"
    t.string   "nome_razao"
    t.string   "telefone"
    t.string   "email"
    t.string   "tp_pessoa"
    t.string   "rg_cgc"
    t.string   "insc_municipal"
    t.string   "nome_fantasia"
    t.string   "endereco"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro_loteamento"
    t.string   "cep"
    t.string   "municipio"
    t.string   "uf"
    t.string   "celular"
    t.string   "fax"
    t.string   "site"
    t.boolean  "ativo"
    t.string   "insc_estadual"
    t.boolean  "possui_endereco_correspondencia"
    t.string   "endereco_correspondencia"
    t.string   "numero_correspondencia"
    t.string   "complemento_correspondencia"
    t.string   "bairro_loteamento_correspondencia"
    t.string   "cep_correspondencia"
    t.string   "municipio_correspondencia"
    t.string   "uf_correspondencia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empreendedors", :force => true do |t|
    t.string   "cnpj_cpf"
    t.string   "nome_razao"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tp_pessoa",                         :limit => 2
    t.string   "rg_cgc",                            :limit => 50
    t.string   "insc_municipal",                    :limit => 50
    t.string   "nome_fantasia"
    t.string   "endereco"
    t.string   "numero",                            :limit => 10
    t.string   "complemento"
    t.string   "bairro_loteamento"
    t.string   "cep",                               :limit => 15
    t.string   "municipio"
    t.string   "uf",                                :limit => 5
    t.string   "celular",                           :limit => 50
    t.string   "fax",                               :limit => 50
    t.string   "site"
    t.integer  "empreendedor_id"
    t.boolean  "ativo"
    t.text     "insc_estadual"
    t.boolean  "possui_endereco_correspondencia"
    t.string   "endereco_correspondencia"
    t.string   "numero_correspondencia",            :limit => 10
    t.string   "complemento_correspondencia"
    t.string   "bairro_loteamento_correspondencia"
    t.string   "cep_correspondencia",               :limit => 15
    t.string   "municipio_correspondencia"
    t.string   "uf_correspondencia",                :limit => 5
  end

  create_table "empreendedors_users", :id => false, :force => true do |t|
    t.integer "empreendedor_id"
    t.integer "user_id"
  end

  create_table "empreendimento_matriculas", :force => true do |t|
    t.integer "empreendimento_id"
    t.string  "nr_matricula"
    t.string  "livro"
    t.string  "folha"
    t.string  "comarca"
    t.text    "insc_estadual"
    t.text    "cartorio"
    t.decimal "area"
    t.integer "situacao_legal"
  end

  create_table "empreendimentos", :force => true do |t|
    t.string   "nome_fantasia"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "empreendedor_id"
    t.boolean  "ativo",                   :default => true
    t.integer  "pai_id"
    t.text     "obs_empreendimento"
    t.boolean  "licenca_renovacao"
    t.integer  "licenciamento_florestal"
    t.text     "roteiro_acesso"
    t.string   "endereco"
    t.string   "cep"
    t.string   "complemento"
    t.string   "numero"
    t.string   "bairro_loteamento"
    t.string   "nr_matricula"
    t.string   "livro"
    t.string   "folha"
    t.string   "comarca"
    t.decimal  "area_total_registrada"
    t.boolean  "proprietario_imovel"
    t.string   "nome_proprietario"
    t.string   "cpf_cnpj_proprietario"
    t.string   "fone_proprietario"
    t.string   "email_proprietario"
    t.string   "cartorio_registro"
    t.date     "data_ocupacao_imovel"
    t.string   "descricao_posse"
    t.boolean  "imovel_regularizado"
    t.string   "cnpj"
    t.boolean  "com_cnpj"
    t.boolean  "localizado_app"
    t.boolean  "possui_licenciamnto"
    t.text     "numero_licencimento"
    t.boolean  "pronaf"
    t.integer  "cadastro_pme_id"
  end

  create_table "empreendimentos_users", :id => false, :force => true do |t|
    t.integer "empreendimento_id"
    t.integer "user_id"
  end

  create_table "endereco_licenciados", :force => true do |t|
    t.string   "endereco"
    t.integer  "numero"
    t.string   "complemento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cep"
    t.boolean  "valido"
    t.string   "bairro_loteamento"
  end

  create_table "enderecos", :force => true do |t|
    t.string   "nome"
    t.string   "nome_busca"
    t.string   "tipo"
    t.string   "loteamento"
    t.integer  "bairro_id"
    t.string   "cep"
    t.integer  "inicial"
    t.integer  "final"
    t.string   "lado"
    t.string   "quadrante"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enquadramento_classes", :force => true do |t|
    t.string   "codigo"
    t.integer  "porte_id"
    t.integer  "potencial_poluidor_id"
    t.decimal  "vrm",                   :precision => 20, :scale => 2
    t.decimal  "vrm_reais",             :precision => 20, :scale => 2
    t.date     "vigencia"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tp_documento_id"
    t.integer  "classe_id"
  end

  create_table "enquadramento_processos", :force => true do |t|
    t.integer "processo_id"
    t.integer "atividade_id"
    t.integer "porte_id"
    t.integer "limite_porte_id"
    t.integer "potencial_poluidor_id"
    t.integer "tp_solicitacao_id"
    t.integer "tp_documento_id"
    t.integer "empreendedor_id"
    t.integer "empreendimento_id"
    t.decimal "valor_porte"
    t.integer "enquadramento_classe_id"
  end

  create_table "enquadramentos", :force => true do |t|
    t.integer  "porte_id",                                            :null => false
    t.integer  "potencial_poluidor_id",                               :null => false
    t.integer  "tp_documento_id",                                     :null => false
    t.decimal  "valor",                 :precision => 8, :scale => 2, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "es_enquadramentos", :force => true do |t|
    t.integer  "potencial_poluidor_id"
    t.integer  "porte_id"
    t.integer  "quadrante_id"
    t.boolean  "lic_simplificada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estruturas_sistema_drenagems", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exploracao_minerals", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "familia_programas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "finalidade_usos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fiscalizacao_cadastro_texto_padraos", :force => true do |t|
    t.text     "penalidades"
    t.text     "assunto"
    t.text     "descricao"
    t.text     "observacao"
    t.integer  "tipo_auto_infracao_id"
    t.integer  "tp_documento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fiscalizacao_denuncia_pareceres", :force => true do |t|
    t.integer  "user_id"
    t.integer  "solicita_denuncia_fiscalizacao_id"
    t.datetime "data_emissao"
    t.text     "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "tipo_decisao"
    t.string   "enumero"
  end

  create_table "fiscalizacao_denuncia_rel_vistorias", :force => true do |t|
    t.integer  "user_id"
    t.integer  "solicita_denuncia_fiscalizacao_id"
    t.datetime "data_emissao"
    t.text     "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "enumero"
  end

  create_table "fiscalizacao_eventos", :force => true do |t|
    t.integer  "solicita_fiscalizacao_id"
    t.integer  "user_id"
    t.string   "nr_protocolo"
    t.date     "data_protocolo"
    t.string   "anexo"
    t.text     "assunto"
    t.text     "descricao"
    t.text     "observacao"
    t.string   "enumero"
    t.integer  "prazo"
    t.integer  "fiscalizacao_tp_documento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "anexo_file_name"
    t.string   "anexo_content_type"
    t.integer  "anexo_file_size"
    t.datetime "anexo_update_at"
    t.date     "data_ciencia"
    t.boolean  "tipo"
    t.date     "data_emissao"
    t.string   "hora_emissao"
    t.string   "nome_pessoa_notificada"
  end

  create_table "fiscalizacao_notificacaos", :force => true do |t|
    t.integer  "solicita_fiscalizacao_id"
    t.integer  "user_id"
    t.date     "data_emissao"
    t.date     "data_ciencia"
    t.string   "anexo"
    t.text     "assunto"
    t.text     "descricao"
    t.text     "observacao"
    t.string   "enumero"
    t.integer  "prazo"
    t.integer  "tp_notificacao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "anexo_file_name"
    t.string   "anexo_content_type"
    t.integer  "anexo_file_size"
    t.datetime "anexo_update_at"
    t.string   "hora_emissao"
    t.string   "nome_pessoa_notificada"
    t.string   "fiscal_ids"
    t.integer  "paidoc_id"
    t.string   "paidoc_type"
  end

  create_table "fiscalizacao_parecers", :force => true do |t|
    t.integer  "solicita_fiscalizacao_id"
    t.integer  "user_id"
    t.text     "motivo_objeto"
    t.text     "local_dano"
    t.text     "observacao"
    t.string   "enumero"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "data_emissao"
    t.string   "hora_emissao"
  end

  create_table "fiscalizacao_recursos", :force => true do |t|
    t.text     "descricao"
    t.text     "assunto"
    t.date     "data_emissao"
    t.string   "hora_emissao"
    t.string   "enumero"
    t.integer  "user_id"
    t.integer  "solicita_fiscalizacao_id"
    t.boolean  "tipo"
    t.integer  "prazo"
    t.date     "data_ciencia"
    t.integer  "tp_instancia_id"
    t.string   "nr_protocolo"
    t.date     "data_protocolo"
    t.integer  "tp_conclusao_id"
    t.string   "anexo_file_name"
    t.string   "anexo_content_type"
    t.integer  "anexo_file_size"
    t.datetime "anexo_update_at"
    t.integer  "tp_documento_recurso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome_pessoa_notificada"
  end

  create_table "fiscalizacao_rel_vistorias", :force => true do |t|
    t.text     "descricao"
    t.text     "dispositivos_legais"
    t.date     "data_emissao"
    t.string   "hora_emissao"
    t.string   "enumero"
    t.integer  "auto_infracao_id"
    t.integer  "multa_id"
    t.integer  "user_id"
    t.integer  "solicita_fiscalizacao_id"
    t.boolean  "tipo"
    t.text     "anexo_file_name"
    t.text     "anexo_content_type"
    t.integer  "anexo_file_size"
    t.datetime "anexo_update_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fiscal_ids"
  end

  create_table "fiscalizacao_tp_documentos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fonte_abastecimentos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forma_estocagems", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gerador_equipamentos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupo_atividade_agricolas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupo_atividades", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupo_perguntas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "horario_agendados", :force => true do |t|
    t.integer  "user_id"
    t.text     "objetivo"
    t.datetime "horario"
    t.string   "fone"
    t.text     "feedback"
    t.boolean  "atendido"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_acargo_id"
    t.integer  "user_atendeu_id"
  end

  create_table "imovel_nao_regularizados", :force => true do |t|
    t.integer  "empreendimento_id"
    t.decimal  "area"
    t.date     "data_ocupacao"
    t.integer  "situacao_legal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "identificacao"
  end

  create_table "item_pendencias", :force => true do |t|
    t.integer  "pendencia_id"
    t.integer  "user_id"
    t.text     "obs_pendencia"
    t.text     "obs_pendencia_atendida"
    t.boolean  "atendida"
    t.integer  "atendida_por"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "prazo"
  end

  create_table "legal_representantes", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.string   "cargo"
    t.integer  "empreendedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "licenca_digitals", :force => true do |t|
    t.integer  "numero_licenca"
    t.string   "razao_social"
    t.string   "cpf_cnpj"
    t.integer  "tp_solicitacao_id"
    t.string   "processo_adiministrativo"
    t.date     "data_vencimento"
    t.date     "data_l"
    t.integer  "atividade_id"
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_update_at"
    t.integer  "tp_documento_id"
    t.integer  "porte_id"
    t.integer  "potencial_poluidor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "limite_portes", :force => true do |t|
    t.integer "atividade_id",                                         :null => false
    t.integer "potencial_poluidor_id",                                :null => false
    t.integer "porte_id",                                             :null => false
    t.decimal "limite_ate",            :precision => 12, :scale => 2
    t.boolean "exige_tecnico"
    t.boolean "convenio_porte"
    t.integer "sinal_id"
  end

  create_table "local_armazenamentos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "local_lancamento_efluentes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "local_recuperacaos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "localidade_servicos", :force => true do |t|
    t.string   "nome"
    t.integer  "bairro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "localizacao_areas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manual_usuario_internos", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "user_admin"
  end

  create_table "manual_usuarios", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materia_primas", :force => true do |t|
    t.string   "nome"
    t.integer  "unidade_medida_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "material_retirado_desassoreamentos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mecanizacaos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.string   "nome"
    t.boolean  "restringe"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "fiscalizacao"
    t.boolean  "ambiental"
    t.boolean  "agricultura"
  end

  create_table "metodo_desmontes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metodo_exploracao_minerals", :force => true do |t|
    t.string   "nome"
    t.integer  "exploracao_mineral_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "micro_bacias", :force => true do |t|
    t.string   "nome"
    t.integer  "bacia_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "motivo_intervencaos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movimentacao_solicita_denuncia_fiscalizacaos", :force => true do |t|
    t.integer  "user_id"
    t.integer  "solicita_denuncia_fiscalizacao_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movimentacao_solicita_fiscalizacaos", :force => true do |t|
    t.integer  "user_id"
    t.integer  "solicita_fiscalizacao_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fiscalizacao_tp_documento_id"
    t.integer  "tp_documento_recurso_id"
  end

  create_table "movimentacoes", :force => true do |t|
    t.string   "status"
    t.integer  "user_id"
    t.integer  "processo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "multas", :force => true do |t|
    t.string   "processo_administrativo"
    t.string   "enumero"
    t.date     "data"
    t.float    "valor"
    t.text     "fundamentacao_legal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "solicita_fiscalizacao_id"
    t.integer  "user_id"
    t.text     "penalidades"
    t.text     "observacao"
    t.text     "descricao"
    t.string   "anexo_file_name"
    t.string   "anexo_content_type"
    t.integer  "anexo_file_size"
    t.datetime "anexo_update_at"
    t.integer  "prazo"
    t.date     "data_ciencia"
    t.decimal  "valor_arrecadado"
    t.boolean  "tipo"
    t.string   "status"
    t.date     "data_emissao"
    t.string   "hora_emissao"
    t.string   "codigo_multa"
    t.string   "nome_pessoa_notificada"
    t.string   "fiscal_ids"
  end

  create_table "nota_processos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "user_id"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "noticias", :force => true do |t|
    t.string   "titulo"
    t.text     "texto_noticia"
    t.boolean  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "nome_noticia"
    t.integer  "user_id"
    t.integer  "tipo_noticia"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "anexo_file_name"
    t.string   "anexo_content_type"
    t.integer  "anexo_file_size"
    t.datetime "anexo_updated_at"
  end

  create_table "obs_movimentacoes", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "movimentacao_id"
    t.text     "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parc_solo_desmembramento_areas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unidade_medida_id"
  end

  create_table "parecers", :force => true do |t|
    t.integer  "user_id"
    t.integer  "processo_id"
    t.string   "tipo"
    t.text     "parecer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "encaminhado_user_id"
    t.boolean  "por_equipe_tecnica"
    t.integer  "encaminhado_area_id"
    t.text     "relatorio_vistoria"
    t.string   "tecnico_ids"
    t.boolean  "com_nome_equipe"
  end

  create_table "partial_formularios", :force => true do |t|
    t.string   "nome"
    t.string   "caminho"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "modelo"
  end

  create_table "partial_passo_formularios", :force => true do |t|
    t.integer  "partial_formulario_id"
    t.integer  "passo_formulario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passo_excluis", :force => true do |t|
    t.integer  "passo_formulario_id"
    t.integer  "atividade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sub_grupo_atividade_id"
  end

  create_table "passo_formularios", :force => true do |t|
    t.string   "titulo"
    t.string   "subtitulo"
    t.integer  "atividade_id"
    t.integer  "grupo_atividade_id"
    t.integer  "ordem_exibicao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sub_grupo_atividade_id"
    t.integer  "tp_solicitacao_id"
  end

  create_table "pendencias", :force => true do |t|
    t.text     "descricao"
    t.integer  "processo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "atendida"
    t.boolean  "criada"
    t.date     "data_ar"
    t.boolean  "ar_enviada"
  end

  create_table "por_licenciados", :force => true do |t|
    t.string   "nome"
    t.boolean  "aumenta_porte"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portes", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portes_tp_documentos", :id => false, :force => true do |t|
    t.integer "porte_id"
    t.integer "tp_documento_id"
  end

  create_table "potencial_poluidores", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prazos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "prazo_id"
    t.integer  "user_id"
    t.integer  "dias"
    t.text     "descricao"
    t.integer  "prazodoc_id"
    t.string   "prazodoc_type"
    t.date     "data_ciencia"
    t.boolean  "atendida"
    t.string   "pessoa_notificada"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "multa_diaria"
    t.decimal  "multa"
    t.date     "data_atendida"
    t.decimal  "valor_atendida"
  end

  add_index "prazos", ["prazodoc_id"], :name => "index_prazos_on_prazodoc_id"
  add_index "prazos", ["prazodoc_type"], :name => "index_prazos_on_prazodoc_type"

  create_table "prestador_servico_programas", :force => true do |t|
    t.string   "nome_razao"
    t.string   "cnpj_cpf"
    t.string   "nome_fantasia"
    t.string   "tp_pessoa"
    t.string   "telefone"
    t.string   "email"
    t.boolean  "ativo"
    t.integer  "atividade_servico_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "isento_taxa"
  end

  create_table "processo_abastecimento_aguas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "fonte_abastecimento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_analise_propriedade_campos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "analise_propriedade_campo_id"
    t.decimal  "total_area",                   :precision => 12, :scale => 2
    t.decimal  "em_app_area",                  :precision => 12, :scale => 2
    t.decimal  "fora_app_area",                :precision => 12, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "outro_descricao"
  end

  create_table "processo_area_licenciars", :force => true do |t|
    t.integer  "processo_id"
    t.decimal  "area_a_licenciar",  :precision => 20, :scale => 3
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unidade_medida_id"
  end

  create_table "processo_area_restricao_usos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "area_restricao_uso_id"
    t.string   "nome"
    t.decimal  "distancia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_atividade_agricola_cultivadas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "atividade_agricola_cultivada_id"
    t.integer  "atividade_agricola_id"
    t.integer  "unidade_medida_id"
    t.decimal  "area"
    t.decimal  "producao_anual"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_atividade_agricolas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "atividade_agricola_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_atividade_parcelamentos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "tipo_parcelamento_id"
    t.integer  "tipo_ocupacao_id"
    t.decimal  "area"
    t.integer  "populacao_prevista"
    t.integer  "num_previsto_lote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_bacia_decantacaos", :force => true do |t|
    t.integer  "processo_id"
    t.boolean  "possui_bacia"
    t.integer  "numero_bacia"
    t.text     "descricao_bacias"
    t.string   "origem_efluente"
    t.boolean  "impermeabilizada"
    t.text     "tipo_ipermebealizacao"
    t.decimal  "capacidade_armazenamento"
    t.integer  "vida_util"
    t.string   "periodicidade_limpeza"
    t.text     "destinacao_material_decantado"
    t.string   "destinacao_final_efluente"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_bem_mineral_objetivados", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "produto_mineral_id"
    t.string   "numero_licenca_dnpb"
    t.string   "numero_protocolo_dnpb"
    t.string   "vigencia_licenca_dnpb"
    t.string   "vida_util_jazida"
    t.decimal  "producao_mensal"
    t.decimal  "quantidade_rejeitos"
    t.decimal  "quantidade_sub_produtos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_benefiamento_minerals", :force => true do |t|
    t.integer  "processo_id"
    t.boolean  "beneficiamento"
    t.integer  "processo_utilizado_id"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_cadastro_ineas", :force => true do |t|
    t.integer  "processo_id"
    t.text     "parametros"
    t.boolean  "area_degradada"
    t.boolean  "utiliza_amonia"
    t.boolean  "tancagem_elevada_substancia"
    t.integer  "enquadramento_classe_id"
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.string   "arquivo_file_size"
    t.string   "arquivo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_captacao_aguas", :force => true do |t|
    t.integer  "processo_id"
    t.decimal  "volume",      :precision => 12, :scale => 2
    t.boolean  "bombeado"
    t.boolean  "derivacao"
    t.integer  "frequencia"
    t.integer  "periodo"
    t.integer  "iniciado_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_caracteristica_acudes", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "caracteristica_acude_id"
    t.decimal  "area_alagada"
    t.decimal  "profundidade_atual"
    t.decimal  "altura_taipa"
    t.integer  "acude_formado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_caracterizacao_corpo_hidrico_desassoreamentos", :force => true do |t|
    t.integer  "processo_id"
    t.string   "denominacao_corpo_hidrico"
    t.decimal  "distancia_desassoreamento"
    t.decimal  "profundidade_media_cursor"
    t.integer  "largura_media_cursor_id"
    t.integer  "micro_bacia_id"
    t.integer  "micro_bacia_secundaria_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_combustivel_utilizados", :force => true do |t|
    t.integer  "tipo_combustivel_id"
    t.integer  "local_armazenamento_id"
    t.decimal  "consumo_medio",          :precision => 12, :scale => 2
    t.boolean  "prevencao_incendio"
    t.boolean  "prevencao_derrama"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "processo_id"
  end

  create_table "processo_compensacao_florestals", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "tp_compensacao"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "local_area_id"
    t.string   "nome_cientifico"
    t.string   "nome_comun"
    t.integer  "tp_especie_id"
    t.integer  "quantidade"
    t.string   "end_compensacao"
    t.string   "nome_razao"
    t.string   "cpf_cnpj"
    t.float    "tamanho_area"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tipo_coordenada"
  end

  create_table "processo_controle_erosao_sistema_drenagems", :force => true do |t|
    t.integer  "processo_id"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_coordenada_geografica_googles", :force => true do |t|
    t.integer  "processo_id"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "fuso"
    t.string   "datum"
    t.string   "sistema_coordenada"
    t.string   "hemisferio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_coordenada_geograficas", :force => true do |t|
    t.integer  "processo_id"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "tipo_coordenada"
    t.string   "formato_coordenada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_coordenada_poligonos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "coordenada_poligono_id"
    t.integer  "ponto"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_criacao_animals", :force => true do |t|
    t.integer  "tipo_producao_animal_id"
    t.string   "especie"
    t.integer  "quantidade"
    t.integer  "sistema_manejo_id"
    t.integer  "producao_animais_objeto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "processo_id"
    t.decimal  "quantidade_objetivo"
  end

  create_table "processo_dado_dendometricos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "dado_dendometrico_id"
    t.string   "indentificacao"
    t.string   "nome_cientifico"
    t.string   "nome_comum"
    t.integer  "quantidade"
    t.decimal  "ft_forma"
    t.decimal  "cap"
    t.decimal  "dap"
    t.decimal  "altura"
    t.decimal  "volume_toras"
    t.decimal  "volume_residuos"
    t.integer  "sanidade_id"
    t.integer  "ano_plantio"
    t.integer  "situacao_plantio_id"
    t.boolean  "especie_nativa"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "volume_total",         :precision => 12, :scale => 2
    t.boolean  "folhosa"
    t.integer  "ramificacao_id"
    t.boolean  "especie_ameacada"
    t.boolean  "restrige_licenca"
  end

  create_table "processo_dado_trasportadors", :force => true do |t|
    t.integer  "processo_id"
    t.string   "nome"
    t.string   "cnpj_cpf"
    t.string   "endereco"
    t.string   "numero"
    t.string   "municipio"
    t.string   "telefone"
    t.string   "fax"
    t.string   "email"
    t.string   "cep"
    t.string   "uf"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tp_dado"
  end

  create_table "processo_dados_consumidor_materia_primas", :force => true do |t|
    t.integer  "processo_id"
    t.string   "cpf_cnpj"
    t.string   "cgc"
    t.string   "nome"
    t.string   "endereco"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro_loteamento"
    t.string   "cep"
    t.string   "municipio"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tp_dado"
    t.string   "cadastro_sema"
  end

  create_table "processo_dados_proprietario_areas", :force => true do |t|
    t.integer  "processo_id"
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.string   "registro_imovel"
    t.string   "livro"
    t.string   "folha"
    t.string   "comarca"
    t.decimal  "area_total_propriedade"
    t.decimal  "area_reserva_legal"
    t.string   "registro_incra"
    t.string   "lote"
    t.string   "quadra"
    t.integer  "vinculo_id"
    t.string   "contrato_arrendamento"
    t.date     "validade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_data_hora_atividades", :force => true do |t|
    t.integer  "processo_id"
    t.date     "data_inicio"
    t.date     "data_termino"
    t.string   "hora_inicio"
    t.string   "hora_termino"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_defensivo_agricolas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "defensivo_agricola_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fornecedor"
    t.integer  "local_armazenamento_id"
    t.string   "cultura_utilizada"
    t.string   "aplicacao_safra"
    t.decimal  "consumo",                  :precision => 8, :scale => 2
    t.integer  "tp_aplicacao_id"
    t.integer  "periodo_ini"
    t.integer  "periodo_fim"
    t.string   "outro_descricao"
    t.integer  "unidade_consumo_anual_id"
  end

  create_table "processo_definicao_intervencas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "objetivo_vistoria_id"
    t.integer  "motivo_intervencao_id"
    t.text     "justificativa_manejo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_descricao_area_agricolas", :force => true do |t|
    t.integer  "processo_id"
    t.decimal  "area_total_propriedade"
    t.decimal  "area_total_cultivada"
    t.decimal  "area_total_cultivada_propria"
    t.decimal  "area_total_arrendada_locada"
    t.decimal  "area_total_destinada_pecuaria_gado_leiteito"
    t.decimal  "area_total_destinada_aquicultura_piscicultura"
    t.decimal  "area_total_destinada_criacao_aves"
    t.decimal  "area_total_destinada_criacao_suinos"
    t.decimal  "area_total_destinada_preservacao_ambiental"
    t.decimal  "area_total_reserva_legal"
    t.boolean  "averbada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_descricao_finalidades", :force => true do |t|
    t.integer  "processo_id"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_descricao_processo_produtivos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "descricao_processo_produtivo_id"
    t.string   "etapa"
    t.text     "descricao_etapa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_descricao_recuperacaos", :force => true do |t|
    t.integer  "processo_id"
    t.text     "observacao_responsavel"
    t.text     "cronograma_execucao"
    t.text     "medida_isolamento"
    t.text     "metodologia_plantio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_descricao_simples_atividades", :force => true do |t|
    t.integer  "processo_id"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_descricao_tratamento_efluentes", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "descricao_tratamento_efluente_id"
    t.string   "etapa"
    t.text     "descricao_etapa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_desmembramento_areas", :force => true do |t|
    t.integer  "desmembramento_area_id"
    t.integer  "processo_id"
    t.decimal  "tamanho",                :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unidade_tamanho_id"
  end

  create_table "processo_desmonte_atividade_minerals", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "desmonte_atividade_mineral_id"
    t.integer  "metodo_desmonte_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_destinacao_minerio_extraidos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "destinacao_minerio_extraido_id"
    t.integer  "destino_minerio_extraido_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_destinatario_residuos", :force => true do |t|
    t.integer  "processo_id"
    t.string   "cpf_cnpj"
    t.string   "cgc"
    t.string   "nome"
    t.string   "endereco"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro_loteamento"
    t.string   "cep"
    t.string   "municipio"
    t.string   "telefone"
    t.string   "email"
    t.string   "responsavel_legal"
    t.string   "registro_cad_florestal"
    t.string   "autorizacao_transporte"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tp_dado"
  end

  create_table "processo_destino_agua_servidas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "micro_bacia_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_destino_material_excedentes", :force => true do |t|
    t.integer  "processo_id"
    t.string   "proprietario"
    t.string   "cnpj_cpf"
    t.string   "endereco"
    t.string   "numero"
    t.string   "cep"
    t.string   "uf"
    t.string   "municipio"
    t.string   "licenca_instalacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tp_dado"
  end

  create_table "processo_destino_rejeitos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "destino_rejeito_id"
    t.string   "tp_dado"
    t.string   "nome_proprietario"
    t.string   "cpf_cnpj"
    t.string   "endereco"
    t.string   "numero"
    t.string   "municipio"
    t.string   "cep"
    t.string   "estado"
    t.string   "numero_licenca"
    t.string   "tipo_licenca"
    t.string   "orgao_ambiental"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "bairro_loteamento"
  end

  create_table "processo_emissao_atmosfericas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "emissao_atmosferica_id"
    t.integer  "gerador_equipamento_id"
    t.integer  "qnt_equipamento"
    t.integer  "controle_equipamento_id"
    t.integer  "tipo_combustivel_id"
    t.decimal  "consumo_combustivel"
    t.integer  "unidade_medida_id"
    t.integer  "altura_chamine"
    t.integer  "emissao_hora_dia"
    t.integer  "emissao_dia_mes"
    t.integer  "emissao_mes_ano"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "usa_combustivel"
  end

  create_table "processo_emissao_atmosfericas_tipo_emissaos", :id => false, :force => true do |t|
    t.integer "processo_emissao_atmosferica_id"
    t.integer "tipo_emissao_id"
  end

  create_table "processo_equipamento_producaos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "equipamento_producao_id"
    t.string   "equipamento"
    t.string   "descricao_equipamento"
    t.integer  "quantidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_equipamento_uso_desmontes", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "equipamento_uso_desmonte_id"
    t.string   "nome"
    t.string   "placa"
    t.string   "marca"
    t.string   "modelo"
    t.string   "cor"
    t.string   "ano_fabricacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_erosivo_sistema_drenagems", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "erosivo_sistema_drenagem_id"
    t.integer  "sistema_drenagem_escoamento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_estrutura_sistema_drenagems", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "estrutura_sistema_drenagem_id"
    t.integer  "estruturas_sistema_drenagem_id"
    t.string   "outro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_executor_cortes", :force => true do |t|
    t.integer  "processo_id"
    t.string   "cpf_cnpj"
    t.string   "cgc"
    t.string   "nome"
    t.string   "endereco"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro_loteamento"
    t.string   "cep"
    t.string   "municipio"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tp_dado"
  end

  create_table "processo_explosivo_utilizados", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "explosivo_utilizado_id"
    t.string   "explosivo"
    t.string   "fornecedor"
    t.decimal  "quantidade",             :precision => 10, :scale => 2
    t.integer  "unidade_medida_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "numero_licenca"
    t.date     "data_expedicao_licenca"
    t.date     "data_validade_licenca"
    t.boolean  "licenca_exercito"
  end

  create_table "processo_extracao_dragagems", :force => true do |t|
    t.integer  "processo_id"
    t.boolean  "corpo_hidrico_natural"
    t.boolean  "corpo_hidrico_artificial"
    t.boolean  "cava"
    t.text     "outro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_finalidade_usos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "finalidade_uso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_fonte_ruido_vibracaos", :force => true do |t|
    t.integer  "processo_id"
    t.text     "descricao_fonte_ruido"
    t.text     "descricao_medida_controle_ruido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_grau_mecanizacaos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "mecanizacao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_industrial_efluentes", :force => true do |t|
    t.integer  "processo_id"
    t.decimal  "volume"
    t.integer  "regime_funcionamento_id"
    t.boolean  "possui_medidor_vazao"
    t.integer  "medidor_vazao_id"
    t.integer  "tp_medidor_vazao_id"
    t.boolean  "possui_recirculacao_efluente"
    t.integer  "recirculacao_efluente_id"
    t.string   "aplicacao_efluente_reutilizado"
    t.integer  "local_lancamento_efluente_id"
    t.string   "latitude_ponto_lancamento"
    t.string   "longitude_ponto_lancamento"
    t.integer  "periodo_diario_lancamento"
    t.integer  "periodo_anual_lancamento"
    t.integer  "frequencia_lancamento_semana"
    t.integer  "sazonal_inicia_mes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_info_adicional_aguardando_publicacaos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "quadrante_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "datum"
    t.datetime "dt_validade"
    t.decimal  "taxa"
    t.decimal  "taxa_complementar"
    t.boolean  "exige_planilha_residuo"
    t.integer  "frequencia_dias_planilha_residuos"
    t.boolean  "exige_planilha_efluente"
    t.integer  "frequencia_dias_planilha_efluente"
    t.integer  "micro_bacia_id"
    t.integer  "bairro_id"
    t.integer  "endereco_id"
    t.string   "status"
    t.integer  "nr_licenca"
    t.decimal  "valor_licenciado"
    t.string   "nome_responsavel_licenca1"
    t.string   "cargo_responsavel_licenca1"
    t.string   "nome_responsavel_licenca2"
    t.string   "cargo_responsavel_licenca2"
    t.boolean  "renovacao"
    t.boolean  "cancelada"
    t.integer  "tp_certidao_id"
    t.integer  "status_licenca"
  end

  create_table "processo_info_adicionals", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "quadrante_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "datum"
    t.date     "dt_validade"
    t.decimal  "taxa",                              :precision => 12, :scale => 2
    t.decimal  "taxa_complementar",                 :precision => 12, :scale => 2
    t.boolean  "exige_planilha_residuo"
    t.integer  "frequencia_dias_planilha_residuos"
    t.boolean  "exige_planilha_efluente"
    t.integer  "frequencia_dias_planilha_efluente"
    t.integer  "micro_bacia_id"
    t.integer  "bairro_id"
    t.integer  "endereco_id"
    t.string   "status"
    t.integer  "nr_licenca"
    t.decimal  "valor_licenciado",                  :precision => 20, :scale => 3
    t.string   "nome_responsavel_licenca1"
    t.string   "cargo_responsavel_licenca1"
    t.string   "nome_responsavel_licenca2"
    t.string   "cargo_responsavel_licenca2"
    t.boolean  "renovacao"
    t.boolean  "cancelada"
    t.integer  "tp_certidao_id"
    t.integer  "status_licenca"
    t.boolean  "aguardando_publicacao"
  end

  create_table "processo_info_empreendimentos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "hora_dia_id"
    t.integer  "dia_mes_id"
    t.integer  "mes_ano_id"
    t.integer  "nr_funcionario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "data_ini_atividade_local"
  end

  create_table "processo_informacao_areas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "tipo_solo_predominante_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo_relevo_predominante_id"
    t.boolean  "existe_morro"
    t.boolean  "existe_montanha"
    t.boolean  "existe_risco_erosao"
    t.boolean  "existe_risco_terreno"
    t.boolean  "existe_declive"
  end

  create_table "processo_intervenca_apps", :force => true do |t|
    t.integer  "processo_id"
    t.text     "descricao_intervencao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "area_intervencao"
  end

  create_table "processo_licencas", :force => true do |t|
    t.integer  "atividade_id"
    t.integer  "tp_documento_id"
    t.integer  "processo_id",                                                :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "porte",                        :precision => 8, :scale => 2
    t.integer  "empreendimento_id",                                          :null => false
    t.integer  "solicita_cadastro_tecnico_id"
    t.integer  "porte_id"
    t.integer  "limite_porte_id"
    t.integer  "empreendedor_id"
    t.string   "nr_renovacao"
    t.integer  "status"
  end

  create_table "processo_local_transplantes", :force => true do |t|
    t.integer  "processo_id"
    t.string   "lat_origem"
    t.string   "long_origem"
    t.string   "lat_destino"
    t.string   "long_destino"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "desc_local_origem"
    t.text     "desc_local_destino"
  end

  create_table "processo_localizacao_areas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "localizacao_area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_localizacao_nascentes", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "localizacao_nascente_id"
    t.integer  "etapa"
    t.decimal  "distancia"
    t.string   "tipo_coordenada"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_manejo_solos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "manejo_solo_id"
    t.integer  "tipo_manejo_solo_id"
    t.decimal  "area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_materia_primas", :force => true do |t|
    t.integer  "processo_id"
    t.string   "materia_prima"
    t.decimal  "consumo_atua",         :precision => 12, :scale => 2
    t.decimal  "capacidade_instalada", :precision => 12, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unidade_medida_id"
  end

  create_table "processo_material_retirado_desassoreamentos", :force => true do |t|
    t.integer  "processo_id"
    t.decimal  "volume_material"
    t.string   "periodicidade"
    t.integer  "material_retirado_desassoreamento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_metodo_exploracao_minerals", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "metodo_exploracao_mineral_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_mineracao_leito_rios", :force => true do |t|
    t.integer  "processo_id"
    t.boolean  "minerio_submerso"
    t.boolean  "minerio_emerso"
    t.boolean  "deposito_inundacao"
    t.boolean  "fora_recurso_hidrico"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_novo_empreendedors", :force => true do |t|
    t.integer  "processo_id"
    t.string   "cnpj_cpf"
    t.string   "nome_razao"
    t.string   "telefone"
    t.string   "email"
    t.string   "tp_pessoa",                         :limit => 2
    t.string   "rg_cgc",                            :limit => 50
    t.string   "insc_municipal",                    :limit => 50
    t.string   "nome_fantasia"
    t.string   "endereco"
    t.string   "numero",                            :limit => 10
    t.string   "complemento"
    t.string   "bairro_loteamento"
    t.string   "cep",                               :limit => 15
    t.string   "municipio"
    t.string   "uf",                                :limit => 5
    t.string   "celular",                           :limit => 50
    t.string   "fax",                               :limit => 50
    t.text     "insc_estadual"
    t.boolean  "possui_endereco_correspondencia"
    t.string   "endereco_correspondencia"
    t.string   "numero_correspondencia",            :limit => 10
    t.string   "complemento_correspondencia"
    t.string   "bairro_loteamento_correspondencia"
    t.string   "cep_correspondencia",               :limit => 15
    t.string   "municipio_correspondencia"
    t.string   "uf_correspondencia",                :limit => 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_origem_material_emprestimos", :force => true do |t|
    t.integer  "processo_id"
    t.string   "proprietario"
    t.string   "cnpj_cpf"
    t.string   "endereco"
    t.string   "numero"
    t.string   "cep"
    t.string   "uf"
    t.string   "municipio"
    t.string   "licenca_instalacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tp_dado"
  end

  create_table "processo_origem_recurso_financeiros", :force => true do |t|
    t.integer  "processo_id"
    t.decimal  "proprio"
    t.decimal  "emprestimo_bancario"
    t.decimal  "outro_emprestimo"
    t.decimal  "pronaf"
    t.decimal  "sistema_troca"
    t.decimal  "outro"
    t.string   "outro_descricao"
    t.string   "pronaf_numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_outro_recurso_hidricos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "outro_recurso_hidrico_id"
    t.integer  "bacia_primaria_id"
    t.integer  "bacia_secundaria_id"
    t.string   "denominacao_corpo_hidrico"
    t.decimal  "distancia_objeto_licenciado"
    t.integer  "largura_id"
    t.boolean  "barragem_propriedade"
    t.string   "supercie_barragem"
    t.integer  "tipo_recurso_hidrico_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_parc_solo_desmembramento_areas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "parc_solo_desmembramento_area_id"
    t.decimal  "tamanho",                          :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_passivo_ambientals", :force => true do |t|
    t.integer  "processo_id"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_planilha_efluentes", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "tp_efluente_id"
    t.integer  "efluente_lancamento_ponto_id"
    t.decimal  "emissao",                      :precision => 8, :scale => 3
    t.decimal  "ph",                           :precision => 8, :scale => 3
    t.decimal  "temperatura",                  :precision => 8, :scale => 3
    t.boolean  "possui_sistema_tratamento"
    t.integer  "operacao_sistema_id"
    t.boolean  "possui_medidor_vazao"
    t.integer  "recirculacao_efluente_id"
    t.integer  "duracao_lancamento"
    t.integer  "frequencia_semanal"
    t.integer  "frequencia_anual"
    t.integer  "sazonal"
    t.integer  "efluente_laboratorio_id"
    t.integer  "efluente_tecnico_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_planilha_residuos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "residuo_id"
    t.decimal  "quantidade"
    t.integer  "unidade_medida_id"
    t.integer  "acondicionamento_id"
    t.integer  "destino_id"
    t.string   "destinatario"
    t.string   "endereco_destinatario"
    t.string   "municipio_destinatario"
    t.string   "uf_destinatario"
    t.string   "cpf_cnpj_destinatario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "solicita_planilha_residuo_id"
    t.string   "lo_destinatario"
    t.boolean  "periculosidade"
  end

  create_table "processo_pontos_captacaos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "pontos_captacao_id"
    t.integer  "micro_bacia_id"
    t.string   "nome_corpo_hidrico"
    t.integer  "fonte_abastecimento_id"
    t.integer  "largura_corpo_id"
    t.decimal  "area_lamina_agua"
    t.string   "latitude"
    t.string   "longitude"
    t.decimal  "area_irrigada"
    t.decimal  "vazao"
    t.integer  "fonte_energia_id"
    t.decimal  "potencia_motor"
    t.boolean  "derivacao_gravidade"
    t.boolean  "bombeamento"
    t.integer  "petencia_motor_sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_produto_quimicos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "produto_quimico_id"
    t.string   "nome_substancia"
    t.string   "utilizado_para"
    t.string   "fabricante"
    t.integer  "local_armazenamento_id"
    t.decimal  "consume_medio"
    t.integer  "unidade_medida_id"
    t.boolean  "sistema_contra_incendio"
    t.boolean  "equipamento_contra_vazamento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_produto_sedimentacaos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "produto_sedimentacao_id"
    t.string   "tipo_produto"
    t.string   "nome_produto"
    t.string   "fabricante"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_produto_utilizados", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "produto_utilizado_id"
    t.string   "nome"
    t.decimal  "producao_atual",       :precision => 12, :scale => 2
    t.decimal  "capacidade_instalada", :precision => 12, :scale => 2
    t.integer  "unidade_medida_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_proposta_recuperacaos", :force => true do |t|
    t.integer  "processo_id"
    t.decimal  "area_recuperada"
    t.integer  "qtd_mudas"
    t.string   "mata_ciliar"
    t.string   "mata_encosta"
    t.string   "banhado"
    t.text     "medidas_isolamento"
    t.text     "metodologia_plantio"
    t.string   "cronograma_execucao"
    t.string   "observacao_responsavel"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "local_recuperacao_id"
    t.text     "outro_descricao"
  end

  create_table "processo_recurso_financeiros", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "fonte_id"
    t.string   "cadastro_pronaf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_recurso_hidricos", :force => true do |t|
    t.integer  "processo_id"
    t.boolean  "curso_dagua"
    t.boolean  "banhado"
    t.boolean  "nascente"
    t.boolean  "lago"
    t.boolean  "lagoa"
    t.boolean  "area_inundacao"
    t.boolean  "reserva_agua"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_regime_juridicos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "regime_juridico_id"
    t.boolean  "solicitacao"
    t.string   "outro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_regularizacao_topograficas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "regularizacao_topografica_id"
    t.string   "tp_dado"
    t.string   "nome_proprietario"
    t.string   "cpf_cnpj"
    t.string   "endereco"
    t.string   "numero"
    t.string   "municipio"
    t.string   "cep"
    t.string   "estado"
    t.string   "numero_licenca"
    t.string   "tipo_licenca"
    t.string   "orgao_ambiental"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "bairro_loteamento"
  end

  create_table "processo_relacionados", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "processo_relacionado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_resp_tec_implantacao_obras", :force => true do |t|
    t.integer  "processo_id"
    t.string   "nome"
    t.string   "cad_tec_municipal"
    t.string   "art"
    t.string   "telefone"
    t.string   "fax"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cad_tec_federal"
    t.string   "classe_registro"
    t.string   "descricao_atividade_tecnica"
    t.string   "cpf"
  end

  create_table "processo_resp_tec_terraplanagems", :force => true do |t|
    t.integer  "processo_id"
    t.string   "nome"
    t.string   "cad_tec_municipal"
    t.string   "art"
    t.string   "telefone"
    t.string   "fax"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cad_tec_federal"
    t.string   "classe_registro"
    t.string   "descricao_atividade_tecnica"
    t.string   "cpf"
  end

  create_table "processo_resp_tecnico_gerals", :force => true do |t|
    t.integer  "processo_id"
    t.string   "nome"
    t.string   "cad_tec_municipal"
    t.string   "cad_tec_federal"
    t.string   "art"
    t.string   "telefone"
    t.string   "fax"
    t.string   "email"
    t.string   "classe_registro"
    t.string   "cpf"
    t.string   "descricao_atividade_tecnica"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_responsavel_manuseio_explosivos", :force => true do |t|
    t.integer  "processo_id"
    t.string   "nome"
    t.string   "telefone"
    t.string   "fax"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cad_tec_federal"
    t.string   "classe_registro"
    t.string   "descricao_atividade_tecnica"
    t.string   "cpf"
    t.string   "art"
    t.string   "cad_tec_municipal"
  end

  create_table "processo_responsavel_tecnicos", :force => true do |t|
    t.string   "nome"
    t.integer  "processo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cpf"
    t.string   "cad_tecnico_municipal"
    t.string   "cad_tecnico_federal"
    t.string   "conselho_profissional"
    t.string   "numero_registro"
    t.string   "numero_art"
    t.string   "desc_atividade_tecnica"
    t.string   "telefone"
    t.string   "fax"
    t.string   "email"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.string   "municipio"
    t.string   "cep"
    t.boolean  "empresa"
    t.string   "nome_empresa"
    t.string   "cnpj_empresa"
    t.string   "fone_empresa"
    t.string   "celular"
    t.string   "titulacao"
  end

  create_table "processo_retorno_agua_servidas", :force => true do |t|
    t.integer  "processo_id"
    t.boolean  "bombeado"
    t.boolean  "derivacao"
    t.integer  "frequencia"
    t.integer  "periodo"
    t.integer  "iniciado_no"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "micro_bacia_id"
    t.string   "nome_corpo_hidrico"
  end

  create_table "processo_roteiro_acessos", :force => true do |t|
    t.integer  "processo_id"
    t.string   "distancia_prefeitura"
    t.text     "descricao_percurso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_situacao_legals", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "solicitante_id"
    t.string   "registro"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "data_contrato"
  end

  create_table "processo_solo_organicos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "solo_organico_id"
    t.boolean  "remocao"
    t.decimal  "volume_remocao"
    t.integer  "forma_estocagem_id"
    t.decimal  "altura"
    t.decimal  "comprimento"
    t.decimal  "volume"
    t.boolean  "cobertura_prevista"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_supressao_vegetacao_resumidas", :force => true do |t|
    t.integer  "processo_id"
    t.boolean  "supressao_vegetacao"
    t.decimal  "vegetacao_estagio_inicial"
    t.decimal  "vegetacao_estagio_medio"
    t.decimal  "vegetacao_estagio_avancado"
    t.boolean  "intervencao_app"
    t.text     "descricao_intervencao_app"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_supressao_vegetacaos", :force => true do |t|
    t.integer  "processo_id"
    t.boolean  "supressao_vegetacao"
    t.decimal  "vegetacao_estagio_inicial"
    t.decimal  "vegetacao_estagio_medio"
    t.decimal  "vegetacao_estagio_avancado"
    t.integer  "exemplares_araucaria"
    t.integer  "exemplares_xaxim"
    t.integer  "exemplares_corticeira_serra"
    t.integer  "exemplares_figueira"
    t.boolean  "intervencao_app"
    t.text     "descricao_intervencao_app"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_tratamento_efluente_sanitarios", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "tratamento_efluente_sanitario_id"
    t.decimal  "volume",                           :precision => 12, :scale => 2
    t.integer  "local_lancamento_efluente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_uso_aguas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "uso_agua_id"
    t.decimal  "volume",      :precision => 12, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_uso_area_encerramento_atividades", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "uso_area_encerramento_atividade_id"
    t.integer  "uso_area_encerramento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_uso_energias", :force => true do |t|
    t.integer  "processo_id"
    t.decimal  "quantidade",  :precision => 20, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_uso_veterinarios", :force => true do |t|
    t.integer  "processo_id"
    t.string   "nome"
    t.string   "fornecedor"
    t.string   "receituario"
    t.integer  "local_armazenamento_id"
    t.string   "utilizado_em"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_utilizados", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_uva_do_japaos", :force => true do |t|
    t.integer  "processo_id"
    t.boolean  "presenca_especie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_vegetacao_selecionada_corte_podas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "vegetacao_selecionada_corte_poda_id"
    t.decimal  "volume_lenha"
    t.string   "nome_especifico"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_vegetacao_selecionada_cortes", :force => true do |t|
    t.integer  "processo_id"
    t.text     "nome_especie"
    t.decimal  "altura_vegetacao"
    t.decimal  "volume_lenha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processo_vegetacaos", :force => true do |t|
    t.integer  "processo_id"
    t.boolean  "nativa"
    t.boolean  "exotica"
    t.boolean  "primaria"
    t.boolean  "especie_raras"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vegetacao_estado_id"
  end

  create_table "processo_vizinhancas", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "direita_id"
    t.integer  "esquerda_id"
    t.integer  "acima_id"
    t.integer  "abaixo_id"
    t.integer  "frente_id"
    t.integer  "fundos_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processos", :force => true do |t|
    t.integer  "tp_solicitacao_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "movimentacao_id"
  end

  create_table "producao_animais_objetos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "exige_quantidade"
    t.integer  "unidade_medida_id"
  end

  create_table "producao_animais_objetos_tipo_producao_animals", :id => false, :force => true do |t|
    t.integer "producao_animais_objeto_id"
    t.integer "tipo_producao_animal_id"
  end

  create_table "produto_minerals", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profissao_tecnicos", :force => true do |t|
    t.integer "solicita_cadastro_tecnico_id"
    t.integer "profissao_id"
    t.string  "conselho_profissional"
    t.string  "registro_conselho"
    t.string  "especializacao"
  end

  create_table "profissoes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prorrogacao_condicionantes", :force => true do |t|
    t.integer  "condicionante_id"
    t.integer  "prazo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prorrogar_pendencias", :force => true do |t|
    t.integer  "item_pendencia_id"
    t.integer  "user_id"
    t.integer  "prazo"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prorrogar_processos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "user_id"
    t.integer  "processo_info_adicional_id"
    t.integer  "prazo"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "protocolo_fiscals", :force => true do |t|
    t.string   "numero"
    t.date     "data"
    t.integer  "processo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "protocolos", :force => true do |t|
    t.string   "numero"
    t.integer  "processo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "data"
    t.string   "cod_empreendimento"
  end

  create_table "quadrantes", :force => true do |t|
    t.integer  "numero"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regime_juridicos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationship_processos", :id => false, :force => true do |t|
    t.integer "processo_id",     :null => false
    t.integer "processo_rel_id", :null => false
    t.boolean "renovacao"
  end

  create_table "relatorio_gerado_users", :force => true do |t|
    t.integer  "user_id"
    t.string   "titulo"
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_updated_at"
    t.string   "uuid"
    t.integer  "pct_complete"
    t.string   "status"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "remessa_externa_fiscalizacaos", :force => true do |t|
    t.text     "descricao"
    t.boolean  "devolvido"
    t.integer  "dias_prazo"
    t.integer  "area_id"
    t.integer  "solicita_fiscalizacao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "remessa_externas", :force => true do |t|
    t.date     "prazo"
    t.text     "descricao"
    t.integer  "area_id"
    t.integer  "processo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "devolvido"
    t.integer  "dias_prazo"
  end

  create_table "residuos", :force => true do |t|
    t.string   "nome"
    t.integer  "classe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "codigo",            :limit => 30
    t.integer  "unidade_medida_id"
  end

  create_table "rj_enquadramentos", :force => true do |t|
    t.integer  "enquadramento_classe_id"
    t.integer  "tp_documento_id"
    t.decimal  "valor",                   :precision => 8, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ruas", :force => true do |t|
    t.string   "nome"
    t.string   "cep"
    t.string   "bairro"
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sistema_drenagem_escoamentos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sistema_manejo_prod_animais", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sistema_manejos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicita_anuencias", :force => true do |t|
    t.integer  "atividade_id"
    t.integer  "processo_id"
    t.integer  "empreendimento_id"
    t.integer  "tp_documento_id"
    t.integer  "empreendedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicita_autorizacaos", :force => true do |t|
    t.integer  "atividade_id"
    t.integer  "processo_id"
    t.integer  "empreendimento_id"
    t.integer  "tp_documento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "empreendedor_id"
  end

  create_table "solicita_cadastro_ambientals", :force => true do |t|
    t.integer  "atividade_id"
    t.integer  "processo_id"
    t.integer  "empreendimento_id"
    t.integer  "tp_documento_id"
    t.integer  "empreendedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "nr_cadastro"
    t.date     "dt_emissao"
    t.date     "dt_validade"
    t.string   "status"
    t.integer  "bairro_id"
    t.integer  "localidade_servico_id"
    t.integer  "familia_programa_id"
  end

  create_table "solicita_cadastro_tecnicos", :force => true do |t|
    t.string   "cnpj_cpf",            :limit => 50
    t.string   "nome_razao"
    t.string   "telefone",            :limit => 50
    t.string   "email"
    t.string   "tp_pessoa",           :limit => 2
    t.string   "rg_cgc",              :limit => 50
    t.string   "endereco"
    t.string   "numero",              :limit => 10
    t.string   "complemento"
    t.string   "bairro_loteamento"
    t.string   "cep",                 :limit => 15
    t.string   "municipio"
    t.string   "uf",                  :limit => 5
    t.string   "fax",                 :limit => 50
    t.string   "cad_tecnico_federal", :limit => 50
    t.integer  "processo_id",                       :null => false
    t.text     "produto_servico"
    t.string   "insc_municipal",      :limit => 50
    t.string   "nome_fantasia"
    t.string   "reg_junta_comercial", :limit => 50
    t.date     "data_fundacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "oculta"
    t.string   "conselho"
  end

  create_table "solicita_certidaos", :force => true do |t|
    t.integer  "atividade_id"
    t.integer  "processo_id"
    t.integer  "empreendimento_id"
    t.integer  "tp_documento_id"
    t.integer  "empreendedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicita_denuncia_fiscalizacaos", :force => true do |t|
    t.integer  "tp_denuncia_id"
    t.integer  "user_id"
    t.string   "placa_veiculo"
    t.string   "enumero"
    t.integer  "meio_comunicacao_id"
    t.datetime "datetime_emissao_denuncia"
    t.string   "denunciante_nome"
    t.string   "denunciante_end"
    t.string   "denunciante_bairro"
    t.string   "denunciante_telefone"
    t.string   "denunciante_cidade"
    t.string   "denunciado_nome"
    t.string   "denunciado_referencia"
    t.integer  "denunciado_endereco_id"
    t.string   "denunciado_numero"
    t.string   "denunciado_complemento"
    t.string   "denunciado_cep"
    t.text     "descricao_denuncia"
    t.integer  "fiscal_responsavel_id"
    t.string   "nr_protocolo"
    t.date     "data_protocolo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.text     "rel_vistoria"
    t.datetime "date_time_vistoria"
    t.integer  "movimentacao_solicita_denuncia_fiscalizacao_id"
    t.integer  "processo_id"
    t.string   "anexo_file_name"
    t.string   "anexo_content_type"
    t.integer  "anexo_file_size"
    t.datetime "anexo_update_at"
    t.integer  "denunciante_numero"
  end

  create_table "solicita_fiscalizacaos", :force => true do |t|
    t.integer  "empreendedor_cad_unico_id"
    t.string   "nr_protocolo"
    t.date     "data_protocolo"
    t.string   "local"
    t.string   "desc_atividade"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "endereco_id"
    t.string   "endereco_numero"
    t.string   "endereco_complemento"
    t.string   "endereco_cep"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "datum"
    t.string   "sistema_coordenada"
    t.string   "fuso"
    t.string   "hemisferio"
    t.string   "status"
    t.integer  "movimentacao_solicita_fiscalizacao_id"
    t.integer  "processo_id"
  end

  create_table "solicita_florestal_licenciamentos", :force => true do |t|
    t.integer  "atividade_id"
    t.integer  "tp_documento_id"
    t.integer  "processo_id"
    t.integer  "empreendimento_id"
    t.integer  "solicita_cadastro_tecnico_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "empreendedor_id"
    t.string   "nr_renovacao"
  end

  create_table "solicita_isencao_licenciamentos", :force => true do |t|
    t.integer  "atividade_id"
    t.integer  "processo_id"
    t.integer  "empreendimento_id"
    t.integer  "tp_documento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "empreendedor_id"
  end

  create_table "solicita_juntada_documentos", :force => true do |t|
    t.integer  "atividade_id"
    t.integer  "processo_id"
    t.integer  "empreendimento_id"
    t.integer  "tp_documento_id"
    t.integer  "empreendedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicita_planilha_efluentes", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "processo_relacionado_id"
    t.boolean  "existe_processo"
    t.integer  "empreendimento_id"
    t.string   "numero_processo"
    t.integer  "numero_licenca_operacao"
    t.integer  "ano_emissao_licenca_operacao"
    t.date     "periodo_de"
    t.date     "periodo_ate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "empreendedor_id"
  end

  create_table "solicita_planilha_residuos", :force => true do |t|
    t.integer  "processo_id"
    t.integer  "processo_relacionado_id"
    t.boolean  "existe_processo"
    t.integer  "empreendimento_id"
    t.string   "numero_processo"
    t.integer  "numero_licenca_operacao",      :limit => 8
    t.integer  "ano_emissao_licenca_operacao"
    t.date     "periodo_de"
    t.date     "periodo_ate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "empreendedor_id"
  end

  create_table "solicita_servico_info_adicionals", :force => true do |t|
    t.integer  "processo_id"
    t.date     "dt_validade"
    t.decimal  "vlr_servico",                   :precision => 15, :scale => 2
    t.integer  "bairro_id"
    t.integer  "localidade_servico_id"
    t.integer  "prestador_servico_programa_id"
    t.decimal  "quantidade_autorizada",         :precision => 15, :scale => 2
    t.string   "tipo"
    t.text     "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "observacao_conclusao_servico"
    t.date     "data_execucao"
    t.float    "quantidade_servico_realizada"
    t.float    "vlr_a_devolver"
    t.boolean  "tercerizado"
    t.integer  "familia_programa_id"
  end

  create_table "solicita_servicos", :force => true do |t|
    t.integer  "atividade_servico_id"
    t.integer  "endereco_id"
    t.string   "endereco_numero"
    t.string   "endereco_complemento"
    t.string   "nome_requerente"
    t.string   "cpf_requerente"
    t.string   "telefone_requerente"
    t.string   "email_requerente"
    t.integer  "tipo_area_id"
    t.integer  "meio_solicitacao_id"
    t.text     "motivo"
    t.text     "observacoes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "processo_id"
    t.boolean  "zona_rural"
    t.integer  "empreendedor_id"
    t.string   "endereco_cep"
    t.string   "endereco_pontoref"
    t.boolean  "executado_prefeitura",                                        :default => true
    t.text     "endereco_texto"
    t.text     "observacao_conclusao_servico"
    t.integer  "localidade_servico_id"
    t.integer  "bairro_id"
    t.date     "data_conclusao"
    t.decimal  "quantidade_servico",           :precision => 15, :scale => 2
  end

  create_table "sub_grupo_atividades", :force => true do |t|
    t.string   "nome"
    t.string   "codram"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tp_solicitacao_id"
    t.integer  "sub_grupo_atividade_id"
    t.integer  "grupo_atividade_id"
  end

  create_table "sub_menus", :force => true do |t|
    t.string   "nome"
    t.boolean  "restringe"
    t.string   "link"
    t.integer  "menu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taxa_cadastro_pmes", :force => true do |t|
    t.integer "tp_documento_id"
    t.integer "cadastro_pme_id"
    t.decimal "valor",           :precision => 8, :scale => 2
  end

  create_table "template_documento_ambientals", :force => true do |t|
    t.text     "template"
    t.string   "tp_documento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "template_documento_fiscalizacaos", :force => true do |t|
    t.text     "template"
    t.string   "tp_documento"
    t.boolean  "atuado_padrao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "template_impressaos", :force => true do |t|
    t.text     "template"
    t.integer  "tp_solicitacao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome"
    t.string   "status"
    t.integer  "pai_id"
    t.string   "nome_referencia"
    t.integer  "grupo_atividade_id"
    t.integer  "copia_id"
    t.integer  "tp_grupo_id"
    t.boolean  "visualizar_externamente"
    t.boolean  "formato"
    t.boolean  "solicita_servico"
    t.boolean  "doc_final"
  end

  create_table "tenants", :force => true do |t|
    t.string   "subdomain"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "termo_compensacao_vegetals", :force => true do |t|
    t.string   "numero_protocolo"
    t.date     "data_protocolo"
    t.string   "empreendedor"
    t.string   "cpf_cnpj"
    t.integer  "prazo"
    t.date     "data_assinatura"
    t.integer  "processo_id"
    t.string   "arquivo_file_name"
    t.string   "arquivo_file_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiny_prints", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_file_size"
    t.string   "image_content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiny_videos", :force => true do |t|
    t.string   "original_file_name"
    t.string   "original_file_size"
    t.string   "original_content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_auto_infracaos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_combustivels", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unidade_medida_id"
  end

  create_table "tipo_emissaos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_manejo_solos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_ocupacaos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_parcelamentos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_prazos", :force => true do |t|
    t.integer  "dias"
    t.string   "descricao"
    t.decimal  "multa"
    t.text     "artigo"
    t.boolean  "editavel"
    t.boolean  "multa_diaria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_producao_animals", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_recurso_hidricos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_relevo_predominantes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_solo_predominantes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tp_denuncias", :force => true do |t|
    t.string   "nome"
    t.integer  "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tp_documentos", :force => true do |t|
    t.string   "nome"
    t.string   "sigla",                   :limit => 5
    t.boolean  "ativo",                                :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "licenciamento_ambiental"
    t.boolean  "exige_tca"
    t.integer  "dt_validade_padrao"
    t.boolean  "renovacao"
  end

  create_table "tp_documentos_tp_solicitacoes", :id => false, :force => true do |t|
    t.integer "tp_documento_id"
    t.integer "tp_solicitacao_id"
  end

  create_table "tp_grupos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "licenciamento"
    t.boolean  "mostra_tecnico"
    t.boolean  "ativo"
  end

  create_table "tp_solicitacoes", :force => true do |t|
    t.string   "nome"
    t.integer  "tp_grupo_id"
    t.boolean  "ativo",                 :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagem_file_name"
    t.string   "imagem_content_type"
    t.integer  "imagem_file_size"
    t.datetime "imagem_updated_at"
    t.string   "path"
    t.string   "path_formulario"
    t.integer  "grupo_atividade_id"
    t.boolean  "compensacao_florestal"
    t.integer  "dt_validade_padrao"
    t.boolean  "solicitacao_agricola"
    t.integer  "identify"
  end

  create_table "tratamento_efluente_sanitarios", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidade_medidas", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "somente_externo"
    t.integer  "mascara"
    t.decimal  "valor"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "",    :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "",    :null => false
    t.string   "password_salt",                       :default => "",    :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome"
    t.string   "role"
    t.boolean  "admin",                               :default => false
    t.boolean  "account_active",                      :default => true
    t.string   "cpf_cnpj"
    t.string   "matricula"
    t.string   "cargo"
    t.boolean  "admin_sislam"
    t.boolean  "user_arquivador"
    t.boolean  "fiscalizacao"
    t.boolean  "agricultura"
    t.boolean  "ambiental"
    t.boolean  "sistema"
    t.boolean  "noticia"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "uso_aguas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uso_area_encerramentos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "validacao_formularios", :force => true do |t|
    t.integer  "partial_passo_formulario_id"
    t.string   "tipo"
    t.string   "nome_campo_valor"
    t.string   "modelo_campo_valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "valor_es_enquadramentos", :force => true do |t|
    t.integer  "tp_documento_id"
    t.integer  "quadrante_id"
    t.decimal  "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "variavel_licenca_impressaos", :force => true do |t|
    t.string   "nome"
    t.string   "nome_modelo"
    t.text     "texto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vegetacao_estados", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vistoria_reposicaos", :force => true do |t|
    t.text     "descricao"
    t.date     "data"
    t.integer  "vistoria"
    t.integer  "compensacao_florestal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visualizacao_movimentacao_processo_servicos", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vizinhancas", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "atividade_agricolas", "grupo_atividade_agricolas", :name => "atividade_agrivolas_grupo_atividade_agricolas_fkey"

  add_foreign_key "atividade_ums", "unidade_medidas", :name => "atividade_ums_unidade_medidas_fkey"

  add_foreign_key "atividades", "atividade_ums", :name => "atividades_atividade_ums_fkey"
  add_foreign_key "atividades", "grupo_atividades", :name => "atividades_grupo_atividades_fkey"
  add_foreign_key "atividades", "tp_solicitacoes", :name => "atividades_tp_solicitacoes_fkey", :column => "tp_solicitacao_id"
  add_foreign_key "atividades", "unidade_medidas", :name => "atividades_unidade_medidas_fkey"

  add_foreign_key "atividades_unidade_medidas", "atividades", :name => "atividades_unidade_medidas_atividades_fkey"
  add_foreign_key "atividades_unidade_medidas", "unidade_medidas", :name => "atividades_unidade_medidas_unidade_medidas_fkey"

  add_foreign_key "compensacao_florestals", "processos", :name => "compensacao_florestal_processos_fkey"

  add_foreign_key "condicionantes", "processos", :name => "condicionantes_processos_fkey"
  add_foreign_key "condicionantes", "users", :name => "condicionantes_users_fkey"

  add_foreign_key "contratos", "solicita_cadastro_tecnicos", :name => "contratos_solicita_cadastro_tecnicos_fkey"

  add_foreign_key "documento_finalizados", "empreendedors", :name => "documento_finalizados_empreendedors_fkey"
  add_foreign_key "documento_finalizados", "empreendimentos", :name => "documento_finalizados_empreendimentos_fkey"
  add_foreign_key "documento_finalizados", "processos", :name => "documento_finalizados_processos_fkey"
  add_foreign_key "documento_finalizados", "template_impressaos", :name => "documento_finalizados_template_impressaos_fkey"

  add_foreign_key "documentos", "atividades", :name => "documentos_atividades_fkey"
  add_foreign_key "documentos", "tp_documentos", :name => "documentos_tp_documentos_fkey"
  add_foreign_key "documentos", "tp_solicitacoes", :name => "documentos_tp_solicitacoes_fkey", :column => "tp_solicitacao_id"

  add_foreign_key "empreendimentos", "empreendedors", :name => "empreendimentos_empreendedors_fkey"

  add_foreign_key "enquadramentos", "portes", :name => "enquadramentos_portes_fkey"
  add_foreign_key "enquadramentos", "potencial_poluidores", :name => "enquadramentos_potencial_poluidores_fkey", :column => "potencial_poluidor_id"
  add_foreign_key "enquadramentos", "tp_documentos", :name => "enquadramentos_tp_documentos_fkey"

  add_foreign_key "item_pendencias", "pendencias", :name => "item_pendencias_pendencias_fkey", :dependent => :delete
  add_foreign_key "item_pendencias", "users", :name => "item_pendencias_users_fkey"

  add_foreign_key "legal_representantes", "empreendedors", :name => "legal_representantes_empreendedors_fkey"

  add_foreign_key "licenca_digitals", "atividades", :name => "licenca_digitals_atividades_fkey"
  add_foreign_key "licenca_digitals", "potencial_poluidores", :name => "licenca_digitals_potencial_poluidores_fkey", :column => "potencial_poluidor_id"
  add_foreign_key "licenca_digitals", "tp_solicitacoes", :name => "licenca_digitals_tp_solicitacoes_fkey", :column => "tp_solicitacao_id"

  add_foreign_key "limite_portes", "atividades", :name => "limite_portes_atividades_fkey"
  add_foreign_key "limite_portes", "portes", :name => "limite_portes_portes_fkey"
  add_foreign_key "limite_portes", "potencial_poluidores", :name => "limite_portes_potencial_poluidores_fkey", :column => "potencial_poluidor_id"

  add_foreign_key "materia_primas", "unidade_medidas", :name => "materia_primas_unidade_medidas_fkey"

  add_foreign_key "micro_bacias", "bacias", :name => "micro_bacias_bacias_fkey"

  add_foreign_key "movimentacoes", "processos", :name => "movimentacoes_processos_fkey"

  add_foreign_key "parc_solo_desmembramento_areas", "unidade_medidas", :name => "parc_solo_desmembramento_areas_unidade_medidas_fkey"

  add_foreign_key "parecers", "processos", :name => "parecers_processos_fkey"
  add_foreign_key "parecers", "users", :name => "parecers_users_fkey"

  add_foreign_key "partial_passo_formularios", "partial_formularios", :name => "partial_passo_formularios_partial_formularios_fkey"
  add_foreign_key "partial_passo_formularios", "passo_formularios", :name => "partial_passo_formularios_passo_formularios_fkey"

  add_foreign_key "passo_excluis", "atividades", :name => "passo_excluis_atividades_fkey"
  add_foreign_key "passo_excluis", "passo_formularios", :name => "passo_excluis_passo_formularios_fkey"

  add_foreign_key "passo_formularios", "atividades", :name => "passo_formularios_atividades_fkey"
  add_foreign_key "passo_formularios", "grupo_atividades", :name => "passo_formularios_grupo_atividades_fkey"

  add_foreign_key "pendencias", "processos", :name => "pendencias_processos_fkey"

  add_foreign_key "processo_abastecimento_aguas", "fonte_abastecimentos", :name => "processo_abastecimento_aguas_fonte_abastecimentos_fkey"
  add_foreign_key "processo_abastecimento_aguas", "processos", :name => "processo_abastecimento_aguas_processos_fkey", :dependent => :delete

  add_foreign_key "processo_analise_propriedade_campos", "analise_propriedade_campos", :name => "processo_analise_propriedade_campos_analise_propriedade_campos_"
  add_foreign_key "processo_analise_propriedade_campos", "processos", :name => "processo_analise_propriedade_campos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_area_licenciars", "processos", :name => "processo_area_licenciars_processos_fkey", :dependent => :delete

  add_foreign_key "processo_area_restricao_usos", "area_restricao_usos", :name => "processo_area_restricao_usos_area_restricao_usos_fkey"
  add_foreign_key "processo_area_restricao_usos", "processos", :name => "processo_area_restricao_usos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_atividade_agricolas", "atividade_agricolas", :name => "processo_atividade_agricolas_atividade_agricolas_fkey"
  add_foreign_key "processo_atividade_agricolas", "processos", :name => "processo_atividade_agricolas_processos_fkey", :dependent => :delete

  add_foreign_key "processo_atividade_parcelamentos", "processos", :name => "processo_atividade_parcelamentos_processos_fkey", :dependent => :delete
  add_foreign_key "processo_atividade_parcelamentos", "tipo_ocupacaos", :name => "processo_atividade_parcelamentos_tipo_ocupacaos_fkey"
  add_foreign_key "processo_atividade_parcelamentos", "tipo_parcelamentos", :name => "processo_atividade_parcelamentos_tipo_parcelamentos_fkey"

  add_foreign_key "processo_captacao_aguas", "processos", :name => "processo_captacao_aguas_processos_fkey", :dependent => :delete

  add_foreign_key "processo_combustivel_utilizados", "local_armazenamentos", :name => "processo_combustivel_utilizados_local_armazenamentos_fkey"
  add_foreign_key "processo_combustivel_utilizados", "processos", :name => "processo_combustivel_utilizados_processos_fkey", :dependent => :delete
  add_foreign_key "processo_combustivel_utilizados", "tipo_combustivels", :name => "processo_combustivel_utilizados_tipo_combustivels_fkey"

  add_foreign_key "processo_compensacao_florestals", "processos", :name => "processo_compensacao_florestals_processos_fkey", :dependent => :delete

  add_foreign_key "processo_coordenada_geograficas", "processos", :name => "processo_coordenada_geograficas_processos_fkey", :dependent => :delete

  add_foreign_key "processo_criacao_animals", "processos", :name => "processo_criacao_animals_processos_fkey", :dependent => :delete
  add_foreign_key "processo_criacao_animals", "producao_animais_objetos", :name => "processo_criacao_animals_producao_animais_objetos_fkey"
  add_foreign_key "processo_criacao_animals", "sistema_manejos", :name => "processo_criacao_animals_sistema_manejos_fkey"
  add_foreign_key "processo_criacao_animals", "tipo_producao_animals", :name => "processo_criacao_animals_tipo_producao_animals_fkey"

  add_foreign_key "processo_dado_dendometricos", "processos", :name => "processo_dado_dendometricos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_dado_trasportadors", "processos", :name => "processo_dado_trasportadors_processos_fkey", :dependent => :delete

  add_foreign_key "processo_dados_consumidor_materia_primas", "processos", :name => "processo_dados_consumidor_materia_primas_processos_fkey", :dependent => :delete

  add_foreign_key "processo_dados_proprietario_areas", "processos", :name => "processo_dados_proprietario_areas_processos_fkey", :dependent => :delete

  add_foreign_key "processo_defensivo_agricolas", "defensivo_agricolas", :name => "processo_defensivo_agricolas_defensivo_agricolas_fkey"
  add_foreign_key "processo_defensivo_agricolas", "local_armazenamentos", :name => "processo_defensivo_agricolas_local_armazenamentos_fkey"
  add_foreign_key "processo_defensivo_agricolas", "processos", :name => "processo_defensivo_agricolas_processos_fkey", :dependent => :delete

  add_foreign_key "processo_definicao_intervencas", "motivo_intervencaos", :name => "processo_definicao_intervencas_motivo_intervencaos_fkey"
  add_foreign_key "processo_definicao_intervencas", "processos", :name => "processo_definicao_intervencas_processos_fkey", :dependent => :delete

  add_foreign_key "processo_descricao_finalidades", "processos", :name => "processo_descricao_finalidades_processos_fkey", :dependent => :delete

  add_foreign_key "processo_descricao_processo_produtivos", "processos", :name => "processo_descricao_processo_produtivos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_descricao_recuperacaos", "processos", :name => "processo_descricao_recuperacaos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_descricao_simples_atividades", "processos", :name => "processo_descricao_simples_atividades_processos_fkey", :dependent => :delete

  add_foreign_key "processo_descricao_tratamento_efluentes", "processos", :name => "processo_descricao_tratamento_efluentes_processos_fkey", :dependent => :delete

  add_foreign_key "processo_desmembramento_areas", "desmembramento_areas", :name => "processo_desmembramento_areas_desmembramento_areas_fkey"
  add_foreign_key "processo_desmembramento_areas", "processos", :name => "processo_desmembramento_areas_processos_fkey", :dependent => :delete

  add_foreign_key "processo_destinatario_residuos", "processos", :name => "processo_destinatario_residuos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_destino_agua_servidas", "micro_bacias", :name => "processo_destino_agua_servidas_micro_bacias_fkey"
  add_foreign_key "processo_destino_agua_servidas", "processos", :name => "processo_destino_agua_servidas_processos_fkey", :dependent => :delete

  add_foreign_key "processo_destino_material_excedentes", "processos", :name => "processo_destino_material_excedentes_processos_fkey", :dependent => :delete

  add_foreign_key "processo_emissao_atmosfericas", "controle_equipamentos", :name => "processo_emissao_atmosfericas_controle_equipamentos_fkey"
  add_foreign_key "processo_emissao_atmosfericas", "gerador_equipamentos", :name => "processo_emissao_atmosfericas_gerador_equipamentos_fkey"
  add_foreign_key "processo_emissao_atmosfericas", "processos", :name => "processo_emissao_atmosfericas_processos_fkey", :dependent => :delete
  add_foreign_key "processo_emissao_atmosfericas", "tipo_combustivels", :name => "processo_emissao_atmosfericas_tipo_combustivels_fkey"
  add_foreign_key "processo_emissao_atmosfericas", "unidade_medidas", :name => "processo_emissao_atmosfericas_unidade_medidas_fkey"

  add_foreign_key "processo_emissao_atmosfericas_tipo_emissaos", "processo_emissao_atmosfericas", :name => "processo_emissao_atmosfericas_tipo_emissaos_processo_emissao_at"
  add_foreign_key "processo_emissao_atmosfericas_tipo_emissaos", "tipo_emissaos", :name => "processo_emissao_atmosfericas_tipo_emissaos_tipo_emissaos_fkey"

  add_foreign_key "processo_equipamento_producaos", "processos", :name => "processo_equipamento_producaos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_executor_cortes", "processos", :name => "processo_executor_cortes_processos_fkey", :dependent => :delete

  add_foreign_key "processo_explosivo_utilizados", "processos", :name => "processo_explosivo_utilizados_processos_fkey", :dependent => :delete
  add_foreign_key "processo_explosivo_utilizados", "unidade_medidas", :name => "processo_explosivo_utilizados_unidade_medidas_fkey"

  add_foreign_key "processo_finalidade_usos", "finalidade_usos", :name => "processo_finalidade_usos_finalidade_usos_fkey"
  add_foreign_key "processo_finalidade_usos", "processos", :name => "processo_finalidade_usos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_industrial_efluentes", "local_lancamento_efluentes", :name => "processo_industrial_efluentes_local_lancamento_efluentes_fkey"
  add_foreign_key "processo_industrial_efluentes", "processos", :name => "processo_industrial_efluentes_processos_fkey", :dependent => :delete

  add_foreign_key "processo_info_empreendimentos", "processos", :name => "processo_info_empreendimentos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_informacao_areas", "processos", :name => "processo_informacao_areas_processos_fkey", :dependent => :delete
  add_foreign_key "processo_informacao_areas", "tipo_relevo_predominantes", :name => "processo_informacao_areas_tipo_relevo_predominantes_fkey"
  add_foreign_key "processo_informacao_areas", "tipo_solo_predominantes", :name => "processo_informacao_areas_tipo_solo_predominantes_fkey"

  add_foreign_key "processo_intervenca_apps", "processos", :name => "processo_intervenca_apps_processos_fkey", :dependent => :delete

  add_foreign_key "processo_licencas", "atividades", :name => "processo_licencas_atividades_fkey"
  add_foreign_key "processo_licencas", "empreendimentos", :name => "processo_licencas_empreendimentos_fkey"
  add_foreign_key "processo_licencas", "processos", :name => "processo_licencas_processos_fkey"
  add_foreign_key "processo_licencas", "tp_documentos", :name => "processo_licencas_tp_documentos_fkey"

  add_foreign_key "processo_local_transplantes", "processos", :name => "processo_local_transplantes_processos_fkey", :dependent => :delete

  add_foreign_key "processo_materia_primas", "processos", :name => "processo_materia_primas_processos_fkey", :dependent => :delete
  add_foreign_key "processo_materia_primas", "unidade_medidas", :name => "processo_materia_primas_unidade_medidas_fkey"

  add_foreign_key "processo_origem_material_emprestimos", "processos", :name => "processo_origem_material_emprestimos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_parc_solo_desmembramento_areas", "parc_solo_desmembramento_areas", :name => "processo_parc_solo_desmembramento_areas_parc_solo_desmembrament"
  add_foreign_key "processo_parc_solo_desmembramento_areas", "processos", :name => "processo_parc_solo_desmembramento_areas_processos_fkey", :dependent => :delete

  add_foreign_key "processo_planilha_residuos", "acondicionamentos", :name => "processo_planilha_residuos_acondicionamentos_fkey"
  add_foreign_key "processo_planilha_residuos", "destinos", :name => "processo_planilha_residuos_destinos_fkey"
  add_foreign_key "processo_planilha_residuos", "processos", :name => "processo_planilha_residuos_processos_fkey", :dependent => :delete
  add_foreign_key "processo_planilha_residuos", "residuos", :name => "processo_planilha_residuos_residuos_fkey"
  add_foreign_key "processo_planilha_residuos", "unidade_medidas", :name => "processo_planilha_residuos_unidade_medidas_fkey"

  add_foreign_key "processo_pontos_captacaos", "fonte_abastecimentos", :name => "processo_pontos_captacaos_fonte_abastecimentos_fkey"
  add_foreign_key "processo_pontos_captacaos", "micro_bacias", :name => "processo_pontos_captacaos_micro_bacias_fkey"
  add_foreign_key "processo_pontos_captacaos", "processos", :name => "processo_pontos_captacaos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_produto_utilizados", "processos", :name => "processo_produto_utilizados_processos_fkey", :dependent => :delete
  add_foreign_key "processo_produto_utilizados", "unidade_medidas", :name => "processo_produto_utilizados_unidade_medidas_fkey"

  add_foreign_key "processo_proposta_recuperacaos", "local_recuperacaos", :name => "processo_proposta_recuperacaos_local_recuperacaos_fkey"
  add_foreign_key "processo_proposta_recuperacaos", "processos", :name => "processo_proposta_recuperacaos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_recurso_financeiros", "processos", :name => "processo_recurso_financeiros_processos_fkey", :dependent => :delete

  add_foreign_key "processo_recurso_hidricos", "processos", :name => "processo_recurso_hidricos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_resp_tec_implantacao_obras", "processos", :name => "processo_resp_tec_implantacao_obras_processos_fkey", :dependent => :delete

  add_foreign_key "processo_resp_tec_terraplanagems", "processos", :name => "processo_resp_tec_terraplanagems_processos_fkey", :dependent => :delete

  add_foreign_key "processo_responsavel_manuseio_explosivos", "processos", :name => "processo_responsavel_manuseio_explosivos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_responsavel_tecnicos", "processos", :name => "processo_responsavel_tecnicos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_retorno_agua_servidas", "micro_bacias", :name => "processo_retorno_agua_servidas_micro_bacias_fkey"
  add_foreign_key "processo_retorno_agua_servidas", "processos", :name => "processo_retorno_agua_servidas_processos_fkey", :dependent => :delete

  add_foreign_key "processo_roteiro_acessos", "processos", :name => "processo_roteiro_acessos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_situacao_legals", "processos", :name => "processo_situacao_legals_processos_fkey", :dependent => :delete

  add_foreign_key "processo_supressao_vegetacaos", "processos", :name => "processo_supressao_vegetacaos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_tratamento_efluente_sanitarios", "local_lancamento_efluentes", :name => "processo_tratamento_efluente_sanitarios_local_lancamento_efluen"
  add_foreign_key "processo_tratamento_efluente_sanitarios", "processos", :name => "processo_tratamento_efluente_sanitarios_processos_fkey", :dependent => :delete
  add_foreign_key "processo_tratamento_efluente_sanitarios", "tratamento_efluente_sanitarios", :name => "processo_tratamento_efluente_sanitarios_tratamento_efluente_san"

  add_foreign_key "processo_uso_aguas", "processos", :name => "processo_uso_aguas_processos_fkey", :dependent => :delete
  add_foreign_key "processo_uso_aguas", "uso_aguas", :name => "processo_uso_aguas_uso_aguas_fkey"

  add_foreign_key "processo_uso_energias", "processos", :name => "processo_uso_energias_processos_fkey", :dependent => :delete

  add_foreign_key "processo_uso_veterinarios", "local_armazenamentos", :name => "processo_uso_veterinarios_local_armazenamentos_fkey"
  add_foreign_key "processo_uso_veterinarios", "processos", :name => "processo_uso_veterinarios_processos_fkey", :dependent => :delete

  add_foreign_key "processo_uva_do_japaos", "processos", :name => "processo_uva_do_japaos_processos_fkey", :dependent => :delete

  add_foreign_key "processo_vegetacao_selecionada_corte_podas", "processos", :name => "processo_vegetacao_selecionada_corte_podas_processos_fkey", :dependent => :delete

  add_foreign_key "processo_vegetacao_selecionada_cortes", "processos", :name => "processo_vegetacao_selecionada_cortes_processos_fkey", :dependent => :delete

  add_foreign_key "processo_vegetacaos", "processos", :name => "processo_vegetacaos_processos_fkey", :dependent => :delete
  add_foreign_key "processo_vegetacaos", "vegetacao_estados", :name => "processo_vegetacaos_vegetacao_estados_fkey"

  add_foreign_key "processo_vizinhancas", "processos", :name => "processo_vizinhancas_processos_fkey", :dependent => :delete

  add_foreign_key "processos", "tp_solicitacoes", :name => "processos_tp_solicitacoes_fkey", :column => "tp_solicitacao_id"
  add_foreign_key "processos", "users", :name => "processos_users_fkey"

  add_foreign_key "profissao_tecnicos", "profissoes", :name => "profissao_tecnicos_profissoes_fkey", :column => "profissao_id"
  add_foreign_key "profissao_tecnicos", "solicita_cadastro_tecnicos", :name => "profissao_tecnicos_solicita_cadastro_tecnicos_fkey"

  add_foreign_key "protocolos", "processos", :name => "protocolos_processos_fkey"

  add_foreign_key "remessa_externas", "areas", :name => "remessa_externas_areas_fkey"
  add_foreign_key "remessa_externas", "processos", :name => "remessa_externas_processos_fkey", :dependent => :delete

  add_foreign_key "solicita_florestal_licenciamentos", "atividades", :name => "solicita_florestal_licenciamentos_atividades_fkey"
  add_foreign_key "solicita_florestal_licenciamentos", "empreendimentos", :name => "solicita_florestal_licenciamentos_empreendimentos_fkey"
  add_foreign_key "solicita_florestal_licenciamentos", "processos", :name => "solicita_florestal_licenciamentos_processos_fkey"
  add_foreign_key "solicita_florestal_licenciamentos", "tp_documentos", :name => "solicita_florestal_licenciamentos_tp_documentos_fkey"

  add_foreign_key "solicita_isencao_licenciamentos", "atividades", :name => "solicita_isencao_licenciamentos_atividades_fkey"
  add_foreign_key "solicita_isencao_licenciamentos", "empreendimentos", :name => "solicita_isencao_licenciamentos_empreendimentos_fkey"
  add_foreign_key "solicita_isencao_licenciamentos", "processos", :name => "solicita_isencao_licenciamentos_processos_fkey"
  add_foreign_key "solicita_isencao_licenciamentos", "tp_documentos", :name => "solicita_isencao_licenciamentos_tp_documentos_fkey"

  add_foreign_key "template_impressaos", "grupo_atividades", :name => "template_impressaos_grupo_atividades_fkey"
  add_foreign_key "template_impressaos", "tp_grupos", :name => "template_impressaos_tp_grupos_fkey"
  add_foreign_key "template_impressaos", "tp_solicitacoes", :name => "template_impressaos_tp_solicitacoes_fkey", :column => "tp_solicitacao_id"

  add_foreign_key "tipo_combustivels", "unidade_medidas", :name => "tipo_combustivels_unidade_medidas_fkey"

  add_foreign_key "tp_solicitacoes", "tp_grupos", :name => "tp_solicitacoes_tp_grupos_fkey"

  add_foreign_key "validacao_formularios", "partial_passo_formularios", :name => "validacao_formularios_partial_passo_formularios_fkey"

end
