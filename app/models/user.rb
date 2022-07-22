class User < ApplicationRecord
  # Received-Follower
  has_many :received_followers, foreign_key: :followed_id, class_name: "Follow"
  has_many :followers, through: :received_followers, source: :follower 

  # Given-Follower
  has_many :given_follower, foreign_key: :follower_id, class_name: "Follow"
  has_many :followed_user, through: :given_follower, source: :followed

end
