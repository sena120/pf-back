class Menuitem < ApplicationRecord
  belongs_to :menulist
  serialize :foods
end
