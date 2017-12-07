json.extract! account, :id, :name, :subdomain, :host_mapping, :created_at, :updated_at
json.url account_url(account, format: :json)
