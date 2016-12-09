require 'rails_helper'

describe Contact, type: :model do
  context "validations" do
    context 'when not valid' do
      it "require name be set" do
        contact = build(:contact, name: nil)
        expect(contact).to have(1).error_on(:name)
      end
      it "require email be set" do
        contact = build(:contact, email: nil)
        expect(contact).to have(1).error_on(:email)
      end
      it "require message be set" do
        contact = build(:contact, message: nil)
        expect(contact).to have(1).error_on(:message)
      end
    end
    context 'when valid' do
      it 'should create new contact' do 
        contact = create(:contact)
        expect(Contact.all).to include(contact)
      end
    end
  end
end