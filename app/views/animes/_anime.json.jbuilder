json.extract! anime, :id, :title_english, :title_native, :description, :score, :aired_start, :aired_end, :premiered, :episodes, :created_at, :updated_at
json.url anime_url(anime, format: :json)
