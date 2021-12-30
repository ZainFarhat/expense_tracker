json.extract! report, :id, :ReportDate, :ReportStatement, :created_at, :updated_at
json.url report_url(report, format: :json)
