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
end
