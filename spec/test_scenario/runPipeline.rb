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

    sleep 3

    # find(ta('EC:picker:content:humburg')).click
    # find(ta('EC:content:humburg')).click
    find(:xpath, ta('EC:content:humburg', "//div[@class='at-main-menu-btn ch-icon-container menu']")).click
    # find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

    # find(ta('EC:picker:content:pipelines')).click
    # find(ta('EC:content:pipelines')).click
    find(:xpath, ta('EC:content:pipelines', "//a[@class='black-link nav-menu-category__item at-main-menu-pipelines']")).click
    # find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-pipelines']").click

    sleep 3

    # find(ta('EC:picker:choosePipeline')).click
    # find(ta('EC:content:choosePipeline')).click
    find(:xpath, ta('EC:content:choosePipeline', "//div/a[@title='pipJul_NOT_DELETE']")).click
    # find(:xpath, "//div/a[@title='pipJul_NOT_DELETE']").click

    sleep 3

    # find(ta('EC:picker:content:newRunBtn')).click
    # find(ta('EC:content:newRunBtn')).click
    find(:xpath, ta('EC:content:newRunBtn', "//div[@class='ec-icon-run-menu__square']")).click
    # find(:xpath, "//div[@class='ec-icon-run-menu__square']").click

    sleep 2

    # find(ta('EC:picker:content:newRun')).click
    # find(ta('EC:content:newRun')).click
    find(:xpath, ta('EC:content:newRun', "(//div[@class='ec-icon-run-menu__col ec-icon-run-menu__col--label'])[1]")).click
    # find(:xpath, "(//div[@class='ec-icon-run-menu__col ec-icon-run-menu__col--label'])[1]").click

    # find(ta('EC:picker:content:runBtn')).click
    # find(ta('EC:content:runBtn')).click
    find(:xpath, ta('EC:content:runBtn', "//div[@class='at-pipeline-release-run-btn ec-wizard-btn ec-ok at-ok-btn']")).click
    # find(:xpath, "//div[@class='at-pipeline-release-run-btn ec-wizard-btn ec-ok at-ok-btn']").click

    sleep 5

    # find(ta('EC:picker:content:acceptStage')).click
    # find(ta('EC:content:acceptStage')).click
    find(:xpath, ta('EC:content:acceptStage', "//span[@class='sds-svg-icon__wrapper at-approver-drop-down sds-svg-icon__wrapper--icon-menu-dropdown']")).click
    # find(:xpath, "//span[@class='sds-svg-icon__wrapper at-approver-drop-down sds-svg-icon__wrapper--icon-menu-dropdown']").click

    sleep 4

    # find(ta('EC:picker:content:manualTaskPopup')).click
    # find(ta('EC:content:manualTaskPopup')).click
    find(:xpath, ta('EC:content:manualTaskPopup', "(//div[@class='run-app-manual-approvals__approvers'])[1]")).click
    # find(:xpath, "(//div[@class='run-app-manual-approvals__approvers'])[1]").click

    sleep 3

    # find(ta('EC:picker:content:completed')).click
    # find(ta('EC:content:completed')).click
    find(:xpath, ta('EC:content:completed', "(//div[@class='response-dialog__outcome--item'])[2]")).click
    # find(:xpath, "(//div[@class='response-dialog__outcome--item'])[2]").click

    # find(ta('EC:picker:content:okBtn')).click
    # find(ta('EC:content:okBtn')).click
    find(:xpath, ta('EC:content:okBtn', "//div[@class='ec-wizard-btn ec-ok at-ok-btn']")).click
    # find(:xpath, "//div[@class='ec-wizard-btn ec-ok at-ok-btn']").click

    sleep 5

    # find(ta('EC:picker:content:acceptStage')).click
    # find(ta('EC:content:acceptStage')).click
    find(:xpath, ta('EC:content:acceptStage', "//span[@class='sds-svg-icon__wrapper at-approver-drop-down sds-svg-icon__wrapper--icon-menu-dropdown']")).click
    # find(:xpath, "//span[@class='sds-svg-icon__wrapper at-approver-drop-down sds-svg-icon__wrapper--icon-menu-dropdown']").click

    sleep 3

    # find(ta('EC:picker:content:manualTaskPopup')).click
    # # find(ta('EC:content:manualTaskPopup')).click
    find(:xpath, ta('EC:content:manualTaskPopup', "(//div[@class='run-app-manual-approvals__approvers'])[1]")).click
    # # find(:xpath, "(//div[@class='run-app-manual-approvals__approvers'])[1]").click

    # find(ta('EC:picker:content:approveRadioBtn')).click
    # find(ta('EC:content:approveRadioBtn')).click
    find(:xpath, ta('EC:content:approveRadioBtn', "(//span[@class='react-form__radio-container__label__text'])[2]")).click
    # find(:xpath, "(//span[@class='react-form__radio-container__label__text'])[2]").click

    # find(ta('EC:picker:content:okBtn')).click
    # find(ta('EC:content:okBtn')).click
    find(:xpath, ta('EC:content:okBtn', "//div[@class='ec-wizard-btn ec-ok at-ok-btn']")).click
    # find(:xpath, "//div[@class='ec-wizard-btn ec-ok at-ok-btn']").click

  end
end
