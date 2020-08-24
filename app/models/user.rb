class User < ApplicationRecord
  # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :book
    has_many :book_comment
    has_many :favorites, dependent: :destroy
    attachment :profile_image
    validates :name, presence: true, uniqueness:true, length:{minimum:2,maximum:20 }
    validates :introduction, length:{maximum:50}
end
