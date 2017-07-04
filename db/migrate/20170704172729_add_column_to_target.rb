class AddColumnToTarget < ActiveRecord::Migration[5.1]
  def change
    add_reference :targets, :store, foreign_key: true
  end
end
