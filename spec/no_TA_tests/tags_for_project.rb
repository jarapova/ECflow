require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - tags for project' do
    visit 'https://ectest.trueautomation.io/flow'

    # login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click

    sleep 3

    find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

    find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-projects']").click

    sleep 2

     find(:xpath, "(//div[@class='object__desc object__button at-project-list-item-show-info'])[1]").click

    find(:xpath, "(//div[@class='object-info__item-action-icon'])[2]").click
sleep 3
    find(:xpath, "//input[@class='select-input-autosize']").set('tag'+SecureRandom.hex(5))
sleep 3
    find(ta('EC:picker:content:selectTags')).click
    # # find(ta('EC:content:selectTags')).click
    # find(:xpath, ta('EC:content:selectTags', "//span[@class='Select-item-label']")).click
    # # find(:xpath, "//div[@class='Select Select--dark is-multi is-searchable is-open has-value']").click

  end
end
