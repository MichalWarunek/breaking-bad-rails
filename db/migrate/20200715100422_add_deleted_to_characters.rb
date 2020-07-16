class AddDeletedToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :deleted, :boolean
  end
end
