class TagsController < ApplicationController
  def index
    @tag = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    # flash.notice = "Tag '#{@tag.name}' Eliminated!"
    redirect_to tag_path(@tag)
  end
end
