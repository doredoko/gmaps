json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :family_name, :postalcode, :city, :town, :banchi, :tel_sigai, :telsinai, :keitai, :bikou, :latitude, :longitude, :gmaps, :douki, :genki, :kouenkai, :kihukin, :syoukai_id, :level
  json.url person_url(person, format: :json)
end
