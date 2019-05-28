require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

#
# p SecureRandom.hex(10)
# p SecureRandom.base64(10)
# p SecureRandom.random_bytes(10)

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example' do
    visit 'https://trueautomation.io/'

    find(:xpath, ta('trueautomationio:home:loginBtn', "//div[./span[text()='Login']]")).click

    find(:css, ta('trueautomationio:signin:signupBtn', 'div.sign-up-container > a')).click

    fill_in ta('trueautomationio:signup:email', 'email'), with: 'env'+SecureRandom.hex(10)

    # p SecureRandom.hex(10)
    # p SecureRandom.base64(10)
    # p SecureRandom.random_bytes(10)
    sleep 3
  end
end
