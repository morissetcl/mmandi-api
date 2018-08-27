# frozen_string_literal: true

require 'rails_helper'

describe 'Admin- Gemstories', type: :feature do
  before do
    se_connecter_comme_admin
    3.times do |n|
      Gemstory.create(title: "gem-#{n}", summerize: 'lorem lorem', link: 'google.fr')
    end
  end

  scenario 'Display all Article' do
    click_on 'Gemstories'
    expect(page).to have_content "gem-1"
    expect(page).to have_content "lorem"
    expect(page).to have_content "google.fr"
  end

  scenario 'Create new Gems' do
    visit new_admin_gemstory_path
    expect do
      fill_in :gemstory_title, with: "In love with Rspec"
      fill_in :gemstory_summerize, with: 'Lorem ipsum'
      attach_file :gemstory_image, "#{Rails.root}/app/assets/images/cake.png"
      fill_in :gemstory_link, with: 'github.com'
      click_on 'Create Gemstory'
    end.to change { Gemstory.count }
    expect(page).to have_content 'github.com'
    expect(page).to have_content "In love with Rspec"
  end
end
