require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

#
# p SecureRandom.hex(10)
# p SecureRandom.base64(10)
# p SecureRandom.random_bytes(10)

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example' do
    visit 'https://ectest.trueautomation.io/flow'

    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click
    sleep 2
    find(ta('TEST:111')).click
    # find(ta('EC:content:addNew')).click
    # find(:xpath, ta('EC:content:addNew', "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-create-new at-add-item-btn']")).click
    # find(:xpath, "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-create-new at-add-item-btn").click

    find(ta('TEST:222close')).click
    # find(ta('TEST:closeBreadcrumb')).click
    # find(:xpath, ta('EC:content:closeBreadcrumb', "//span[@class='sds-svg-icon__wrapper']")).click
    # find(:xpath, "//span[@class='sds-svg-icon__wrapper']").click




    # visit 'https://trueautomation.io/'
    #
    # find(:xpath, ta('trueautomationio:home:loginBtn', "//div[./span[text()='Login']]")).click
    #
    # find(:css, ta('trueautomationio:signin:signupBtn', 'div.sign-up-container > a')).click
    #
    # fill_in ta('trueautomationio:signup:email', 'email'), with: 'env'+SecureRandom.hex(10)

    # p SecureRandom.hex(10)
    # p SecureRandom.base64(10)
    # p SecureRandom.random_bytes(10)
    sleep 3
  end
end
