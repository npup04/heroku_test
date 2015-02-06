json.array!(@heroku_test_apps) do |heroku_test_app|
  json.extract! heroku_test_app, :id, :name
  json.url heroku_test_app_url(heroku_test_app, format: :json)
end
