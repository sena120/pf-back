class User < ApplicationRecord
  before_save { email.downcase! }
  validates :name,  presence: true, length: { maximum: 20 }
  validates :email, presence: true, length: { maximum: 255 },
                       uniqueness: true
end
