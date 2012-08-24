# server.rb
require 'sinatra'
require 'haml'
require 'sass'
require 'yaml'

# Load up the config file
Settings = YAML.load_file("config.yml") unless defined? CONFIG

# SASS it up.
get '/styles.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :styles
end

get '/?:channel?' do
	@channel = params[:channel]
	@publish = Settings['publish']
	@subscribe = Settings['subscribe']
  haml :index
end