class AddSorte2toUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sorte2, :string
  end
end
