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

    # find(ta('EC:picker:content:humburg')).click
    # find(ta('EC:content:humburg')).click
    find(:xpath, ta('EC:content:humburg', "//div[@class='at-main-menu-btn ch-icon-container menu']")).click
    # find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

    # find(ta('EC:picker:content:pipelineRuns')).click
    # find(ta('EC:content:pipelineRuns')).click
    find(:xpath, ta('EC:content:pipelineRuns', "//a[@class='black-link nav-menu-category__item at-main-menu-pipeline_runs']")).click
    # find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-pipeline_runs']").click

    sleep 3

    # find(ta('EC:picker:content:multiActionMEnu')).click
    # find(ta('EC:content:multiActionMEnu')).click
    find(:xpath, ta('EC:content:multiActionMEnu', "(//div[@class='sub-object__action sub-object__action--no-overlay sub-object__button'])[2]")).click
    # find(:xpath, "(//div[@class='sub-object__action sub-object__action--no-overlay sub-object__button'])[2]").click

    # find(ta('EC:picker:content:properties')).click
    # find(ta('EC:content:properties')).click
    find(:css, ta('EC:content:properties', ".at-item-2")).click
    # find(:css, ".at-item-2").click

    # find(ta('EC:picker:content:closePropertiesModal')).click
    # find(ta('EC:content:closePropertiesModal')).click
    find(:css, ta('EC:content:closePropertiesModal', ".properties-header__close")).click
    # find(:css, ".properties-header__close").click

    # find(ta('EC:picker:content:multiActionMEnu')).click
    # find(ta('EC:content:multiActionMEnu')).click
    find(:xpath, ta('EC:content:multiActionMEnu', "(//div[@class='sub-object__action sub-object__action--no-overlay sub-object__button'])[2]")).click
    # find(:xpath, "(//div[@class='sub-object__action sub-object__action--no-overlay sub-object__button'])[2]").click

    # find(ta('EC:picker:content:changeHistory')).click
    # find(ta('EC:content:changeHistory')).click
    find(:css, ta('EC:content:changeHistory', ".at-item-4")).click
    # find(:css, ".at-item-4").click

    sleep 2

    # find(ta('EC:picker:content:closeHistoryModal')).click
    # find(ta('EC:content:closeHistoryModal')).click
    find(:css, ta('EC:content:closeHistoryModal', ".at-history-close")).click
    # find(:css, ".at-history-close").click

    sleep 3

    end
end
