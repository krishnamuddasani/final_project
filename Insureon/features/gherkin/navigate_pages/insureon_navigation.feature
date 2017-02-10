@insureon
Feature: Insureon Navigation

  Background:
    Given I am on insureon home page
  @ie
  Scenario: Small Business Insurance Page Navigation
    When I click on small business insurance link
    Then I should be navigated to Small Business Insurance Page
    And the contents of select your industry should be:
      | values                       |
      |Select Your Industry|
      |Accounting & Finance Professionals|
      |Advertising, Graphic Design and other Media Services|
      |Associations & Clubs|
      |Auto Services & Dealers|
      |Cleaning Services|
      |Computer, Web, IT Services & IT Staffing|
      |Construction & Contracting|
      |Consultants—Management & Marketing|
      |Design Professionals|
      |Healthcare|
      |Home Based Business|
      |Insurance Professionals and Stock Brokers|
      |Laundry|
      |Lawn Care/Landscaping|
      |Lessor's Risk|
      |Manufacturers|
      |Nonprofit / Social Services|
      |Pet Services|
      |Photography/Video Services|
      |Printing and Copying|
      |Professional & Specialty Services|
      |Professional Installation|
      |Real Estate, Title & Mortgage|
      |Restaurants and Bars|
      |Retail|
      |Salons and Personal Care Services|
      |Schools|
      |Services, Miscellaneous|
      |Wholesalers|
      |Other - None of the Above|

  Scenario: Who We Insure Page Navigation
    When I click on who we insure link
    Then I should be navigated to Who We Insure Page
    And the following fields should be present:
      | field                        |
      | accounting finance            |
      | food services            |
      | retail |
      | real estate                        |


  Scenario: Resources Page Navigation
    When I click on resources link
    Then I should be navigated to Resources Page

  Scenario: Contact Us Page Navigation
    When I click on Contact Us link
    Then I should be navigated to Contact Us Page

  Scenario: Login Page Navigation
    When I click on login link
    Then I should be navigated to Login Page
    And I validated the login with blank email and password
