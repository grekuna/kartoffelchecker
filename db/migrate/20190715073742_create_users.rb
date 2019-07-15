class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.integer :kartoffel1
      t.integer :kartoffel2
      t.integer :tipp1
      t.integer :tipp2

      t.timestamps
    end
  end
end
