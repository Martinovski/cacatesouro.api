json.extract! pessoa, :id, :nome, :tipo, :matricula, :escola, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
