require 'rails_helper'

describe View, type: :model do
  context "validations" do
    context 'invalid' do
      it "require url be set" do
        view = FactoryGirl.build(:view, url: nil)
        expect(view).to have(1).error_on(:url)
      end

      it "require visited_at be set" do
        view = FactoryGirl.build(:view, visited_at: nil)
        expect(view).to have(1).error_on(:visited_at)
      end
    end
  end
end