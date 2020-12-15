# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello World'
  end

  get '/bookmarks' do
    # Bookmark.add('feature.com')
    @bookmark = Bookmark.all
    erb(:bookmarks)
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  post '/add' do
    Bookmark.add(params[:bookmark_name])
    redirect '/bookmarks'
  end

  run! if app_file == $PROGRAM_NAME
end
