require 'sinatra'
require 'slack-ruby-client'
require 'dotenv/load'

def login(slack_username)
  Slack.configure do |config|
    config.token = ENV[slack_username.upcase]
  end
  Slack::Web::Client.new
end

def set_presence(presence)
  if ENV[params['name'].upcase].nil?
    halt 400, 'You need to add your personal Slack OAuth token to the Photonmodoro app.'
  end
  slack_client = login(params['name'])
  response = slack_client.users_setPresence(presence: presence, name: params['name'])
  response.message.to_s
end

post '/name/:name/away' do
  set_presence(:away)
end

post '/name/:name/available' do
  set_presence(:auto)
end

get '/' do
  'Oh hai!'
end