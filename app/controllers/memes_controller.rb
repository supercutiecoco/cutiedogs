class MemesController < ApplicationController
    def index
    end

    def new
        @meme = Meme.new
    end

    def show
        @meme = Meme.find_by(id: params[:id])
    end

    def create
        meme = Meme.new(meme_params)
        if meme.save
            flash[:notice] = "診断が完了しました"
            redirect_to meme_path(meme.id)
        else
            redirect_to :action => "new"
        end
    end
  
  private
    def meme_params
        params.require(:meme).permit(:question1, :question2, :question3, :question4)
    end
end
