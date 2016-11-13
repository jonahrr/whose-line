require 'rails_helper'

RSpec.describe "speakers/new", type: :view do
  before(:each) do
    assign(:speaker, Speaker.new(
      :name => "MyString"
    ))
  end

  it "renders new speaker form" do
    render

    assert_select "form[action=?][method=?]", speakers_path, "post" do

      assert_select "input#speaker_name[name=?]", "speaker[name]"
    end
  end
end
