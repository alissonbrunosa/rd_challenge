Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '/visitors.json',
      headers: :any,
      methods: [:post, :options]
    resource '/views.json',
      headers: :any,
      methods: [:post, :options]
  end
end