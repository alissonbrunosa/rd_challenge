class ContactPage < SitePrism::Page
  set_url "/contact"

  element :name_field,    "#contact_name"
  element :phone_field,   "#contact_phone"
  element :email_field,   "#contact_email"
  element :message_field, "#contact_message"
  element :form_button,   "#contact_submit"
end