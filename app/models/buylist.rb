class Buylist < ApplicationRecord
  belongs_to :user
  has_many :buyitems
end
