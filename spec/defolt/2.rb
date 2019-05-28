require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex



feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example' do
      visit 'https://ectest.trueautomation.io/flow/#applications/9b56aa78-7d4e-11e9-ab53-024662bd8dce'

        sleep 3
        find(ta('EC:picker:login')).set('admin')
        # find(ta('EC:login')).set('admin')
        # find(:xpath, ta('EC:login', "//input[@id='username']")).set('admin')
        # find(:xpath, "//input[@id='username']").set('admin')

        find(ta('EC:picker:pass')).set('changeme')
        # find(ta('EC:pass')).set('changeme')
        # find(:xpath, ta('EC:pass', "//input[@id='password']")).set('changeme')
        # find(:xpath, "//input[@id='password']").set('changeme')

        find(ta('EC:picker:enter')).click
        # find(ta('EC:enter')).click
        # find(:xpath, ta('EC:enter', "//button[text()='Login']")).click
        # find(:xpath, "//button[text()='Login']").click

        sleep 4

        # find(ta('EC:picker:headerNav:sysAdminBtn')).click
        find(ta('EC:headerNav:sysAdminBtn')).click
        # find(:xpath, ta('EC:headerNav:sysAdminBtn', "//span[@class='username']")).click
        # find(:xpath, "//button[@class='username']").click
        sleep 2

        # find(ta('EC:picker:headerNav:logout')).click
        find(ta('EC:headerNav:logout')).click
        # find(:xpath, ta('EC:headerNav:logout', "//span[text()='Logout']")).click
        # find(:xpath, "//span[text()='Logout']").click

        sleep 4

        #
        # find(ta('EC:addComponent')).click
        # find(ta('EC:createNewComponent')).click
        # find(ta('EC:setNewName')).set('ololo')
        # find(ta('EC:nextBtn')).click
        # find(ta('EC:contentLocation')).click
        # find(ta('EC:ecMaven')).click
        # sleep 3
        #
        # find(ta('EC:ConfigurationNameInput')).set('ololo1')
        #
        # find(ta('EC:Artifact:')).set('Artifact:')
  end
end
