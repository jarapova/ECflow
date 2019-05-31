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

    # find(ta('EC:picker:content:humburg')).click
    # find(ta('EC:content:humburg')).click
    find(:xpath, ta('EC:content:humburg', "//div[@class='at-main-menu-btn ch-icon-container menu']")).click
    # find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

    # find(ta('EC:picker:content:projects')).click
    # find(ta('EC:content:projects')).click
    find(:xpath, ta('EC:content:projects', "//a[@class='black-link nav-menu-category__item at-main-menu-projects']")).click
    # find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-projects']").click

    sleep 2

    # find(ta('EC:picker:content:showInfoIcon')).click
    # find(ta('EC:content:showInfoIcon')).click
    find(:xpath, ta('EC:content:showInfoIcon', "(//div[@class='object__desc object__button at-project-list-item-show-info'])[1]")).click
    # find(:xpath, "(//div[@class='object__desc object__button at-project-list-item-show-info'])[1]").click

    # find(ta('EC:picker:content:addTags')).click
    # find(ta('EC:content:addTags')).click
    find(:xpath, ta('EC:content:addTags', "(//div[@class='object-info__item-action-icon'])[2]")).click
    # find(:xpath, "(//div[@class='object-info__item-action-icon'])[2]").click

    # find(ta('EC:picker:content:newTagsEdit')).set('tag'+SecureRandom.hex(5))
    # find(ta('EC:content:newTagsEdit')).set('tag'+SecureRandom.hex(5))
    find(:xpath, ta('EC:content:newTagsEdit', "//input[@class='select-input-autosize']")).set('tag'+SecureRandom.hex(5))
    # find(:xpath, "//input[@class='select-input-autosize']").set('tag'+SecureRandom.hex(5))

    find(ta('EC:picker:content:selectTags')).click
    # # find(ta('EC:content:selectTags')).click
    # find(:xpath, ta('EC:content:selectTags', "//span[@class='Select-item-label']")).click
    # # find(:xpath, "//div[@class='Select Select--dark is-multi is-searchable is-open has-value']").click

  end
end
