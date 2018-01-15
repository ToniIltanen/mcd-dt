class AddTimeToDtinfo < ActiveRecord::Migration[5.1]
  def change
    add_column :dtinfos, :minutes, :integer
    add_column :dtinfos, :seconds, :integer
  end
end
