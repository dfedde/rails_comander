#!/usr/local/bin/ruby

require "sinatra"

get "/rspec" do
  `rspec --format html`
end
