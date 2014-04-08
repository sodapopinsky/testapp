class CreateInvoices < ActiveRecord::Migration
  def change
  	drop_table :invoices
    create_table :invoices do |t|
      t.string :number
      t.string :vendor_name

      t.timestamps
    end
  end
end
