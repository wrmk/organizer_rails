Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:4200', 'https://ng-project.herokuapp.com:443/'

    resource '*',
      headers: :any,
      methods: [:get,:post,:patch]
  end
end