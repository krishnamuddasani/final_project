class SmallBusinessInsurancePage < BasePage

  #small business insurance page elements
  div(:module_content, :id => 'dnn_ctr15621_ModuleContent')
  h1(:quote_heading, :class => 'QuotesCols__heading')
  select_list(:search_by, :xpath => '//*[@id="dnn_ctr15621_ModuleContent"]/div/div/div[1]/div[2]/select-industry/select')

  #search options for search for your industry
  def contents_of_search_by
    self.send('search_by_options')
  end
end