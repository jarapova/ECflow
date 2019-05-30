require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - pagination pipeline runs page' do
    visit 'https://ectest.trueautomation.io/flow'
    size10 = "//div[@class='pagination__page-size-select at-pagination__page-size-select']/span[text()='10']"
    size20 = "//div[@class='pagination__page-size-select at-pagination__page-size-select']/span[text()='20']"
    size50 = "//div[@class='pagination__page-size-select at-pagination__page-size-select']/span[text()='50']"

    # login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click

    sleep 3

    find(ta('EC:picker:content:humburg')).click
    # find(ta('EC:content:humburg')).click
    # find(:xpath, ta('EC:content:humburg', "//div[@class='at-main-menu-btn ch-icon-container menu']")).click
    # find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

    # find(ta('EC:picker:content:pipelineRuns')).click
    # find(ta('EC:content:pipelineRuns')).click
    find(:xpath, ta('EC:content:pipelineRuns', "//a[@class='black-link nav-menu-category__item at-main-menu-pipeline_runs']")).click
    # find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-pipeline_runs']").click

    sleep 3
    # if page.has_xpath?(ta('EC:content:picker:pagination2'))
    if page.has_xpath?(ta('EC:content:pagination2', "//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='2']"))
        # find(ta('EC:picker:content:pagination2')).click
        # find(ta('EC:content:pagination2')).click
        find(:xpath, ta('EC:content:pagination2', "//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='2']")).click
        # find(:xpath, "//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='2']").click
    end

    sleep 3
    # if page.has_xpath?(ta('EC:content:picker:pagination3'))
    if page.has_xpath?(ta('EC:content:pagination3', "//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='3']"))
        # find(ta('EC:picker:content:pagination3')).click
        # find(ta('EC:content:pagination3')).click
        find(:xpath, ta('EC:content:pagination3', "//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='3']")).click
        # find(:xpath, "//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='3']").click
    end

    sleep 3

    # if page.has_xpath?(ta('EC:content:picker:pagination1'))
    if page.has_xpath?(ta('EC:content:pagination1', "//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='1']"))
        # find(ta('EC:picker:content:pagination1')).click
        # find(ta('EC:content:pagination1')).click
        find(:xpath, ta('EC:content:pagination1', "//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='1']")).click
        # find(:xpath, "//div[@class='pagination__button-numbers at-pagination__button-numbers']/a[@title='1']").click
    end

    sleep 3

    # find(ta('EC:picker:content:paginationPageSizeSelect')).click
    # find(ta('EC:content:paginationPageSizeSelect')).click
    find(:xpath, ta('EC:content:paginationPageSizeSelect', "//span[@class='sds-svg-icon__wrapper at-pagination__page-size-select-icon sds-svg-icon__wrapper--icon-menu-dropdown']")).click
    # find(:xpath, "//span[@class='sds-svg-icon__wrapper at-pagination__page-size-select-icon sds-svg-icon__wrapper--icon-menu-dropdown']").click

    # if page.has_xpath?(ta('EC:content:picker:paginationSize10'))
    if page.has_xpath?(ta('EC:content:paginationSize10', "(//a[@class='ec-react-popover__link at-react-popover-link'])[1]"))
        # find(ta('EC:content:paginationSize10')).click
        find(:xpath, ta('EC:content:paginationSize10', "(//a[@class='ec-react-popover__link at-react-popover-link'])[1]")).click
              expect(page).to have_selector(:xpath, size10)
              p "pagination size is 10"
    end

    # find(ta('EC:picker:content:paginationPageSizeSelect')).click
    # find(ta('EC:content:paginationPageSizeSelect')).click
    find(:xpath, ta('EC:content:paginationPageSizeSelect', "//span[@class='sds-svg-icon__wrapper at-pagination__page-size-select-icon sds-svg-icon__wrapper--icon-menu-dropdown']")).click
    # find(:xpath, "//span[@class='sds-svg-icon__wrapper at-pagination__page-size-select-icon sds-svg-icon__wrapper--icon-menu-dropdown']").click

    # if page.has_xpath?(ta('EC:content:picker:paginationSize50'))
    if page.has_xpath?(ta('EC:content:paginationSize50',"(//a[@class='ec-react-popover__link at-react-popover-link'])[3]"))
            # find(ta('EC:content:paginationSize50')).click
            find(:xpath, ta('EC:content:paginationSize50',"(//a[@class='ec-react-popover__link at-react-popover-link'])[3]")).click
              expect(page).to have_selector(:xpath, size50)
              p "pagination size is 50"
    end

    sleep 3

    # find(ta('EC:picker:content:paginationPageSizeSelect')).click
    # find(ta('EC:content:paginationPageSizeSelect')).click
    find(:xpath, ta('EC:content:paginationPageSizeSelect', "//span[@class='sds-svg-icon__wrapper at-pagination__page-size-select-icon sds-svg-icon__wrapper--icon-menu-dropdown']")).click
    # find(:xpath, "//span[@class='sds-svg-icon__wrapper at-pagination__page-size-select-icon sds-svg-icon__wrapper--icon-menu-dropdown']").click

    # if page.has_xpath?(ta('EC:content:picker:paginationSize20'))
    if page.has_xpath?(ta('EC:content:paginationSize20', "(//a[@class='ec-react-popover__link at-react-popover-link'])[2]"))
        # find(ta('EC:content:paginationSize20')).click
        find(:xpath, ta('EC:content:paginationSize20',"(//a[@class='ec-react-popover__link at-react-popover-link'])[2]")).click
              expect(page).to have_selector(:xpath, size20)
              p "pagination size is 20"
    end

    sleep 3

  end
end
