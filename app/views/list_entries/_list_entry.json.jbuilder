json.extract! list_entry, :id, :speaker_id, :list_id, :created_at, :updated_at
json.url list_entry_url(list_entry, format: :json)