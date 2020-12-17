# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  enable :sessions, :method_override

  get '/' do
    'Hello World'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    Bookmark.create(title: params[:title], url: params[:url])
    @bookmarks = Bookmark.all
    p @bookmarks.first.id
    redirect '/bookmarks'
  end

  get '/delete' do
    @bookmarks = Bookmark.all
    erb :destroy
  end

  post '/delete_bookmarks' do
    Bookmark.delete(params[:id])
    @bookmarks = Bookmark.all
    redirect '/bookmarks'
  end

  run! if app_file == $PROGRAM_NAME
end
