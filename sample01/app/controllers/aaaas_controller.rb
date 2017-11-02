class AaaasController < ApplicationController
  before_action :set_aaaa, only: [:show, :edit, :update, :destroy]

  # GET /aaaas
  # GET /aaaas.json
  def index
    @aaaas = Aaaa.all
  end

  # GET /aaaas/1
  # GET /aaaas/1.json
  def show
  end

  # GET /aaaas/new
  def new
    @aaaa = Aaaa.new
  end

  # GET /aaaas/1/edit
  def edit
  end

  # POST /aaaas
  # POST /aaaas.json
  def create
    @aaaa = Aaaa.new(aaaa_params)

    respond_to do |format|
      if @aaaa.save
        format.html { redirect_to @aaaa, notice: 'Aaaa was successfully created.' }
        format.json { render :show, status: :created, location: @aaaa }
      else
        format.html { render :new }
        format.json { render json: @aaaa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aaaas/1
  # PATCH/PUT /aaaas/1.json
  def update
    respond_to do |format|
      if @aaaa.update(aaaa_params)
        format.html { redirect_to @aaaa, notice: 'Aaaa was successfully updated.' }
        format.json { render :show, status: :ok, location: @aaaa }
      else
        format.html { render :edit }
        format.json { render json: @aaaa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aaaas/1
  # DELETE /aaaas/1.json
  def destroy
    @aaaa.destroy
    respond_to do |format|
      format.html { redirect_to aaaas_url, notice: 'Aaaa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aaaa
      @aaaa = Aaaa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aaaa_params
      params.require(:aaaa).permit(:name)
    end
end
