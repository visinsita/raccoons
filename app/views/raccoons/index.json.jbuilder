json.array!(@raccoons) do |raccoon|
  json.extract! raccoon, :id, :name, :claw_ferocity, :disposition
  json.url raccoon_url(raccoon, format: :json)
end
