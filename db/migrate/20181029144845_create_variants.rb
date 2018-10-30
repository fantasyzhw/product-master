class CreateVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :variants do |t|
      t.references :variant, foreign_key: true
      t.string :description
      t.number :price

      t.timestamps
    end
  end
end
