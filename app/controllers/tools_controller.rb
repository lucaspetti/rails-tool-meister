class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_authorized, only: [:my_tools]

  def index
    if params[:location] && params[:category]
      if params[:location].empty? && params[:category].empty?
        @tools = Tool.all
      elsif params[:location].empty?
        @tools = Tool.search_by_location_and_category(params[:category])
      elsif params[:category].empty?
        @tools = Tool.search_by_location_and_category(params[:location])
      else
        @search_one = Tool.search_by_location_and_category(params[:location])
        @search_two = Tool.search_by_location_and_category(params[:category])
        @tools = @search_one & @search_two
      end
    else
      @tools = Tool.search_by_location_and_category(params[:location])
    end

    # @tools = Tool.where.not(latitude: nil, longitude: nil)
    # @tools = Tool.search_by_location_and_category(params[:location])
    @markers = @tools.map do |tool|
      {
        lng: tool.longitude,
        lat: tool.latitude
      }
    end
  end

  def my_tools
      @tools = policy_scope(Tool.where(user: current_user))
    # render :index
  end

  def show
    @tool = Tool.find(params[:id])
    authorize @tool
    @booking = Booking.new

    @markers = {
      lng: @tool.longitude,
      lat: @tool.latitude
      }
  end

  def new
    @tool = Tool.new
    authorize @tool
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = current_user
    authorize @tool
    if @tool.save
      redirect_to tool_path(@tool)
    else
      render :new
    end
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def update
    @tool = Tool.find(params[:id])
    @tool.update(tool_params)
    redirect_to tools_path
  end

  def destroy
    @tools = policy_scope(Tool.where(user: current_user))
    @tool = Tool.find(params[:id])
    authorize @tool
    @tool.destroy
    # redirect_to my_tools_path
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :category, :location, :image, :price_per_day, :description)
  end
end
