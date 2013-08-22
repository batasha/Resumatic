class ResumeController < ApplicationController
  def show
    @resume = Resume.find(params[:id])
    @user = @resume.user
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end