class LoginPage < BasePage
  #elements on Login Page
  div(:main_content, :id => 'main-content')

  span(:email_error, :id =>'ctl00_MainContent_logInForm_RequiredTextValidator1_Txt')
  span(:password_error, :id =>'ctl00_MainContent_logInForm_RequiredTextValidator2_Txt')

  h1(:log_in_label, :xpath => '//*[@id="main-content"]/h1')

  text_field(:email_input_field, :id => 'txtEmail')
  text_field(:password_input_field, :id => 'txtPassword')

  button(:login_button, :id =>'ctl00_MainContent_logInForm_btnLogin')

end