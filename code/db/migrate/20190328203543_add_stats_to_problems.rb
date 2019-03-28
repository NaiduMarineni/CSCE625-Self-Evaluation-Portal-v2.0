class AddStatsToProblems < ActiveRecord::Migration[5.1]
  def change
    add_column :problems, :num_of_attempts, :bigint #Add entry to track number of times the problem was attempted
    add_column :problems, :correct_attempts, :bigint #Add entry to record number of correct attempts
  end
end
