class CreateDayparts < ActiveRecord::Migration[5.1]
  def change
    create_table :dayparts do |t|
      t.string :name

      t.timestamps
    end
  end
end
