json.extract! etablissement, :id, :name, :address, :zip, :city, :type, :email, :phone, :created_at, :updated_at
json.url etablissement_url(etablissement, format: :json)