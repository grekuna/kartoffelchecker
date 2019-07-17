class CreateSortens < ActiveRecord::Migration[5.2]
  def change
    create_table :sortens do |t|
      t.integer :code
      t.string :sorte

      t.timestamps
    end
  end
end
