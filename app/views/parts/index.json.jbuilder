json.array!(@parts) do |part|
  json.extract! part, :id, :cell_content
  json.url part_url(part, format: :json)
end
