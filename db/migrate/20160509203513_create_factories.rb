class CreateFactories < ActiveRecord::Migration
  def change
    create_table :factories do |t|
      t.string :name
      t.integer :lower_limit
      t.integer :upper_limit
      t.integer :node_quantity
      t.integer :random_list, array: true, default: []

      t.timestamps null: false
    end
  end
end
