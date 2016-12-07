json.email @req.visitor.email
json.views @req.visitor.views do |view|
  json.id view.id
  json.url view.url
  json.visited_at view.visited_at
end