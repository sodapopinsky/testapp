require 'spec_helper'

describe "invoices/new" do
  before(:each) do
    assign(:invoice, stub_model(Invoice,
      :number => "MyString",
      :vendor_name => "MyString"
    ).as_new_record)
  end

  it "renders new invoice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invoices_path, :method => "post" do
      assert_select "input#invoice_number", :name => "invoice[number]"
      assert_select "input#invoice_vendor_name", :name => "invoice[vendor_name]"
    end
  end
end
