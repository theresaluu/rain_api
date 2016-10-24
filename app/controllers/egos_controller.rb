class EgosController < ApplicationController
  before_action :set_ego, only: [:show, :update, :destroy]

  # GET /egos
  def index
    @egos = Ego.all

    render json: @egos
  end

  # GET /egos/1
  def show
    render json: @ego
  end

  # POST /egos
  def create
    @ego = Ego.new(ego_params)

    if @ego.save
      render json: @ego, status: :created, location: @ego
    else
      render json: @ego.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /egos/1
  def update
    if @ego.update(ego_params)
      render json: @ego
    else
      render json: @ego.errors, status: :unprocessable_entity
    end
  end

  # DELETE /egos/1
  def destroy
    @ego.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ego
      @ego = Ego.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ego_params
      params.require(:ego).permit(:recognize, :investigate, :nurtured)
    end
end
