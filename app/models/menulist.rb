class Menulist < ApplicationRecord
  belongs_to :user
  has_many :menuitems
  validates :user_id, presence: true
  validates :category, presence: true
end
