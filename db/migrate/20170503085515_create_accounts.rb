class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
    	t.text :title
    	t.integer :amount
    	t.date :date
      t.timestamps
    end
  end
end
