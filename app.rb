require 'sinatra'

get '/' do
    "Hack your life!"
end

get '/likelion' do
    "Likelion"
end

get '/likelion/:id' do
    "Hello, Likelion, #{params[:id]}"
end

get '/cube/:num' do
    num = params[:num].to_i
    (num ** 3).to_s
end

=begin
get '/view' do
    send_file 'index.html'
end
=end

get '/view' do
    erb :index
end