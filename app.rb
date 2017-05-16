require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    phrase = PigLatinizer.new
    @conversion = phrase.to_pig_latin(params[:user_phrase])
    erb :latin
  end
end
