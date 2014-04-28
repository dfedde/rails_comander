#!/usr/local/bin/ruby

require "sinatra"

rspec_cmd = 'rspec --format json'
get "/rspec" do
  content_type :json
  `#{rspec_cmd}`
end

get "/rspec/:file" do |file|
  content_type :json
  `#{rspec_cmd} spec/#{file}`
end

get "/rspec/:file/:number" do |file, number|
  content_type :json
  `#{rspec_cmd} spec/#{file} --line_number #{number}`
end

get "/" do 
  # this endpont send the web app
  send_file '../files/index.html'
end
