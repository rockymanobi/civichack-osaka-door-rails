class CreateTestLogs < ActiveRecord::Migration
  def change
    create_table :test_logs do |t|
      t.references :test_stall, index: true
      t.integer :status

      t.timestamps
    end
  end
end
