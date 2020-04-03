class CreateGoodImages < ActiveRecord::Migration[5.2]
  def change
    create_table :good_images do |t|
      t.string :image,    null: false

      t.integer :good_id, null:false, foreign_key: true

      t.timestamps
    end
  end
end
