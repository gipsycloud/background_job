class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.string :product_type
      t.string :location
      t.string :status, default: 'active'
      t.string :tags
      t.string :image_url
      t.timestamps
    end
  end
end
