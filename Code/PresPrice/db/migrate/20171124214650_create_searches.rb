class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :medicine
      t.decimal :walmart_price
      t.decimal :walgreens_price
      t.decimal :cvs_price
      t.decimal :riteaid_price
      t.string :generic

      t.timestamps
    end
  end
end
