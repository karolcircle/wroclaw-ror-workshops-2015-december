json.array!(@payments) do |payment|
  json.extract! payment, :id, :paid, :date_payment, :student_id
  json.url payment_url(payment, format: :json)
end
