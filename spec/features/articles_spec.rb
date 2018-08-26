# frozen_string_literal: true

require 'rails_helper'

describe 'Admin- Articles', type: :feature do
  before do
    se_connecter_comme_admin
    3.times do |n|
      Article.create(title: "doudou-#{n}", summerize: 'lorem lorem', link: 'google.fr')
    end
  end

  scenario 'Display all Article' do
    click_on 'Articles'
    expect(page).to have_content "doudou-1"
    expect(page).to have_content "lorem"
    expect(page).to have_content "google.fr"
  end

  scenario 'Create new Article' do
    visit new_admin_article_path
    expect do
      fill_in :article_title, with: "In love with a capybara"
      fill_in :article_summerize, with: 'Lorem ipsum'
      attach_file :article_image, "#{Rails.root}/app/assets/images/cake.png"
      fill_in :article_link, with: 'lorem.fr'
      click_on 'Create Article'
    end.to change { Article.count }
    expect(page).to have_content 'lorem.fr'
    expect(page).to have_content "In love with a capybara"
  end
end
