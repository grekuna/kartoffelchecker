class AddSorte11toUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sorte11, :string
  end
end
