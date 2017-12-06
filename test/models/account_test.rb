require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  fixtures :accounts

  test "account attributes must not be empty" do
    account = Account.new
    assert account.invalid?
    assert account.errors[:name].any?
    assert account.errors[:subdomain].any?
  end

  test "account is not valid without a unique name and subdomain" do
    account = Account.new(name: accounts(:one).name, subdomain: accounts(:one).subdomain)
    assert account.invalid?
    assert_equal ["has already been taken"], account.errors[:name]
    assert_equal ["has already been taken"], account.errors[:subdomain]
  end
end
