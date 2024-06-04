class DogsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    def index
        @dogs = Dog.all
    end
    def new
        @dog = Dog.new
    end

    def create
        dog = Dog.new(dog_params)
        dog.user_id = current_user.id

        if dog.save!
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def show
        @dog = Dog.find(params[:id])
        @comments = @dog.comments
        @comment = Comment.new
    end
    
    def edit
      @dog = Dog.find(params[:id])
    end
    def update
      dog = Dog.find(params[:id])
      if dog.update(dog_params)
        redirect_to :action => "show", :id => dog.id
      else
        redirect_to :action => "new"
      end
    end

    def destroy
      dog = Dog.find(params[:id])
      dog.destroy
      redirect_to action: :index
    end

    def introduce1
    end

    def introduce2
    end

    def introduce3
    end

    def introduce4
    end

    def introduce5
    end

    def introduce6
    end

    def introduce7
    end

    def introduce8
    end

    def introduce9
    end

    def introduce10
    end

    def introduce11
    end

    def introduce12
    end

    private
    def dog_params
      params.require(:dog).permit(:name, :genre, :about, :user_id, :image, :youtube_url)
    end

end
