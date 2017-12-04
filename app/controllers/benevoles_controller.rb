class BenevolesController < ApplicationController

	before_action :set_benevole, only: [:show, :edit, :update, :destroy]

  # GET /benevoles
  # GET /benevoles.json
  def index
    @benevoles = Benevole.all
  end

  # GET /benevoles/1
  # GET /benevoles/1.json
  def show
  end

  # GET /benevoles/new
  def new
    @benevole = Benevole.new
  end

  # GET /benevoles/1/edit
  def edit
  end

  # POST /benevoles
  # POST /benevoles.json
  def create
    @benevole = Benevole.new(benevole_params)

    respond_to do |format|
      if @benevole.save
        format.html { redirect_to @benevole, notice: 'Benevole was successfully created.' }
        format.json { render :show, status: :created, location: @benevole }
      else
        format.html { render :new }
        format.json { render json: @benevole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /benevoles/1
  # PATCH/PUT /benevoles/1.json
  def update
    respond_to do |format|
      if @benevole.update(benevole_params)
        format.html { redirect_to @benevole, notice: 'Benevole was successfully updated.' }
        format.json { render :show, status: :ok, location: @benevole }
      else
        format.html { render :edit }
        format.json { render json: @benevole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benevoles/1
  # DELETE /benevoles/1.json
  def destroy
    @benevole.destroy
    respond_to do |format|
      format.html { redirect_to benevoles_url, notice: 'Benevole was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_benevole
      @benevole = Benevole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def benevole_params
      params.require(:benevole).permit(:firstname, :lastname, :birthday, :address, :zip, :city, :gender, :email, :phone)
    end
end
