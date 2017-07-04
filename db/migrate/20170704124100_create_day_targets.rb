class CreateDayTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :day_targets do |t|
      t.date :day
      t.monetize :value
      t.references :target, foreign_key: true

      t.timestamps
    end
  end
end
