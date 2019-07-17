class SortensController < ApplicationController
  before_action :set_sorten, only: [:show, :edit, :update, :destroy]

  # GET /sortens
  # GET /sortens.json
  def index
    @sortens = Sorten.all
  end

  def guess
  end

  def solution
    @code1 = params[:sorte1]
    @code2 = params[:sorte2]
    render :template => "sortens/_sortenname"
  end

  # GET /sortens/1
  # GET /sortens/1.json
  def show
  end

  # GET /sortens/new
  def new
    @sorten = Sorten.new
  end

  # GET /sortens/1/edit
  def edit
  end

  # POST /sortens
  # POST /sortens.json
  def create
    @sorten = Sorten.new(sorten_params)

    respond_to do |format|
      if @sorten.save
        format.html { redirect_to @sorten, notice: 'Sorten was successfully created.' }
        format.json { render :show, status: :created, location: @sorten }
      else
        format.html { render :new }
        format.json { render json: @sorten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sortens/1
  # PATCH/PUT /sortens/1.json
  def update
    respond_to do |format|
      if @sorten.update(sorten_params)
        format.html { redirect_to @sorten, notice: 'Sorten was successfully updated.' }
        format.json { render :show, status: :ok, location: @sorten }
      else
        format.html { render :edit }
        format.json { render json: @sorten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sortens/1
  # DELETE /sortens/1.json
  def destroy
    @sorten.destroy
    respond_to do |format|
      format.html { redirect_to sortens_url, notice: 'Sorten was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sorten
      @sorten = Sorten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sorten_params
      params.require(:sorten).permit(:code, :sorte)
    end
end
