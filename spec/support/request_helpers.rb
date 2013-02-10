module RequestHelper
  def make_checkz(text, checked)
    page.execute_script <<-SCRIPT
      $("#" + $("label:contains('#{text}')").attr('for')).prop('checked', #{checked})
    SCRIPT
  end
end
