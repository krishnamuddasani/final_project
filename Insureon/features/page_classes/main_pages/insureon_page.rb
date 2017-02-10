class InsureonHomePage < BasePage

  page_url "http://www.insureon.com/"

  #Navigation Links
  link(:small_business_link, :xpath => '/html/body/form/div[3]/div[1]/div/div[1]/div/div/nav/div/div[1]/a')
  link(:who_we_insure_link, :xpath => '/html/body/form/div[3]/div[1]/div/div[1]/div/div/nav/div/div[2]/a')
  link(:resource_link, :xpath => '/html/body/form/div[3]/div[1]/div/div[1]/div/div/nav/div/div[3]/a')
  link(:contact_link, :xpath => '/html/body/form/div[3]/div[1]/div/div[1]/div/div/nav/div/div[4]/a')
  link(:login_link, :xpath => '/html/body/form/div[3]/div[1]/div/div[1]/div/div/nav/div/div[5]/a')

end