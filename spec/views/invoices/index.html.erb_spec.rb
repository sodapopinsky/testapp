require 'spec_helper'

describe "invoices/index" do
  before(:each) do
    assign(:invoices, [
      stub_model(Invoice,
        :number => "Number",
        :vendor_name => "Vendor Name"
      ),
      stub_model(Invoice,
        :number => "Number",
        :vendor_name => "Vendor Name"
      )
    ])
  end

  it "renders a list of invoices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Vendor Name".to_s, :count => 2
  end
end
