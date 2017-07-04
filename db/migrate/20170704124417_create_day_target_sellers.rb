class CreateDayTargetSellers < ActiveRecord::Migration[5.1]
  def change
    create_table :day_target_sellers do |t|
      t.monetize :value
      t.references :day_target, foreign_key: true
      t.references :seller, foreign_key: true

      t.timestamps
    end
  end
end
