require 'rails_helper'

RSpec.describe "list_entries/index", type: :view do
  before(:each) do
    assign(:list_entries, [
      ListEntry.create!(
        :speaker_id => 2,
        :list_id => 3
      ),
      ListEntry.create!(
        :speaker_id => 2,
        :list_id => 3
      )
    ])
  end

  it "renders a list of list_entries" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
