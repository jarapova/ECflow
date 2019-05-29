require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - run pipeline with manual stage task' do
    visit 'https://ectest.trueautomation.io/flow'
# login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click
#
    sleep 3
    # find(ta(   'EC:content:humburg')).click
    find(:xpath, ta('EC:content:humburg', "//div[@class='at-main-menu-btn ch-icon-container menu']")).click
    # find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

    # find(ta(   'EC:content:pipelines')).click
    find(:xpath, ta('EC:content:pipelines', "//a[@class='black-link nav-menu-category__item at-main-menu-pipelines']")).click
    # find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-pipelines']").click

    find(ta(   'EC:picker:choosePipeline')).click
    # find(ta(   'EC:content:choosePipeline')).click
    # find(:xpath, ta('EC:content:choosePipeline', "//div/a[@title='pipJul']")).click
    # find(:xpath, "//div/a[@title='pipJul']").click
    sleep 3

  end
end
