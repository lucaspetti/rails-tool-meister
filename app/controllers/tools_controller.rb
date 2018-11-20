class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index


  def index
    if params[:location].empty? && params[:category].empty?
      @tools = Tool.all
    elsif params[:location].empty?
      @tools = Tool.where(category: params[:category])
    elsif params[:category].empty?
      @tools = Tool.where(location: params[:location])
    else
      @tools = Tool.where(location: params[:location], category: params[:category])
    end

    # raise
    # @tools = Tool.all
    # tools_cat = Tool.where(category: params[:category])
    # @tools = (tools_cat + tools_loc).uniq
    # raise
    # @tools = policy_scope(Tool)
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
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
    params.require(:tool).permit(:name, :category, :location, :photo, :price_per_day)
  end
end
