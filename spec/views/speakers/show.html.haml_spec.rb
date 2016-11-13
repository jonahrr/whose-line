require 'rails_helper'

RSpec.describe "speakers/show", type: :view do
  before(:each) do
    @speaker = assign(:speaker, Speaker.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
