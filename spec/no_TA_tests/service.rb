require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - setting dataa in service catalogs' do
    visit 'https://ectest.trueautomation.io/flow'

    # login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click

    find(:xpath, "//div[@class='icon-nav-item at-icon-nav-item-catalogs']").click

    find(:css, "div.at-catalog-item-btn-databasedeploymenttooracle").click

    sleep 2

    find(:xpath, "(//input[@class='Form__input at-react-form-txt-input'])[2]").set('ololo')

    find(:xpath, "(//input[@class='Form__input at-react-form-txt-input'])[1]").set('123123')
    sleep 2

    find(:xpath, "(//div[@class='at-select-header-title ec-select-header-title'])[1]").click
    sleep 2

    find(:xpath, "(//input[@class='sds-input search-collapsable__search-input at-search-collapsable-input'])[2]").set('Electric Cloud')
    sleep 2

    find(:css, "div.at-project-select-item-picker-1").click

    find(:css, "div.at-breadcrumb--first-btn").click
    sleep 3
    find(:css, "div.at-catalog-item-btn-importdockercomposefile").click
    find(:css, "textarea.at-react-form-textarea").set('lolololoolo')

    find(:xpath, "(//div[@class='at-select-header-title ec-select-header-title'])[2]").click
    sleep 2

    find(:xpath, "(//input[@class='sds-input search-collapsable__search-input at-search-collapsable-input'])[2]").set('Electric Cloud')

    sleep 2

    find(:css, "div.at-project-select-item-picker-1").click

 sleep 3
  end
end
