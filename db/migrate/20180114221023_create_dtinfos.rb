class CreateDtinfos < ActiveRecord::Migration[5.1]
  def change
    create_table :dtinfos do |t|
      t.references :unit, foreign_key: true
      t.references :daypart, foreign_key: true
      t.date :day

      t.timestamps
    end
  end
end
