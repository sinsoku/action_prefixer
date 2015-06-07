require 'spec_helper'

feature 'Users' do
  scenario 'rendering index page' do
    visit '/users'

    expect(page).to have_content 'Users#index'
    expect(page).to have_content 'Hello, World'
  end

  scenario 'rendering show page' do
    visit '/users/1'

    expect(page).to have_content 'Users#show'
    expect(page).to have_content 'Hello, World'
  end
end
