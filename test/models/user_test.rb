require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "nome é obrigatorio" do
    user = User.new(name: nil)
    user.save
    
    assert user.errors[:name].any?
  end

  test "email é obrigatorio e no formato valido" do
    user = User.new(email: nil)
    user.save
    
    assert user.errors[:email].any?

    user = User.new(email: "invalido")
    user.save
    
    assert user.errors[:email].any?

    user = User.new(email: "invalido@exemplo.com")
    user.save
    
    refute user.errors[:email].any?
  end

  test "email é unico" do
    user = User.create!(name: "Darth Vader", email: "vader@exemplo.com", password: "password", password_confirmation: "password")

    other_user = User.create!(email: "vader@exemplo.com")

    assert other_user.errors[:email].any?
  end
end
