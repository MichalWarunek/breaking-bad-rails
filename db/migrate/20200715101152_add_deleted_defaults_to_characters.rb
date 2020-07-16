class AddDeletedDefaultsToCharacters < ActiveRecord::Migration[6.0]
  def change
        change_column_null :characters, :deleted, false, default: false
        change_column_default :characters, :deleted, false
  end
end
