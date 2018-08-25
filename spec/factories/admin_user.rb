# frozen_string_literal: true

FactoryBot.define do
  factory :admin_user do
    email
    password 'password'
  end

  sequence :email do |n|
    "something#{n}@gmail.com"
  end
end
