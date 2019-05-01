class AddImgToProblems < ActiveRecord::Migration[5.1]
  def change
    add_column :problems, :img, :string
  end
end
