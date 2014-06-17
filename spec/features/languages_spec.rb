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

  scenario 'User can edit and update list of languages' do
    visit '/'
    click_on 'Add a language'
    fill_in 'Name of language', with: 'French'
    fill_in 'Country spoken', with: 'France'
    click_on 'Create language'
    expect(page).to have_content 'French'
    expect(page).to have_content 'France'
    click_on 'French'
    expect(page).to have_content 'French'
    expect(page).to have_content 'France'
    click_on 'Edit language'
    fill_in 'Name of language', with: 'Portuguese'
    fill_in 'Country spoken', with: 'Brazil'
    click_on 'Update language'
    expect(page).to have_no_content 'French'
    expect(page).to have_no_content 'France'
    expect(page).to have_content 'Portuguese'
    expect(page).to have_content 'Brazil'
  end

  scenario 'User can delete languages from a list' do
    visit '/'
    click_on 'Add a language'
    fill_in 'Name of language', with: 'French'
    fill_in 'Country spoken', with: 'France'
    click_on 'Create language'
    click_on 'French'
    expect(page).to have_content 'French'
    expect(page).to have_content 'France'
    click_on 'Delete language'
    expect(page).to have_no_content 'French'
    expect(page).to have_no_content 'France'
  end
end
