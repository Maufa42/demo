class AddFollowedIdToFollow < ActiveRecord::Migration[6.1]
  def change
    add_column :follows, :followed_id, :integer
  end
end
