require 'rails_helper'

describe "Dashboard", type: :feature do
  describe "GET /" do
    let(:home) { Home.new }
    let(:resquest_visitor) { FactoryGirl.build(:request_visitor) }

    it "check visitor", js: true do
      resquest_visitor.save
      home.load
      expect(home.visitor_count.text).to be == "1"
    end

    it "check views", js: true do
      resquest_visitor.save
      home.load
      expect(home.views_count.text).to be == "3"
    end
  end
end