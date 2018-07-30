class TwitterpostsController < ApplicationController

  def index
    @twitterposts = Twitterpost.all
    @twitterposts_paginação = Twitterpost.paginate(:page => params[:page], per_page: 10).order("created_at DESC")


    end

  def create

    @twitterpost = current_user.twitterposts.build(:message => params[:message])
      
    #respond_to do |format|
      if @twitterpost.save
      #  format.html { redirect_to twitterposts_path}
      #  format.js
      redirect_to twitterposts_path, success: "Post afixado posta mais um ! :)"
      else
      #  flash[:notice] = "Message failed to save."
      #  format.html { redirect_to twitterposts_path }
      redirect_to twitterposts_path, danger: "Não foi possivel afixar o post :("
      end
    end
end

  

#end
