require 'rails_helper'

describe RequestVisitor, type: :model do
  context "validations" do
    context 'when not valid' do
      it "require email be set" do
        request_visitor = FactoryGirl.build(:request_visitor, email: nil)
        expect(request_visitor).to have(1).error_on(:email)
      end

      it "require views be set" do
        request_visitor = FactoryGirl.build(:request_visitor, views: nil)
        expect(request_visitor).to have(1).error_on(:views)
      end
    end
  end
  context "creation" do
    it 'should create a new visitor' do
      request_visitor = build(:request_visitor)
      request_visitor.save
      expect(Visitor.last).to be == request_visitor.visitor
      expect(request_visitor.views).to have(3).views
    end

    it 'should create a new visitor with his views' do
      request_visitor = build(:request_visitor)
      request_visitor.save
      expect(request_visitor.visitor.views).to include(View.last)
      expect(request_visitor.visitor.views).to have(3).views
    end
  end 
end