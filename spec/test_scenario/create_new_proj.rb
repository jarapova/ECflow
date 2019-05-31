require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - create new project' do
    visit 'https://ectest.trueautomation.io/flow'

    # login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click

    sleep 3

    # find(ta('EC:picker:content:humburg')).click
    # find(ta('EC:content:humburg')).click
    find(:xpath, ta('EC:content:humburg', "//div[@class='at-main-menu-btn ch-icon-container menu']")).click
    # find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

    # find(ta('EC:picker:content:projects')).click
    # find(ta('EC:content:projects')).click
    find(:xpath, ta('EC:content:projects', "//a[@class='black-link nav-menu-category__item at-main-menu-projects']")).click
    # find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-projects']").click

    # find(ta('EC:picker:content:addNew')).click
    # find(ta('EC:content:addNew')).click
    find(:xpath, ta('EC:content:addNew', "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-create-new at-add-item-btn']")).click
    # find(:xpath, "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-create-new at-add-item-btn']").click

    sleep 3

    # find(ta('EC:picker:content:createNew')).click
    # find(ta('EC:content:createNew')).click
    find(:xpath, ta('EC:content:createNewPipeline', "(//div[@class='object-create__type'])[1]")).click
    # find(:xpath, "(//div[@class='object-create__type'])[1]").click

    # find(ta('EC:picker:content:nameInput')).set('proj'+SecureRandom.hex(5))
    # find(ta('EC:content:nameInput')).set('proj'+SecureRandom.hex(5))
    find(:xpath, ta('EC:content:nameInput', "//input[@placeholder='Name']")).set('proj'+SecureRandom.hex(5))
    # find(:xpath, "//input[@placeholder='Name']").set('proj'+SecureRandom.hex(5))

    # find(ta('EC:picker:content:okBtn')).click
    # find(ta('EC:content:okBtn')).click
    find(:xpath, ta('EC:content:okBtn', "//div[@class='ec-wizard-btn ec-ok at-ok-btn']")).click
    # find(:xpath, "//div[@class='ec-wizard-btn ec-ok at-ok-btn']").click
  end
end
