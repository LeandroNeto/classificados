require "test_helper"

class FirstTest < ActiveSupport::TestCase
  test "esse é meu primeiro teste" do
    variavel = "Leandro"

    assert_equal "Leandro", variavel
  end
end