require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/goodbye/:name" do
    @user_name = params[:name]
    #binding.pry
      "Goodbye, #{@user_name}."
  end

  # Code your final two routes here:
  get '/multiply/:num1/:num2' do
    product = params[:num1].to_i * params[:num2].to_i
    "#{product}"
  end
end
