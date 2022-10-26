class CreatePostsTagsTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :posts, :tags
  end
end
