class User < ActiveRecord::Base
  default_scope -> { order "id ASC" }
  has_many :books, -> { order "last_borrowed_at ASC" }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_format_of :sid, with: /\A\d{10}\z/
  validates :name, presence: true, length: { maximum: 50 }
  validates :school_class, presence: true, length: { maximum: 100 }
end
