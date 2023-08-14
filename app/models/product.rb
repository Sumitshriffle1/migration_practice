class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
  before_validation :normalize_name, on: :create

  before_save :discription, if: :discription?
  puts "done"

  belongs_to :customer, touch: true
  after_touch do
    puts 'An Customer was touched'
  end

  private
    def normalize_name
      self.name = name.downcase
      puts 'check'
    end
end
