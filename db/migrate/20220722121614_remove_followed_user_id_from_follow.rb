class RemoveFollowedUserIdFromFollow < ActiveRecord::Migration[6.1]
  def change
    remove_column :follows, :followed_user_id, :integer
  end
end
