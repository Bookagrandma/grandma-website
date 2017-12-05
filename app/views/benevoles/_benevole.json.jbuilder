
json.extract! benevole, :id, :firstname, :lastname, :birthday, :address, :zip, :city, :gender, :email, :phone, :created_at, :updated_at
json.url benevole_url(benevole, format: :json)