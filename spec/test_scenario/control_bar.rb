require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - Selecting project in control bsr dropdown' do
    visit 'https://ectest.trueautomation.io/flow'
# login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click
#
    sleep 3
    # find(ta('EC:picker:content:controlBar:selectProject')).click
    # find(ta('EC:content:controlBar:selectProject')).click
    find(:xpath, ta('EC:content:controlBar:selectProject', "//div[@class='project-select-popover at-project-select']")).click
    # find(:xpath, "//div[@class='project-select-popover at-project-select']").click
sleep 3
    # find(ta('EC:picker:content:controlBar:EcExamplesProj')).click
    # find(ta('EC:content:controlBar:EcExamplesProj')).click
    find(:css, ta('EC:content:controlBar:EcExamplesProj', "div.at-project-select-item-picker-2")).click
    # find(:css, "div.at-project-select-item-picker-2").click

    # find(ta('EC:picker:content:controlBar:Ecloud')).click
    # find(ta('EC:content:controlBar:Ecloud')).click
    find(:css, ta('EC:content:controlBar:Ecloud', "div.at-project-select-item-picker-5")).click
    # find(:css, "div.at-project-select-item-picker-5").click

    # find(ta('EC:picker:content:controlBar:Apply')).click
    # find(ta('EC:content:controlBar:Apply')).click
    find(:css, ta('EC:content:controlBar:Apply', "div.at-project-select-submit")).click
    # find(:css, "div.at-project-select-submit").click

    # find(ta('EC:picker:content:controlBar:selectProject')).click
    # find(ta('EC:content:controlBar:selectProject')).click
    find(:xpath, ta('EC:content:controlBar:selectProject', "//div[@class='project-select-popover at-project-select']")).click
    # find(:xpath, "//div[@class='project-select-popover at-project-select']").click

    # find(ta('EC:picker:content:controlBar:EcExamplesProjUnselect')).click
    # find(ta('EC:content:controlBar:EcExamplesProjUnselect')).click
    find(:css, ta('EC:content:controlBar:EcExamplesProjUnselect', ".at-project-select-item-picker-1.ec-project-select-picker__project--selected")).click
    # find(:css, ".at-project-select-item-picker-1.ec-project-select-picker__project--selected").click

    # find(ta('EC:picker:content:controlBar:EcloudUnselect')).click
    # find(ta('EC:content:controlBar:EcloudUnselect')).click
    find(:css, ta('EC:content:controlBar:EcloudUnselect', ".at-project-select-item-picker-2.ec-project-select-picker__project--selected")).click
    # find(:css, ".at-project-select-item-picker-2.ec-project-select-picker__project--selected").click

    # find(ta('EC:picker:content:controlBar:Apply')).click
    # find(ta('EC:content:controlBar:Apply')).click
    find(:css, ta('EC:content:controlBar:Apply', "div.at-project-select-submit")).click
    # find(:css, "div.at-project-select-submit").click

    sleep 5
  end
end
