class NoticesController < ApplicationController
  def index
    @notices = Notice.all
  end

  def new
  end

  def create
    render plain: params[:article].inspect
  end

  def show
    @notice = Notice.find(params[:id])
  end

  private

  def notice_params
    params.require(:article).permit(:title, :text)
  end
end
