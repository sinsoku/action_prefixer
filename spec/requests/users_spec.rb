require 'spec_helper'

feature 'Users' do
  scenario 'rendering index page' do
    visit '/users'

    # common views in controller
    expect(page).to have_content 'Header'
    expect(page).to have_content 'Footer'

    # a unique view in action
    expect(page).to have_content 'Blog'
  end

  scenario 'rendering show page' do
    visit '/users/1'

    # share views in controller
    expect(page).to have_content 'Header'
    expect(page).to have_content 'Footer'

    # a unique view in action
    expect(page).to have_content 'Tag'
  end
end
