class CreatePledges < ActiveRecord::Migration[6.0]
  def change
    create_table :pledges do |t|
      t.string :firstname
      t.string :lastname
      t.decimal :amount
      t.date :date

      t.timestamps
    end
  end
end
