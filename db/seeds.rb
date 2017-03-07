user = User.where(
  email: 'sufinsha@gmail.com',
  name: 'sufinsha'
).first_or_create(password: 'apimocko@123')

[{
  title: 'Api 1',
  api_response: { success: true }.to_json,
  app: "App 1"
}].each do |mock_api|
  user.mock_apis.where(mock_api).first_or_create
end