class FixColumnName < ActiveRecord::Migration
  def change
  	 rename_column :invoices, :vendorName, :vendor_name
  end
end
