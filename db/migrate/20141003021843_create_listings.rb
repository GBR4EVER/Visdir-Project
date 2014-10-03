class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.string :low_budget
      t.string :high_budget
      t.string :location
      t.string :category
      t.string :image
      t.string :title

      t.timestamps
    end
  end
end
