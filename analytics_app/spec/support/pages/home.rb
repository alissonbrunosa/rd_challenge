class Home < SitePrism::Page
  set_url "/"

  element :visitor_count, "#visitor_count"
  element :views_count, "#views_count"
end