class LocalesController < ApplicationController
  def save_locale
    session[:locale] = params[:locale]
    redirect_to :back
  end
end
