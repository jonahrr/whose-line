require 'rails_helper'

RSpec.describe "list_entries/new", type: :view do
  before(:each) do
    assign(:list_entry, ListEntry.new(
      :speaker_id => 1,
      :list_id => 1
    ))
  end

  it "renders new list_entry form" do
    render

    assert_select "form[action=?][method=?]", list_entries_path, "post" do

      assert_select "input#list_entry_speaker_id[name=?]", "list_entry[speaker_id]"

      assert_select "input#list_entry_list_id[name=?]", "list_entry[list_id]"
    end
  end
end
