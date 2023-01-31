class CreateFrontViews < ActiveRecord::Migration[7.0]
  def change
    create_table :front_views do |t|
      t.string :check
      t.belongs_to :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

