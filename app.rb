# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  enable :sessions, :method_override

  get '/' do
    'Hello World'
  end

  get '/bookmarks' do
    # Bookmark.add('feature.com')
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  post '/add' do
    Bookmark.add(params[:title], params[:url])
    redirect '/bookmarks'
  end

  get '/delete' do
    @bookmarks = Bookmark.all
    erb :destroy
  end

  post '/delete_bookmarks' do
    Bookmark.delete(params[:title])
    @bookmarks = Bookmark.all
    redirect '/bookmarks'
  end

  run! if app_file == $PROGRAM_NAME
end
