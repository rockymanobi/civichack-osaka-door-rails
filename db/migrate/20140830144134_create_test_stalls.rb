class CreateTestStalls < ActiveRecord::Migration
  def change
    create_table :test_stalls do |t|
      t.string :name
      t.string :uuid
      t.integer :status

      t.timestamps
    end
  end
end
