require 'sinatra'

get '/' do
  @contador = params[:item]
  @contador = 0 if @contador == nil
  erb :index3
end

post '/count' do
  @contador = params[:count].to_i + 1
  redirect "/?item=#{@contador}"
end
