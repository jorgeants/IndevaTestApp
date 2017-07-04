class CreateTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.monetize :value

      t.timestamps
    end
  end
end
