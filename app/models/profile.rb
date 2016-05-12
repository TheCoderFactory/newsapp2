class Profile < ActiveRecord::Base
  belongs_to :user
  
  validates :username, presence: true
  validates :username, uniqueness: true
  
  extend FriendlyId
  friendly_id :username, use: :slugged
end
