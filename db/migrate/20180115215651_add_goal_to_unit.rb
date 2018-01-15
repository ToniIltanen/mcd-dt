class AddGoalToUnit < ActiveRecord::Migration[5.1]
  def change
    add_column :units, :goal, :number
  end
end
