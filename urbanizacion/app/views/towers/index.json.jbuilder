json.array!(@towers) do |tower|
  json.extract! tower, :id, :name, :porte
  json.url tower_url(tower, format: :json)
end
