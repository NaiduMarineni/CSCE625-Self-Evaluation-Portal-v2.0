class EditNumOfAttempts < ActiveRecord::Migration[5.1]
  def up
    change_column :problems, :num_of_attempts, :bigint, default: 0
  end
  def down
    change_column :problems, :num_of_attempts, :bigint
  end

end
