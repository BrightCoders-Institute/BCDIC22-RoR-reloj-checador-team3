class CreateAssitances < ActiveRecord::Migration[7.0]
  def change
    create_table :assitances do |t|
      t.integer :assit
      t.integer :absence
      t.time :checkin
      t.time :checkout
      t.belongs_to :front_views, foreign_key: true

      t.timestamps
    end
  end
end
