class Book < ActiveRecord::Base
  belongs_to :category
  validates :isbn, length: { is: 13 }
  validates :title, presence: true, length: { maximum: 100 }
  validates :author, presence: true, length: { maximum: 100 }
  validates :publisher, presence: true, length: { maximum: 100 }
  validates :language, presence: true, length: { maximum: 10 }
end
