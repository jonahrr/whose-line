require 'rails_helper'

RSpec.describe "list_entries/edit", type: :view do
  before(:each) do
    @list_entry = assign(:list_entry, ListEntry.create!(
      :speaker_id => 1,
      :list_id => 1
    ))
  end

  it "renders the edit list_entry form" do
    render

    assert_select "form[action=?][method=?]", list_entry_path(@list_entry), "post" do

      assert_select "input#list_entry_speaker_id[name=?]", "list_entry[speaker_id]"

      assert_select "input#list_entry_list_id[name=?]", "list_entry[list_id]"
    end
  end
end
