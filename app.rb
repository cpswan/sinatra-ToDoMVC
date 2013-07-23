require 'rubygems'
require 'sinatra'
require 'sinatra/contrib/all'
require 'data_mapper'

# old SQLite line
# DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/recall.db")

DataMapper.setup(:default, 'mysql://root:pa55Word@localhost/todomvc')

class Note
	include DataMapper::Resource

	property :id, Serial
	property :content, Text, :required => true
	property :complete, Boolean, :required => true, :default => false
	property :created_at, DateTime
	property :updated_at, DateTime
end

#DataMapper.finalize.auto_upgrade!


get '/' do
  erb :'static/home'
end

get '/about' do
	erb :'static/about'
end

get '/todos' do
	@notes = Note.all :order => :id.desc
	@title = "All Notes"
	erb :'static/to_dos'
end

post '/' do
	n = Note.new
	n.content = params[:content]
	n.created_at = Time.now
	n.updated_at = Time.now
	n.save
  redirect '/todos'
end

delete '/:id' do
	n = Note.get(params[:id].to_i)
  n.destroy
	redirect '/todos'
end

