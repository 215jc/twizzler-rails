class TwizzlesController < ApplicationController
  before_action :set_twizzle, only: [:show, :edit, :update, :destroy]

  # GET /twizzles
  # GET /twizzles.json
  def index
    @twizzles = Twizzle.all
  end

  # GET /twizzles/1
  # GET /twizzles/1.json
  def show
  end

  # GET /twizzles/new
  def new
    @twizzle = Twizzle.new
  end

  # GET /twizzles/1/edit
  def edit
  end

  # POST /twizzles
  # POST /twizzles.json
  def create
    @twizzle = Twizzle.new(twizzle_params)

    respond_to do |format|
      if @twizzle.save
        format.html { redirect_to @twizzle, notice: 'Twizzle was successfully created.' }
        format.json { render :show, status: :created, location: @twizzle }
      else
        format.html { render :new }
        format.json { render json: @twizzle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twizzles/1
  # PATCH/PUT /twizzles/1.json
  def update
    respond_to do |format|
      if @twizzle.update(twizzle_params)
        format.html { redirect_to @twizzle, notice: 'Twizzle was successfully updated.' }
        format.json { render :show, status: :ok, location: @twizzle }
      else
        format.html { render :edit }
        format.json { render json: @twizzle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twizzles/1
  # DELETE /twizzles/1.json
  def destroy
    @twizzle.destroy
    respond_to do |format|
      format.html { redirect_to twizzles_url, notice: 'Twizzle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twizzle
      @twizzle = Twizzle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twizzle_params
      params.require(:twizzle).permit(:user_id, :content)
    end
end
