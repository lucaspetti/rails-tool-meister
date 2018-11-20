class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @locations = Tool.pluck(:location).uniq.sort
    # tools_loc = Tool.where(location: params[:location])
    # tools_cat = Tool.where(category: params[:category])
    # @tools = (tools_cat + tools_loc).uniq
    @tools = Tool.pluck(:category).uniq.sort
  end
end
