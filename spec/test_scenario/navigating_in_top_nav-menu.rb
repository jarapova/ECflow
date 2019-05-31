require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - navigating in top-nav menu' do
    visit 'https://ectest.trueautomation.io/flow'

    # login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click

    # find(ta('EC:picker:headerNav:logo')).click
    # find(ta('EC:headerNav:logo')).click
    find(:xpath, ta('EC:headerNav:logo', "//a[@class='logo at-logo-link']")).click
    # find(:xpath, "//a[@class='logo at-logo-link']").click

    # find(ta('EC:picker:headerNav:myWork')).click
    # find(ta('EC:headerNav:myWork')).click
    find(:xpath, ta('EC:headerNav:myWork', "//div[@class='icon-nav-item at-icon-nav-item-my-work']")).click
    # find(:xpath, "//div[@class='icon-nav-item at-icon-nav-item-my-work']").click


    if page.has_xpath?("//div[@class='icon-nav-item at-icon-nav-item-dashboards']")
        find(:xpath, "//div[@class='con-nav-item at-icon-nav-item-dashboards']").click
    end

    # find(ta('EC:picker:headerNav:serviceCatalogs')).click
    # find(ta('EC:headerNav:serviceCatalogs')).click
    find(:xpath, ta('EC:headerNav:serviceCatalogs', "//div[@class='icon-nav-item at-icon-nav-item-catalogs']")).click
    # find(:xpath, "//div[@class='icon-nav-item at-icon-nav-item-catalogs']").click

    # find(ta('EC:picker:headerNav:releasesCalendar')).click
    # find(ta('EC:headerNav:releasesCalendar')).click
    find(:xpath, ta('EC:headerNav:releasesCalendar', "//div[@class='icon-nav-item at-icon-nav-item-releases-calendar']")).click
    # find(:xpath, "//div[@class='icon-nav-item at-icon-nav-item-releases-calendar']").click

    sleep 3

  end
end
