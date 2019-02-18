require 'mongo'

# NOSQL (Não relacional ou desnormalizado)
# Tabelas => Coleções
# Registros => Documentos

class MarkDb
  def apaga_tarefa(nome)
    tarefas_collection = client[:tasks]
    tarefas_collection.delete_one('title' => nome)
  end

  def client
    url = 'ds225078.mlab.com'
    porta = '25078'
    banco = 'heroku_4m3km28x'
    usuario = 'heroku_4m3km28x'
    senha = 'rmrm93njviet46a4caul3svj4p'

    # str_conn = 'mongodb://usuario@senha@servidor:porta/banco'
    Mongo::Logger.logger = Logger.new('log/mongo.log')

    Mongo::Client.new("mongodb://#{usuario}:#{senha}@#{url}:#{porta}/#{banco}")
  end
end
