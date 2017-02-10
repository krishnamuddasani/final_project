class WhoWeInsurePage < BasePage

  #WhoWeInsurePage Elements
  div(:article_content, :class => 'GLArticle__content')
  div(:accounting_finance, :text =>'Accounting & Finance')
  div(:food_services, :text =>'Food Services')
  div(:retail, :text =>'Retail')
  div(:real_estate, :text =>'Real Estate')

  #checks for visible elements
  def that_visible_elements_matches?(results_table)
    result = true
    results_table.each do |element|
      expected_element = element[0]
      unless self.check_for?(field_name(expected_element))
        result = false
        puts "#{expected_element} not found."
      end
    end
    result
  end
  #field name format
  def field_name(string)
    string.downcase.gsub(' ', '_')
  end
  #field name format
  def field_name_format(field)
    @field = (field.downcase.tr!(' ', '_') if field.include? ' ') || (field.downcase)
  end
  #check element visibility
  def check_for?(element)
    field_name_format(element)
    self.send("#{@field}_element").visible?
  end
end