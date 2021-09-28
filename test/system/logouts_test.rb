require "application_system_test_case"

class LogoutsTest < ApplicationSystemTestCase
  test "conseguir fazer logout do user" do
    user = FactoryBot.create(:user)
    login_as(user)

    click_on "Sair"

    asserti_equal new_session_path, current_path
    asserti_text "Sessão finalizada"
  end
end
