Before do |scenario|
  begin
    tags = scenario.source_tag_names
    if tags.include?('@ie')
      @browser_type = 'ie'
    elsif tags.include?('@chrome')
      @browser_type = 'chrome'
    elsif tags.include?('@firefox')
      @browser_type = 'firefox'
    end

    @browser = Utilities.launch_browser(@browser_type)
    Utilities.resize_browser
  rescue => e
    puts e.message
    e.backtrace.each {|line| puts line}
  end
end

After do |scenario|
  begin
    scenario.failed? ? LOGGER.info('Scenario Status: Failed') : LOGGER.info('Scenario Status: Passed')
    LOGGER.info('--------------------------------LOGGING STOP---------------------------------')
    @browser.close
  rescue => e
    puts e.message
    e.backtrace.each {|line| puts line}
  end
end