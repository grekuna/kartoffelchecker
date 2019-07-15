class AddSorte22toUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sorte22, :string
  end
end
