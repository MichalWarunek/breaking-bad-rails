class AddFieldsToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :char_id, :integer
    add_column :characters, :name, :string
    add_column :characters, :birthday, :date
    add_column :characters, :status, :string
    add_column :characters, :nickname, :string
    add_column :characters, :portrayed, :string
    add_column :characters, :occupation, :string
    add_column :characters, :img, :string
    add_column :characters, :appearance, :string
    add_column :characters, :better_call_saul_appearance, :string
  end
end
