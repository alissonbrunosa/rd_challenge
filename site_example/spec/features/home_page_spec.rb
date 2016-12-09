require 'rails_helper'

describe "Home Page", type: :feature do
  describe "GET /" do
    let(:home) { HomePage.new }
    let(:product) { build(:product) }

    it "check new product is on page", js: true do
      product.save
      home.load
      expect(home).to have_content(product.name.upcase)
    end
  end
end