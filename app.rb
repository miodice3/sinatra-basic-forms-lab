require_relative 'config/environment'
require_relative "models/puppy.rb"
require 'pry'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
#        binding.pry
        #@puppy = Puppy.new(params[:user_text])
        #binding.pry
        erb :create_puppy
    end

    post '/puppy' do
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])
        # @puppy = Puppy.new(params[:user_text])
        erb :display_puppy
    end

end
