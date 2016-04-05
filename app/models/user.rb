class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :sid, length: { is: 10 }
  validates :name, presence: true, length: { maximum: 50 }
  validates :school_class, presence: true, length: { maximum: 100 }
end
