class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(title: params[:tweet][:title], content: params[:tweet][:content])
    redirect_to tweets_path
  end
end
