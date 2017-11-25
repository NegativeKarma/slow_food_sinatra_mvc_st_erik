class SlowFoodApp
  get '/' do
    @products = Product.all
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
    end
    if user_params.any? {|k,v| v.empty? }
      redirect '/signup', error: "You need to add a name" if user_params['name'].empty?
      redirect '/signup', error: "You need to add a valid password" if user_params['password'].empty?
    end
    if user_params['password'] != user_params['password_confirmation']
      redirect '/signup', error: "You need to confirm your password"
    end

  end
end
