module RequestHelper

  def make_checkz(text, checked)
    page.execute_script <<-SCRIPT
      $("#" + $("label:contains('#{text}')").attr('for')).prop('checked', #{checked})
    SCRIPT
  end

  def hover_over_row(text)
    # In order to ensure that the content is ready we
    # need to make sure the content has been loaded on
    # the screen
    page.should have_content text
    page.execute_script <<-TEXT
      $("dl:contains('#{text}')").trigger("mouseover")
    TEXT
  end

  def as_a_user(args = {})
    visit root_path
    fill_in "Email", with: "testuser@somedomain.com"
    fill_in "Password", with: "password"
    click_button "Sign in"
  end
end
