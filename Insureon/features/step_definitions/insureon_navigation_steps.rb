Given(/^I am on insureon home page$/) do
  visit(InsureonHomePage)
end

When(/^I click on small business insurance link$/) do
  on(InsureonHomePage) do |page|
      page.small_business_link
  end
end

Then(/^I should be navigated to Small Business Insurance Page$/) do
  on(SmallBusinessInsurancePage) do |page|
    expect(page.quote_heading_element.text.include? ("Small Business Insurance")).to eq(true)
  end
end

When(/^I click on who we insure link$/) do
  on(InsureonHomePage) do |page|
    page.who_we_insure_link
  end
end

Then(/^I should be navigated to Who We Insure Page$/) do
  on(WhoWeInsurePage) do |page|
    expect(page.article_content_element.text.include? ("Who We Insure")).to eq(true)
  end
end

When(/^I click on resources link$/) do
  on(InsureonHomePage) do |page|
    page.resource_link
  end
end

Then(/^I should be navigated to Resources Page$/) do
  on(ResourcePage) do |page|
    expect(page.module_label_content_element.text.include? ("InsureonU: Insurance Resources for Small-Business Owners")).to eq(true)
  end
end

When(/^I click on Contact Us link$/) do
  on(InsureonHomePage) do |page|
    page.contact_link
  end
end

Then(/^I should be navigated to Contact Us Page$/) do
  on(ContactUsPage) do |page|
    expect(page.module_label_content.include? ("Contact Us")).to eq(true)
  end
end

When(/^I click on login link$/) do
  on(InsureonHomePage) do |page|
    page.login_link
  end
end

Then(/^I should be navigated to Login Page$/) do
  on(LoginPage) do |page|
    expect(page.log_in_label_element.text.include? ("LOG IN")).to eq(true)
  end
end

And(/^the contents of select your industry should be:$/) do |table|
  # table is a table.hashes.keys # => [:values]
  on(SmallBusinessInsurancePage).search_by_element.click
  expect(on(SmallBusinessInsurancePage).contents_of_search_by ).to match_array table.rows.flatten
end

And(/^the following fields should be present:$/) do |table|
  # table is a table.hashes.keys # => [:field]
  expect(on(WhoWeInsurePage).that_visible_elements_matches?(table.rows)).to be true
end

And(/^I validated the login with blank email and password$/) do
  on(LoginPage) do |page|
    page.send('email_input_field=', '')
    page.send('password_input_field=','')
    page.send('login_button')

    fail 'email validation error not found' unless page.send('email_error').eql?('Please provide an email address')
    fail 'password validation error not found' unless page.send('password_error').eql?('Please provide password')
  end
end