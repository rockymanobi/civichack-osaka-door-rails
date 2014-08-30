json.array!(@test_stalls) do |test_stall|
  json.extract! test_stall, :id, :name, :uuid, :status
  json.url test_stall_url(test_stall, format: :json)
end
