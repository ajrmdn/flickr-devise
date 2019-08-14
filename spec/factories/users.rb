require('rails_helper')
# https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md
FactoryBot.define do
  factory :user do
    email {'test@test.com'}
    password {'testpassword'}
    # caption {'lake and wife'}
  end
end
