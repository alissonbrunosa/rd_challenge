module VisitorsHelper
  def gravatar(email)
    gravatar_id = Digest::MD5.hexdigest(email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=55"
  end
end
