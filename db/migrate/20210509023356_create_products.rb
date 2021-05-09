class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name,           default: ''
      t.text :description,      default: ''
      t.decimal :price,         default: 0.0
      t.boolean :collectibles,  default: false
      t.boolean :pictures,      default: false
      t.boolean :art,           default: false
      t.boolean :sports,        default: false
      t.boolean :available,     default: true

      t.timestamps
    end
  end
end
