require 'spec_helper'

feature 'Manage Crud' do
  scenario 'User can create and view list of languages' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a language'
    fill_in 'Name of language', with: 'French'
    fill_in 'Country spoken', with: 'France'
    click_on 'Create language'
    expect(page).to have_content 'French'
    expect(page).to have_content 'France'
  end
end