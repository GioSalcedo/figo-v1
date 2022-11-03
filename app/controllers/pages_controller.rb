class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  layout "home", only: :home

  def home
    render layout: "home"
  end
end
