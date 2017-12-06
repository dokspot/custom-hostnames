class Account < ApplicationRecord
  validates :name, :subdomain, presence: true
  validates :name, :subdomain, uniqueness: true
end
