class TwitterpostsController < ApplicationController
   before_action :authenticate_user!
  def index
    #@twitterposts = Twitterpost.all.order("created_at DESC")
    @twitterpost =  current_user.twitterposts.build
    @twitterposts_paginação = Twitterpost.paginate(:page => params[:page], per_page: 10).all.order("created_at DESC")

    end


  
  def create
   #@twttes =  current_user.twitterposts.build
   #@twitterpost = Twitterpost.create(:message => params[:message])
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