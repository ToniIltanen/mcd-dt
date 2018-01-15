class AddDisplaynameToUnit < ActiveRecord::Migration[5.1]
  def change
    add_column :units, :displayname, :string
  end
end
