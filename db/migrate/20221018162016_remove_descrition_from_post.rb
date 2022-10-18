class RemoveDescritionFromPost < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :descrition, :string
  end
end
