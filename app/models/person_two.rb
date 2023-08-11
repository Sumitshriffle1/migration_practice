class PersonTwo < ApplicationRecord
  validates :terms_of_service, acceptance: true
end
