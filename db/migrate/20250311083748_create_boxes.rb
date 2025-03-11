class CreateBoxes < ActiveRecord::Migration[8.0]
  def change
    create_table :boxes do |t|
      t.string :label

      t.timestamps
    end
  end
end
