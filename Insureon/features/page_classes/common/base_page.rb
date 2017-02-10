class BasePage
  include PageObject
  include PageFactory
  include PageObjectExternalRoutes

  def get_current_time_string
    Time.now.strftime("%m%d%Y").to_s
  end
end
