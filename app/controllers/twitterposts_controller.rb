class TwitterpostsController < ApplicationController

  def index
    @twitterposts = Twitterpost.all
    @twitterposts_paginação = Twitterpost.paginate(:page => params[:page], per_page: 10).order("created_at DESC")


    end

  def create

    @twitterpost = current_user.twitterposts.build(:message => params[:message])
      
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
