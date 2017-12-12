class NoticesController < ApplicationController
  def index
    @notices = Notice.all
  end

  def new
  end

  def create
    @notice = Notice.new(notice_params)
    @notice.save

    redirect_to @notice
  end

  def show
    @notice = Notice.find(params[:id])
  end

  private

  def notice_params
    params.require(:notice).permit(:title, :text)
  end
end
