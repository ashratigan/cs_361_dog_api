json.extract! dog, :id, :name, :country, :url, :image, :pdf, :created_at, :updated_at
json.url dog_url(dog, format: :json)
