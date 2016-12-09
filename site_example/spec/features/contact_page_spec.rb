require 'rails_helper'

describe "Contact Page", type: :feature do
  describe "GET /contact" do
    let(:page) { ContactPage.new }
    let(:contact) { build(:contact) }

    it "should be displayed ", js: true do
      page.load
      expect(page).to be_displayed
    end

    it "shows new contact succefully message" do
      page.load

      page.name_field.set     contact.name
      page.phone_field.set    contact.phone
      page.email_field.set    contact.email
      page.message_field.set  contact.message

      page.form_button.click

      expect(Contact.count).to be(1)
      expect(page).to have_content('Contato criado com sucesso!')
    end
  end
end