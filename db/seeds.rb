User.where(
  email: 'sufinsha@gmail.com',
  name: 'sufinsha'
).first_or_create(password: 'apimocko@123')