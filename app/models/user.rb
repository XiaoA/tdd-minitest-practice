class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 15 }
  validates :password, presence: true, length: { minimum: 8, maximum: 50 }

  has_many :articles
end
