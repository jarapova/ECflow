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

    find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

    find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-pipelines']").click

    sleep 3

    find(:xpath, "//div/a[@title='pipJul_NOT_DELETE']").click

    sleep 3

    find(:xpath, "//div[@class='ec-icon-run-menu__square']").click

    sleep 2

    find(:xpath, "(//div[@class='ec-icon-run-menu__col ec-icon-run-menu__col--label'])[1]").click

    find(:xpath, "//div[@class='at-pipeline-release-run-btn ec-wizard-btn ec-ok at-ok-btn']").click

    sleep 5

    find(:xpath, "//span[@class='sds-svg-icon__wrapper at-approver-drop-down sds-svg-icon__wrapper--icon-menu-dropdown']").click

    sleep 4

    find(:xpath, "(//div[@class='run-app-manual-approvals__approvers'])[1]").click

    sleep 3

    find(:xpath, "(//div[@class='response-dialog__outcome--item'])[2]").click

    find(:xpath, "//div[@class='ec-wizard-btn ec-ok at-ok-btn']").click

    sleep 5

    find(:xpath, "//span[@class='sds-svg-icon__wrapper at-approver-drop-down sds-svg-icon__wrapper--icon-menu-dropdown']").click

    sleep 3

    find(:xpath, "(//div[@class='run-app-manual-approvals__approvers'])[1]").click

    find(:xpath, "(//span[@class='react-form__radio-container__label__text'])[2]").click

    find(:xpath, "//div[@class='ec-wizard-btn ec-ok at-ok-btn']").click

  end
end
