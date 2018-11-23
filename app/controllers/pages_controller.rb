class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @locations = ["Berlin", "Düsseldorf", "Munich"]
    @tools = ["Chainsaw", "Drill", "Grinder", "Hammer"]
  end
end
