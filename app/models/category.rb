class Category < ActiveRecord::Base
  has_many :books
  validates :category, presence: true, length: { maximum: 10 }
end
