class Buylist < ApplicationRecord
  belongs_to :user
  has_many :buyitems, dependent: :destroy
  validates :user_id, presence: true
  validates :category, presence: true
end
