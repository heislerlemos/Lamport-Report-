class TwitterpostsController < ApplicationController
   before_action :authenticate_user!
  def index
    @twitterposts = Twitterpost.all.order("created_at DESC")
    @twitterposts_paginação = Twitterpost.paginate(:page => params[:page], per_page: 10)

    end

  
  def create
    @twitterpost = Twitterpost.create(:message => params[:message])
    respond_to do |format|
      if @twitterpost.save
        format.html { redirect_to twitterposts_path}
        format.js
      else
        flash[:notice] = "Message failed to save."
        format.html { redirect_to twitterposts_path }
      end
    end
end
end
