class TowersController < ApplicationController
  before_action :set_tower, only: [:show, :edit, :update, :destroy]

  # GET /towers
  # GET /towers.json
  def index
    @towers = Tower.all
  end

  # GET /towers/1
  # GET /towers/1.json
  def show
  end

  # GET /towers/new
  def new
    @tower = Tower.new
  end

  # GET /towers/1/edit
  def edit
  end

  # POST /towers
  # POST /towers.json
  def create
    @tower = Tower.new(tower_params)

    respond_to do |format|
      if @tower.save
        format.html { redirect_to @tower, notice: 'Tower was successfully created.' }
        format.json { render :show, status: :created, location: @tower }
      else
        format.html { render :new }
        format.json { render json: @tower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /towers/1
  # PATCH/PUT /towers/1.json
  def update
    respond_to do |format|
      if @tower.update(tower_params)
        format.html { redirect_to @tower, notice: 'Tower was successfully updated.' }
        format.json { render :show, status: :ok, location: @tower }
      else
        format.html { render :edit }
        format.json { render json: @tower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /towers/1
  # DELETE /towers/1.json
  def destroy
    @tower.destroy
    respond_to do |format|
      format.html { redirect_to towers_url, notice: 'Tower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tower
      @tower = Tower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tower_params
      params.require(:tower).permit(:name, :porte)
    end
end
