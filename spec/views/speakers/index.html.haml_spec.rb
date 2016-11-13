require 'rails_helper'

RSpec.describe "speakers/index", type: :view do
  before(:each) do
    assign(:speakers, [
      Speaker.create!(
        :name => "Name"
      ),
      Speaker.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of speakers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
