json.array!(@code_schools) do |code_school|
  json.extract! code_school, :id, :name
  json.url code_school_url(code_school, format: :json)
end
