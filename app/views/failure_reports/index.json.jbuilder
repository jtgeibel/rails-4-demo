json.array!(@failure_reports) do |failure_report|
  json.extract! failure_report, :author_id, :unit_id, :subject, :description, :rma, :failcode
  json.url failure_report_url(failure_report, format: :json)
end