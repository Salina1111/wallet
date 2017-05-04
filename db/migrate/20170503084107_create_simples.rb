class CreateSimples < ActiveRecord::Migration[5.0]
  def change
    create_table :simples do |t|
    	t.date :time
      t.string :account
      t.integer :amount

      t.timestamps
    end
  end
end
