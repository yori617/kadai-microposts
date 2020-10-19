class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: {maximum: 255 }
  
  #has_many :users
  
  has_many :favorites, dependent: :destroy#書かなくてもOK
  has_many :likes, through: :favorites, source: :users
    
end