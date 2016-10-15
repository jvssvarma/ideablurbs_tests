class IdeasController < ApplicationController
  before_action :find_idea, only: [:show, :edit, :update, :destroy]

  def index
    @ideas = Idea.all.order("created_at desc")
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new idea_params
    if @idea.save
      redirect_to @idea, notice: "Your Idea Blurb is posted successfully!"
    else
      render 'new', notice: "Oh no, looks like something went wrong"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @idea.update idea_params
      redirect_to @idea, notice: "Your Idea Blurb is updated successfully!"
    else
      render 'edit', notice: "Oh no, looks like something went wrong"
    end
  end

  def destroy
    @idea.destroy
    redirect_to ideas_path
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :blurb, :image)
  end

  def find_idea
    @idea = Idea.find(params[:id])
  end
end
