require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - create new servise' do
    visit 'https://ectest.trueautomation.io/flow'

    # login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click

    # find(ta('EC:picker:headerNav:serviceCatalogs')).click
    # find(ta('EC:headerNav:serviceCatalogs')).click
    find(:xpath, ta('EC:headerNav:serviceCatalogs', "//div[@class='icon-nav-item at-icon-nav-item-catalogs']")).click
    # find(:xpath, "//div[@class='icon-nav-item at-icon-nav-item-catalogs']").click

    # find(ta('EC:picker:content:addNewCatalog')).click
    # find(ta('EC:content:addNewCatalog')).click
    find(:xpath, ta('EC:content:addNewCatalog', "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-create-new at-new-catalog at-add-item-btn']")).click
    # find(:xpath, "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-create-new at-new-catalog at-add-item-btn']").click

    # find(ta('EC:picker:content:createNew')).click
    # find(ta('EC:content:createNew')).click
    find(:xpath, ta('EC:content:createNew', "(//div[@class='object-create__type'])[1]")).click
    # find(:xpath, "(//div[@class='object-create__type'])[1]").click

    # find(ta('EC:picker:content:nameInput')).set('servCatalog'+SecureRandom.hex(4))
    # find(ta('EC:content:nameInput')).set('servCatalog'+SecureRandom.hex(4))
    find(:xpath, ta('EC:content:nameInput', "//input[@placeholder='Name']")).set('servCatalog'+SecureRandom.hex(4))
    # find(:xpath, "//input[@placeholder='Name']").set('servCatalog'+SecureRandom.hex(4))

    # find(ta('EC:picker:content:selectProj')).click
    # find(ta('EC:content:selectProj')).click
    find(:xpath, ta('EC:content:selectProj', "//div[@class='at-select-header-title ec-select-header-title']")).click
    # find(:xpath, "//div[@class='at-select-header-title ec-select-header-title']").click

    sleep 3

    # find(ta('EC:picker:content:defaultProj')).click
    # find(ta('EC:content:defaultProj')).click
    find(:xpath, ta('EC:content:defaultProj',"//div[@class='ec-project-select-picker__project-options']//div[text()='Default']")).click
    # find(:xpath, "//div[@class='ec-project-select-picker__project-options']//div[text()='Default']").click

    # find(ta('EC:picker:content:okBtn')).click
    # find(ta('EC:content:okBtn')).click
    find(:xpath, ta('EC:content:okBtn', "//div[@class='ec-wizard-btn ec-ok at-ok-btn']")).click
    # find(:xpath, "//div[@class='ec-wizard-btn ec-ok at-ok-btn']").click

    # find(ta('EC:picker:content:editName')).set('Ololo'+SecureRandom.hex(4))
    # find(ta('EC:content:editName')).set('Ololo'+SecureRandom.hex(4))
    find(:xpath, ta('EC:content:editName', "//input[@placeholder='Name']")).set('Ololo'+SecureRandom.hex(4))
    # find(:xpath, "//input[@placeholder='Name']").set('Ololo'+SecureRandom.hex(4))

    # find(ta('EC:picker:content:descriptionCatalog')).set('text'+SecureRandom.hex(4))
    # find(ta('EC:content:descriptionCatalog')).set('text'+SecureRandom.hex(4))
    find(:xpath, ta('EC:content:descriptionCatalog', "//textarea[@placeholder='Description']")).set('text'+SecureRandom.hex(4))
    # find(:xpath, "//textarea[@placeholder='Description']").set('text'+SecureRandom.hex(4))

    # find(ta('EC:picker:content:doneBtn')).click
    # find(ta('EC:content:doneBtn')).click
    find(:xpath, ta('EC:content:doneBtn', "//span[text()='Done']")).click
    # find(:xpath, "//span[text()='Done']").click

  end
end
