class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :paid
      t.date :date_payment
      t.belongs_to :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
