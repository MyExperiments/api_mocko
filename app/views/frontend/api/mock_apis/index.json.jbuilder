json.apis @apis do |api|
  json.id api.id
  json.title api.title
  json.api_response api.api_response
  json.app api.app
  json.api_token api.api_token
  json.end_point api_url(api)
end