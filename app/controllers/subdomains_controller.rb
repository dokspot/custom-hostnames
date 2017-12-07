class SubdomainsController < ApplicationController
  before_action :set_account, only: :show

  def show
  end

  private

  def set_account
    @account = Account.find_by(subdomain: request.subdomain) || Account.find_by(host_mapping: request.host)
  end
end
