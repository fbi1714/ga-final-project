json.array!(@items) do |item|
  json.extract! item, :id, :serie, :height, :number_drawers, :double_door, :single_door
  json.url item_url(item, format: :json)
end
