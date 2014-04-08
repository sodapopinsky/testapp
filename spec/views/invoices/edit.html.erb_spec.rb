require 'spec_helper'

describe "invoices/edit" do
  before(:each) do
    @invoice = assign(:invoice, stub_model(Invoice,
      :number => "MyString",
      :vendor_name => "MyString"
    ))
  end

  it "renders the edit invoice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invoices_path(@invoice), :method => "post" do
      assert_select "input#invoice_number", :name => "invoice[number]"
      assert_select "input#invoice_vendor_name", :name => "invoice[vendor_name]"
    end
  end
end
