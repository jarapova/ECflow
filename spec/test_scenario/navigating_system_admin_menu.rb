require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - navigating in system administrator menu' do
    visit 'https://ectest.trueautomation.io/flow'

    # login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click

    # find(ta('EC:picker:headerNav:sysAdminBtn')).click
    # find(ta('EC:headerNav:sysAdminBtn')).click
    find(:xpath, ta('EC:headerNav:sysAdminBtn', "//span[@class='username']")).click
    # find(:xpath, "//span[@class='username']").click

    # find(ta('EC:picker:headerNav:tutorials')).click
    # find(ta('EC:headerNav:tutorials')).click
    find(:xpath, ta('EC:headerNav:tutorials', "//span[text()='Tutorials']")).click
    # find(:xpath, "//span[text()='Tutorials']").click

    sleep 3

    # find(ta('EC:picker:headerNav:closeModal')).click
    # find(ta('EC:headerNav:closeModal')).click
    find(:xpath, ta('EC:headerNav:closeModal', "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-view-hide']")).click
    # find(:xpath, "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-view-hide']").click

    find(ta('EC:headerNav:sysAdminBtn')).click

    # find(ta('EC:picker:headerNav:Timezone')).click
    # find(ta('EC:headerNav:Timezone')).click
    find(:xpath, ta('EC:headerNav:Timezone', "//span[text()='Timezone']")).click
    # find(:xpath, "//span[text()='Timezone']").click

    sleep 3

    # find(ta('EC:picker:headerNav:cancelBtn')).click
    # find(ta('EC:headerNav:cancelBtn')).click
    find(:xpath, ta('EC:headerNav:cancelBtn', "//div[@class='ec-wizard-btn ec-cancel at-cancel-btn']")).click
    # find(:xpath, "//div[@class='ec-wizard-btn ec-cancel at-cancel-btn']").click

    find(ta('EC:headerNav:sysAdminBtn')).click

    # find(ta('EC:picker:headerNav:about')).click
    # find(ta('EC:headerNav:about')).click
    find(:xpath, ta('EC:headerNav:about', "//span[text()='About']")).click
    # find(:xpath, "//span[text()='About']").click

    sleep 3

    # find(ta('EC:picker:headerNav:closeSimpleModal')).click
    # find(ta('EC:headerNav:closeSimpleModal')).click
    find(:xpath, ta('EC:headerNav:closeSimpleModal', "//span[@class='sds-svg-icon__wrapper']")).click
    # find(:xpath, "//span[@class='sds-svg-icon__wrapper']").click

    sleep 3

  end
end
