class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  skip_after_action :verify_authorized, only: [:my_tools]

  def index
    if params[:location] && params[:category]
      if params[:location].empty? && params[:category].empty?
        @tools = Tool.all
      elsif params[:location].empty?
        @tools = Tool.where(category: params[:category])
      elsif params[:category].empty?
        @tools = Tool.where(location: params[:location])
      else
        @tools = Tool.where(location: params[:location], category: params[:category])
      end
    else
      @tools = Tool.all
    end

      @tools = Tool.where.not(latitude: nil, longitude: nil)

      @markers = @tools.map do |tool|
        {
          lng: tool.longitude,
          lat: tool.latitude
        }
      end
  end

    # def set_map
    # end

    # raise
    # @tools = Tool.all
    # tools_cat = Tool.where(category: params[:category])
    # @tools = (tools_cat + tools_loc).uniq
    # raise
    # @tools = policy_scope(Tool)

  def my_tools
    @tools = policy_scope(Tool.where(user: current_user))
    render :index
  end

  def show
    @tool = Tool.find(params[:id])
    authorize @tool
    @booking = Booking.new
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
    @tool = Tool.find(params[:id])
    @tool.destroy
    redirect_to tools_path
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :category, :location, :photo, :price_per_day, :discription   )
  end
end
