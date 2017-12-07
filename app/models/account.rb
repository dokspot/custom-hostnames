class Account < ApplicationRecord
  validates :name, :subdomain, presence: true
  validates :name, :subdomain, :host_mapping, uniqueness: true
end
