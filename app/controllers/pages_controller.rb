class PagesController < ApplicationController

  def home
  end

  def about
    render layout: 'devise'
  end

end
