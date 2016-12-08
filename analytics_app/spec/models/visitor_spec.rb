require 'rails_helper'

describe Visitor, type: :model do
  context "validations" do
    context 'invalid' do
      it "require email be set" do
        visitor = FactoryGirl.build(:visitor, email: nil)
        expect(visitor).to have(1).error_on(:email)
      end
    end
  end
end