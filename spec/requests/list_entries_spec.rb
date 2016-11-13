require 'rails_helper'

RSpec.describe "ListEntries", type: :request do
  describe "GET /list_entries" do
    it "works! (now write some real specs)" do
      get list_entries_path
      expect(response).to have_http_status(200)
    end
  end
end
