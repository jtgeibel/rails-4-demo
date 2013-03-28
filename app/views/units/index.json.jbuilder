json.array!(@units) do |unit|
  json.extract! unit, :part, :serial, :contract_id
  json.url unit_url(unit, format: :json)
end