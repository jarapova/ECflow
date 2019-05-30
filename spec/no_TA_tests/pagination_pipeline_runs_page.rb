require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - pagination pipeline runs page' do
    visit 'https://ectest.trueautomation.io/flow'
    size10 = "//div[@class='pagination__page-size-select at-pagination__page-size-select']/span[text()='10']"
    size20 = "//div[@class='pagination__page-size-select at-pagination__page-size-select']/span[text()='20']"
    size50 = "//div[@class='pagination__page-size-select at-pagination__page-size-select']/span[text()='50']"

    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click
    sleep 3
    find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click
    find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-pipeline_runs']").click
    sleep 3
    if page.has_xpath?("//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='2']")
            find(:xpath, "//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='2']").click
    end
    sleep 3
    if page.has_xpath?("//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='3']")
            find(:xpath, "//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='3']").click
    end
    sleep 3
    if page.has_xpath?("//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='1']")
            find(:xpath, "//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='1']").click
    end
    sleep 3
    find(:xpath, "//span[@class='sds-svg-icon__wrapper at-pagination__page-size-select-icon sds-svg-icon__wrapper--icon-menu-dropdown']").click
    if page.has_xpath?("(//a[@class='ec-react-popover__link at-react-popover-link'])[1]")
        find(:xpath, "(//a[@class='ec-react-popover__link at-react-popover-link'])[1]").click
              expect(page).to have_selector(:xpath, size10)
              p "pagination size is 10"
    end
    find(:xpath, "//span[@class='sds-svg-icon__wrapper at-pagination__page-size-select-icon sds-svg-icon__wrapper--icon-menu-dropdown']").click
    if page.has_xpath?("(//a[@class='ec-react-popover__link at-react-popover-link'])[3]")
            find(:xpath,"(//a[@class='ec-react-popover__link at-react-popover-link'])[3]").click
              expect(page).to have_selector(:xpath, size50)
              p "pagination size is 50"
    end
    sleep 3
    find(:xpath, "//span[@class='sds-svg-icon__wrapper at-pagination__page-size-select-icon sds-svg-icon__wrapper--icon-menu-dropdown']").click
    if page.has_xpath?("(//a[@class='ec-react-popover__link at-react-popover-link'])[2]")
        find(:xpath, "(//a[@class='ec-react-popover__link at-react-popover-link'])[2]").click
              expect(page).to have_selector(:xpath, size20)
              p "pagination size is 20"
    end
    sleep 3

  end
end
