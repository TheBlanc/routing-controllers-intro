class PagesController < ApplicationController
  def welcome
    @header = 'This is the welcome page'
    render :welcome
  end

  def about
    @header = 'This is the about page'
    render :about
  end

  def contest
    @header = 'This is the contest page'
  end

  def random
    @header = 'This is the random picture page'
    user_size = params[:size]
    @random_url = "https://picsum.photos/#{user_size}/#{user_size}?/kitten"
  end

  
end
