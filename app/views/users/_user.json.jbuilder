json.extract! user, :id, :name, :phone, :email, :cpf, :birthdate, :created_at, :updated_at
json.url user_url(user, format: :json)
