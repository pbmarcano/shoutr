class CreateFollowingRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :following_relationships do |t|
      t.references :follower,       null: false
      t.references :followed_user,  null: false 

      t.timestamps
    end
    # add_index :users, [:follower_id, :followed_user_id], unique: true, name: 'followed_users'
  end
end
