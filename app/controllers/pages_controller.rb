class PagesController < ApplicationController
  before_action :set_random_url, only: [:random, :randoms]

  def welcome
    @header = 'WELCOME!'
    render :welcome
  end

  def about
    @header = 'This is the about page'
    render :about
  end

  def contest
    flash[:notice] = "Sorry! The contest has ended."
    redirect_to root_url
  end

  def set_random_url
    user_size = params[:size]
    @random_url = "https://picsum.photos/#{user_size}/#{user_size}?/kitten"
  end

  def random
    @header = 'This is the random picture page'
  end

  def randoms
    @header = 'This is the many randoms page'
  end

  def secrets
    unless params[:magic_word] == "poop"
      flash[:notice] = "Thats not the magic word! "
      redirect_to root_url
    end

  end
end
