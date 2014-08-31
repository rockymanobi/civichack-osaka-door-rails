json.array!(@test_logs) do |test_log|
  json.extract! test_log, :id, :test_stall_id, :status
  json.url test_log_url(test_log, format: :json)
end
