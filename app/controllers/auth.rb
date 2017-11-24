class SlowFoodApp
  get '/' do
    erb :welcome
  end

  get '/login' do

  end

  get '/signup' do
    erb :signup
  end

  get '/users' do
    @users = User.all
    erb :users_index
  end

  post '/register' do
    user_params = params['user']
    user = User.new(user_params)
    if user.save
      redirect '/', notice: "Thank you for signing up #{user.name}"
    else
      redirect '/signup', notice: "You need to add a name"      
    end

  end
end
