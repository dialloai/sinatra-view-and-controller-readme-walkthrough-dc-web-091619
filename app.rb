require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  # post '/reverse' do
  #   erb :reversed
  # end

  get '/friends' do
    # Write your code here!
    @friends= @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
  end

    # post '/reverse' do
    #   puts params[:name]
    #   erb :reversed
    # end

    # post '/reverse' do
    #   original_string = params["string"]
    #   reversed_string = original_string.reverse
     
    #   erb :reversed
    # end

    post '/reverse' do
      original_string = params["string"]
      @reversed_string = original_string.reverse
     
      erb :reversed
    end
  
end