require 'spec_helper'
require 'securerandom'

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - navigating in system administrator menu' do
    visit 'https://ectest.trueautomation.io/flow'


    # login
        find(:xpath, "//input[@id='username']").set('admin')
        find(:xpath, "//input[@id='password']").set('changeme')
        find(:xpath, "//button[text()='Login']").click
    sleep 3
        # find(ta('EC:picker:headerNav:sysAdminBtn')).click
        find(ta('EC:headerNav:sysAdminBtn')).click
        # find(:xpath, ta('EC:headerNav:sysAdminBtn', "//span[@class='username']")).click
        # find(:xpath, "//span[@class='username']").click

        # find(ta('EC:picker:headerNav:tutorials')).click
        find(ta('EC:headerNav:tutorials')).click
        # find(:xpath, ta('EC:headerNav:tutorials', "//span[text()='Tutorials']")).click
        # find(:xpath, "//span[text()='Tutorials']").click
        sleep 3

        # find(ta('EC:picker:tours:tourEnv')).click
        find(ta('EC:tours:tourEnv')).click
        # find(:xpath, ta('EC:tours:tourEnv', "//div[text()='Create an Environment and Tier Map']")).click
        # find(:xpath, "//div[text()='Create an Environment and Tier Map']").click
        sleep 3
        # find(ta('EC:picker:tours:coachmark')).click
        find(ta('EC:tours:coachmark')).click
        # find(:xpath, ta('EC:tours:coachmark', "//span[@class='coach-start-link at-coachmark-continue']")).click
        # find(:xpath, "//span[@class='coach-start-link at-coachmark-continue']").click

        # find(ta('EC:picker:content:addNew')).click
        find(ta('EC:content:addNew')).click
        # find(:xpath, ta('EC:content:addNew', "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-create-new at-add-item-btn']")).click
        # find(:xpath, "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-create-new at-add-item-btn").click
sleep 3
        # find(ta('EC:picker:content:closeBreadcrumb')).click
        # find(ta('EC:content:closeBreadcrumb')).click
         find(:xpath, ta('EC:content:closeBreadcrumb', "//div[@class='wizard-breadcrumb wizard-breadcrumb--first at-breadcrumb--first-btn']")).click
        # find(:xpath, "//div[@class='wizard-breadcrumb wizard-breadcrumb--first at-breadcrumb--first-btn']").click

        # find(ta('EC:picker:tours:hunburger')).click
        find(ta('EC:tours:hunburger')).click
        # find(:xpath, ta('EC:tours:hunburger', "//div[@class='at-main-menu-btn ch-icon-container menu']")).click
        # find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

        # find(ta('EC:picker:content:env')).click
        find(ta('EC:content:env')).click
        # find(:xpath, ta('EC:content:env', "//a[@class='black-link nav-menu-category__item at-main-menu-environments']")).click
        # find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-environments']").click

  end
end
