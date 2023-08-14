class Customer < ApplicationRecord
  validates :name, presence: true
  has_many :products
  after_touch :log_when_products_or_customer_touched

  after_initialize do |customer|
    puts "You have initialized an object!"
  end

  after_find do |customer|
    puts "You have found an object!"
  end

  after_touch do |customer|
    puts "You have touched an object"
  end

  private
  def log_when_products_or_customer_touched
    puts 'Products/Customer was touched'
  end


end
