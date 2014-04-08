json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :number, :vendor_name
  json.url invoice_url(invoice, format: :json)
end
