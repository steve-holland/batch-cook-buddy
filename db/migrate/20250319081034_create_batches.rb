class CreateBatches < ActiveRecord::Migration[8.0]
  def change
    create_table :batches do |t|
      t.belongs_to :meal, null: false, foreign_key: true
      t.timestamps
    end
  end
end
