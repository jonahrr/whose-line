require 'rails_helper'

RSpec.describe "list_entries/show", type: :view do
  before(:each) do
    @list_entry = assign(:list_entry, ListEntry.create!(
      :speaker_id => 2,
      :list_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
