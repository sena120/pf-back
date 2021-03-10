class User < ApplicationRecord
  has_many :foodlists, dependent: :destroy
  has_many :menulists, dependent: :destroy
  has_many :buylists, dependent: :destroy
  before_save { email.downcase! }
  validates :name,  presence: true, length: { maximum: 20 }
  validates :email, presence: true, length: { maximum: 255 },
                       uniqueness: true
end
