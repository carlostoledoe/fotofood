class RemovePostRefToTags < ActiveRecord::Migration[7.0]
  def change
    remove_reference :tags, :post, index: true, foreign_key: true
  end
end
