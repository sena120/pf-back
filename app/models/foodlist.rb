class Foodlist < ApplicationRecord
  belongs_to :user
  has_many :fooditems, dependent: :destroy
  validates :user_id, presence: true
  validates :category, presence: true
end
