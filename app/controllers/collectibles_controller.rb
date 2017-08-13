class CollectiblesController < ApplicationController
  def index         # GET /collectibles
    @collectibles = current_user.collectibles.all
  end

  def show          # GET /collectibles/:id
    @collectible = Collectible.find(params[:id])
    @owner = @collectible.user
  end

  def new           # GET /collectibles/new
    @collectible = Collectible.new
  end

  def create        # POST /collectibles
    @user = current_user
    @collectible = Collectible.new(collectible_params)
    @collectible.user_id = @user.id
    if @collectible.save
      redirect_to collectible_path(@collectible)
    else
      render :new
    end
  end

  def edit          # GET /collectibles/:id/edit
    @collectible = Collectible.find(params[:id])
  end

  def update        # PATCH /collectibles/:id
    @collectible = Collectible.find(params[:id])
    @collectible.update(collectible_params)
    redirect_to collectible_path(@collectible)
  end

  def destroy       # DELETE /collectibles/:id
    @collectible = Collectible.find(params[:id])
    @collectible.destroy
    redirect_to user_path
  end

  private

  def collectible_params
    params.require(:collectible).permit(:car_id, :mileage, :owners, :service_history, :color,:condition, :gearbox,:drive,:value, :competition_car, :user_id, :collectible_image
)
  end
end

