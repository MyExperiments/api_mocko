user = User.where(
  email: 'sufinsha@gmail.com',
  name: 'sufinsha'
).first_or_create(password: 'apimocko@123')


[{title: 'App1'}, {title: 'App2'}, {title: 'App3'}].each do |app|
  user.apps.where(app).first_or_create
end