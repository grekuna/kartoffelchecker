class AddSorte1toUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sorte1, :string
  end
end
