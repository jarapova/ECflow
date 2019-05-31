require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - navigating in hunmburg menu' do
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

    # find(ta('EC:picker:content:pipelineRuns')).click
    # find(ta('EC:content:pipelineRuns')).click
    find(:xpath, ta('EC:content:pipelineRuns', "//a[@class='black-link nav-menu-category__item at-main-menu-pipeline_runs']")).click
    # find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-pipeline_runs']").click

    # find(ta('EC:picker:content:humburg')).click
    # find(ta('EC:content:humburg')).click
    find(:xpath, ta('EC:content:humburg', "//div[@class='at-main-menu-btn ch-icon-container menu']")).click
    # find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

    sleep 3

    # find(ta('EC:picker:content:env')).click
    # find(ta('EC:content:environments')).click
    find(:xpath, ta('EC:content:environments', "//a[@class='black-link nav-menu-category__item at-main-menu-environments']")).click
    # find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-environments']").click

    # find(ta('EC:picker:content:humburg')).click
    # find(ta('EC:content:humburg')).click
    find(:xpath, ta('EC:content:humburg', "//div[@class='at-main-menu-btn ch-icon-container menu']")).click
    # find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

    sleep 3

    # find(ta('EC:picker:content:procedures')).click
    # find(ta('EC:content:procedures')).click
    find(:xpath, ta('EC:content:procedures', "//a[@class='black-link nav-menu-category__item at-main-menu-procedures']")).click
    # find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-procedures']").click

    sleep 3

  end
end
