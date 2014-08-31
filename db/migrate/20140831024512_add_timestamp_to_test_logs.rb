class AddTimestampToTestLogs < ActiveRecord::Migration
  def change
    add_column :test_logs, :changed_at, :datetime
  end
end
