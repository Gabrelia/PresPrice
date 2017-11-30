class CreateMedicines < ActiveRecord::Migration[5.0]
  def change
    create_table :medicines do |t|
    	t.string :name
    	t.decimal :walmart_price
    	t.decimal :cvs_price
    	t.decimal :walgreens_price
    	t.decimal :riteaid_price
    	t.string :generic

      t.timestamps
    end
  end
end
