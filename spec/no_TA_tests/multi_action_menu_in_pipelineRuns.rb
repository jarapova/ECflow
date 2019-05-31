require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - Navigate to pipeline runs multi action mEnu' do
    visit 'https://ectest.trueautomation.io/flow'

    # login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click

    sleep 3

    find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

    find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-pipeline_runs']").click

    sleep 3

    find(:xpath, "(//div[@class='sub-object__action sub-object__action--no-overlay sub-object__button'])[2]").click

    find(:css, ".at-item-2").click

    find(:css, ".properties-header__close").click

    find(:xpath, "(//div[@class='sub-object__action sub-object__action--no-overlay sub-object__button'])[2]").click

    find(:css, ".at-item-4").click

    sleep 2

    find(:css, ".at-history-close").click

    sleep 3

    end
end
