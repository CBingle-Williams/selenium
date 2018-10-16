require 'selenium-webdriver'

class SeleniumDemoReg

  # page_url
  PAGE_URL = 'http://toolsqa.com/automation-practice-form/'
  # Page field
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  MALE_BUTTON_ID = 'sex-0'
  FEMALE_BUTTON_ID = 'sex-1'
  ONE_YEAR_BUTTON_ID = 'exp-0'
  TWO_YEAR_BUTTON_ID = 'exp-1'
  THREE_YEAR_BUTTON_ID = 'exp-2'
  FOUR_YEAR_BUTTON_ID = 'exp-3'
  FIVE_YEAR_BUTTON_ID = 'exp-4'
  SIX_YEAR_BUTTON_ID = 'exp-5'
  SEVEN_YEAR_BUTTON_ID = 'exp-6'
  DATE_FIELD_ID = 'datepicker'
  MANUAL_TESTER_ID = 'profession-0'
  AUTOMATION_TESTER_ID = 'profession-1'
  QTP_ID = 'tool-0'
  SELENIUM_IDE_ID = 'tool-1'
  SELENIUM_WEBDRIVER_ID = 'tool-2'
  CONTINENTS_ID = 'continents'
  COMMANDS_ID = 'selenium_commands'

  def initialize
    # set up driver
    @chrome_driver = Selenium::WebDriver.for(:chrome)
  end

  def access_registration_form
    @chrome_driver.get(PAGE_URL)
  end

  def current_url
    if @chrome_driver.current_url == PAGE_URL
      return true
    end
    return false
  end

  def find_first_name_field
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)
  end

  def find_last_name_field
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)
  end

  def find_male_radio_button
    @chrome_driver.find_element(:id, MALE_BUTTON_ID)
  end

  def find_female_radio_button
    @chrome_driver.find_element(:id, FEMALE_BUTTON_ID)
  end

  def find_one_year_button
    @chrome_driver.find_element(:id, ONE_YEAR_BUTTON_ID)
  end

  def find_two_year_button
      @chrome_driver.find_element(:id, TWO_YEAR_BUTTON_ID)
  end

  def find_three_year_button
      @chrome_driver.find_element(:id, THREE_YEAR_BUTTON_ID)
  end

  def find_four_year_button
      @chrome_driver.find_element(:id, FOUR_YEAR_BUTTON_ID)
  end

  def find_five_year_button
      @chrome_driver.find_element(:id, FIVE_YEAR_BUTTON_ID)
  end

  def find_six_year_button
      @chrome_driver.find_element(:id, SIX_YEAR_BUTTON_ID)
  end

  def find_seven_year_button
      @chrome_driver.find_element(:id, SEVEN_YEAR_BUTTON_ID)
  end

  def find_date_value
    @chrome_driver.find_element(:id, DATE_FIELD_ID)
  end

  def find_manual_tester_button
      @chrome_driver.find_element(:id, MANUAL_TESTER_ID)
  end

  def find_automation_tester_button
      @chrome_driver.find_element(:id, AUTOMATION_TESTER_ID)
  end

  def find_qtp_button
      @chrome_driver.find_element(:id, QTP_ID)
  end

  def find_selenium_ide_button
      @chrome_driver.find_element(:id, SELENIUM_IDE_ID)
  end

  def find_selenium_webdriver_button
      @chrome_driver.find_element(:id, SELENIUM_WEBDRIVER_ID)
  end

  def find_qtp_button
    @chrome_driver.find_element(:id, QTP_ID)
  end

  def find_selenium_ide_button
      @chrome_driver.find_element(:id, SELENIUM_IDE_ID)
  end

  def find_selenium_webdriver_button
      @chrome_driver.find_element(:id, SELENIUM_WEBDRIVER_ID)
  end

  def find_continents_dropdown
      @chrome_driver.find_element(:id, CONTINENTS_ID)
  end

  def find_commands_dropdown
      @chrome_driver.find_element(:id, COMMANDS_ID)
  end

  # first name field management - Difficulty Easy

  def get_first_name_field_value(first_name)
    find_first_name_field.send_keys(first_name)
    if find_first_name_field['value'] == first_name
      return true
    end
    return false
  end

  # last name field management - Difficulty Easy

  def get_last_name_field_value(last_name)
    find_last_name_field.send_keys(last_name)
    if find_last_name_field['value'] == last_name
      return true
    end
    return false
  end

  # click sex radio buttons

  def click_male_radio_button
    find_male_radio_button.click()
    if find_male_radio_button.selected?
      return true
    end
    return false
  end

  def click_female_radio_button
    find_female_radio_button.click()
    if find_female_radio_button.selected?
      return true
    end
    return false
  end

  
  # click years of experience buttons

  def select_one_year_button
  find_one_year_button.click()
  if find_one_year_button.selected?
      return true
  end
  return false
  end

  def select_two_year_button
    find_two_year_button.click()
    if find_two_year_button.selected?
        return true
    end
    return false
  end

  def select_three_year_button
    find_three_year_button.click()
    if find_three_year_button.selected?
        return true
    end
    return false
  end

  def select_four_year_button
    find_four_year_button.click()
    if find_four_year_button.selected?
        return true
    end
    return false
  end

  def select_five_year_button
    find_five_year_button.click()
    if find_five_year_button.selected?
        return true
    end
    return false
  end

  def select_six_year_button
    find_six_year_button.click()
    if find_six_year_button.selected?
        return true
    end
    return false
  end

  def select_seven_year_button
    find_seven_year_button.click()
    if find_seven_year_button.selected?
        return true
    end
    return false
  end

  # enter input into datetime field

  def get_datetime_field_value(date)
    find_date_value.send_keys(date)
    if find_date_value['value'] == date
      return true
    end
    return false
  end

  # check profession checkbox's
  def select_manual_tester_button
    find_manual_tester_button.click()
    if find_manual_tester_button.selected?
        return true
    end
    return false
  end

  def select_automation_tester_button
    find_automation_tester_button.click()
    if find_automation_tester_button.selected?
        return true
    end
    return false
  end

  # check automation tool radio button's

  def select_qtp_button
    find_qtp_button.click()
    if find_qtp_button.selected?
        return true
    end
    return false
  end

  def select_selenium_ide_button
    find_selenium_ide_button.click()
    if find_selenium_ide_button.selected?
        return true
    end
    return false
  end

  def select_selenium_webdriver_button
    find_selenium_webdriver_button.click()
    if find_selenium_webdriver_button.selected?
        return true
    end
    return false
  end

  # check continents dropdown

  def select_a_continent_value(continent)
    options = find_continents_dropdown.find_elements(tag_name: 'option')
    options.each { |option| 
      if option.text == continent
        option.click
        return true
      end
      }
    return false
  end

  # checks selenium commands dropdown
  
  def select_a_command_value(command)
    options = find_commands_dropdown.find_elements(tag_name: 'option')
    options.each { |option|
      if option.text == command
        option.click
        return true
      end
      }
    return false
  end

end
