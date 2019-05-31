require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - setting dataa in service catalogs' do
    visit 'https://ectest.trueautomation.io/flow'

    # login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click

    # find(ta('EC:picker:headerNav:serviceCatalogs')).click
    # find(ta('EC:headerNav:serviceCatalogs')).click
    find(:xpath, ta('EC:headerNav:serviceCatalogs', "//div[@class='icon-nav-item at-icon-nav-item-catalogs']")).click
    # find(:xpath, "//div[@class='icon-nav-item at-icon-nav-item-catalogs']").click

    # find(ta('EC:picker:content:executeOracle')).click
    # find(ta('EC:content:executeOracle')).click
    find(:css, ta('EC:content:executeOracle', "div.at-catalog-item-btn-databasedeploymenttooracle")).click
    # find(:css, "div.at-catalog-item-btn-databasedeploymenttooracle").click

    sleep 2

    # find(ta('EC:picker:content:appVersion')).set('ololo')
    # find(ta('EC:content:appVersion')).set('ololo')
    find(:xpath, ta('EC:content:appVersion', "(//input[@class='Form__input at-react-form-txt-input'])[2]")).set('ololo')
    # find(:xpath, "(//input[@class='Form__input at-react-form-txt-input'])[2]").set('ololo')

    # find(ta('EC:picker:content:appName')).set('123123')
    # find(ta('EC:content:appName')).set('123123')
    find(:xpath, ta('EC:content:appName', "(//input[@class='Form__input at-react-form-txt-input'])[1]")).set('123123')
    # find(:xpath, "(//input[@class='Form__input at-react-form-txt-input'])[1]").set('123123')
    sleep 2

    # find(ta('EC:picker:content:selectProjDrop')).click
    # find(ta('EC:content:selectProjDrop')).click
    find(:xpath, ta('EC:content:selectProjDrop', "(//div[@class='at-select-header-title ec-select-header-title'])[1]")).click
    # find(:xpath, "(//div[@class='at-select-header-title ec-select-header-title'])[1]").click
    sleep 2

    # find(ta('EC:picker:content:setProj')).set('Electric Cloud')
    # find(ta('EC:content:setProj')).set('Electric Cloud')
    find(:xpath, ta('EC:content:setProj', "(//input[@class='sds-input search-collapsable__search-input at-search-collapsable-input'])[2]")).set('Electric Cloud')
    # find(:xpath, "(//input[@class='sds-input search-collapsable__search-input at-search-collapsable-input'])[2]").set('Electric Cloud')
    sleep 2

    # find(ta('EC:picker:content:selectSearchProj')).click
    # find(ta('EC:content:selectSearchProj')).click
    find(:css, ta('EC:content:selectSearchProj', "div.at-project-select-item-picker-1")).click
    # find(:css, "div.at-project-select-item-picker-1").click

    # find(ta('EC:picker:content:closeBreadcrumb')).click
    # find(ta('EC:content:closeBreadcrumb')).click
    find(:css, ta('EC:content:closeBreadcrumb', "div.at-breadcrumb--first-btn")).click
    # find(:css, "div.at-breadcrumb--first-btn").click

    # find(ta('EC:picker:content:importDockerComposeFile')).click
    # find(ta('EC:content:importDockerComposeFile')).click
    find(:css, ta('EC:content:importDockerComposeFile', "div.at-catalog-item-btn-importdockercomposefile")).click
    # find(:css, "div.at-catalog-item-btn-importdockercomposefilen").click

    # find(ta('EC:picker:content:dockerContent')).set('lolololoolo')
    # find(ta('EC:content:dockerContent')).set('lolololoolo')
    find(:css, ta('EC:content:dockerContent', "textarea.at-react-form-textarea")).set('lolololoolo')
    # find(:css, "textarea.at-react-form-textarea").set('lolololoolo')

    # find(ta('EC:picker:content:selectProjDropEnv')).click
    # find(ta('EC:content:selectProjDropEnv')).click
    find(:xpath, ta('EC:content:selectProjDropEnv', "(//div[@class='at-select-header-title ec-select-header-title'])[2]")).click
    # find(:xpath, "(//div[@class='at-select-header-title ec-select-header-title'])[2]").click
    sleep 2

    # find(ta('EC:picker:content:setProjEnv')).set('Electric Cloud')
    # find(ta('EC:content:setProjEnv')).set('Electric Cloud')
    find(:xpath, ta('EC:content:setProjEnv', "(//input[@class='sds-input search-collapsable__search-input at-search-collapsable-input'])[2]")).set('Electric Cloud')
    # find(:xpath, "(//input[@class='sds-input search-collapsable__search-input at-search-collapsable-input'])[2]").set('Electric Cloud')

    sleep 2

    # find(ta('EC:picker:content:selectSearchProjEnv')).click
    # find(ta('EC:content:selectSearchProjEnv')).click
    find(:css, ta('EC:content:selectSearchProjEnv', "div.at-project-select-item-picker-1")).click
    # find(:css, "div.at-project-select-item-picker-1").click

 sleep 3
  end
end
