module ApplicationHelper
  def active?(controller) 
    return 'active' if controller == controller_name
  end
end
