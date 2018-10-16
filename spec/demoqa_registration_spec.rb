require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq(true)
    end

    it 'should accept a first name' do
      expect(@driver.get_first_name_field_value('christian')).to eq(true)
    end

    it 'should accept a last name' do
      expect(@driver.get_last_name_field_value('bingle')).to eq(true)
    end

    it 'should check the male sex radio button is clicked' do
      expect(@driver.click_male_radio_button).to eq(true)
    end

    it 'should check the male sex radio button is clicked' do
      expect(@driver.click_female_radio_button).to eq(true)
    end

    it 'should check the 1 year experience radio button is clicked' do
      expect(@driver.select_one_year_button).to eq(true)
    end

    it 'should check the 2 year experience radio button is clicked' do
      expect(@driver.select_two_year_button).to eq(true)
    end

    it 'should check the 3 year experience radio button is clicked' do
      expect(@driver.select_three_year_button).to eq(true)
    end

    it 'should check the 4 year experience radio button is clicked' do
      expect(@driver.select_four_year_button).to eq(true)
    end

    it 'should check the 5 year experience radio button is clicked' do
      expect(@driver.select_five_year_button).to eq(true)
    end

    it 'should check the 6 year experience radio button is clicked' do
      expect(@driver.select_six_year_button).to eq(true)
    end

    it 'should check the 7 year experience radio button is clicked' do
      expect(@driver.select_seven_year_button).to eq(true)
    end
    
    it 'should accept a date' do
      expect(@driver.get_datetime_field_value('26/01/1998')).to eq(true)
    end

    it 'should check the manual test button is clicked' do
      expect(@driver.select_manual_tester_button).to eq(true)
    end

    it 'should check the automation test button is clicked' do
      expect(@driver.select_automation_tester_button).to eq(true)
    end

    it 'should check the QTP test button is clicked' do
      expect(@driver.select_qtp_button).to eq(true)
    end

    it 'should check the selenium ide test button is clicked' do
      expect(@driver.select_selenium_ide_button).to eq(true)
    end

    it 'should check the selenium webdriver test button is clicked' do
      expect(@driver.select_selenium_webdriver_button).to eq(true)
    end

    it 'should check that europe is selected' do
      expect(@driver.select_a_continent_value('Europe')).to eq(true)
    end

    it 'should check that the command is selected' do
      expect(@driver.select_a_command_value('Switch Commands')).to eq(true)
    end

  end

end
