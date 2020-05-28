class BackpackersController < ApplicationController
  before_action :set_backpacker, only: [:show, :edit, :update, :destroy, :new]
  skip_before_action :authenticate_user!, only: [:new, :create]


  # GET /backpackers
  # GET /backpackers.json
  def index
    @backpackers = Backpacker.all
  end

  # GET /backpackers/1
  # GET /backpackers/1.json
  def show
  end

  # GET /backpackers/new
  def new
    @backpacker = Backpacker.new
  end

  # GET /backpackers/1/edit
  def edit
  end

  # POST /backpackers
  # POST /backpackers.json
  def create
    @backpacker = Backpacker.new(backpacker_params)

    respond_to do |format|
      if @backpacker.save
        format.html { redirect_to @backpacker, notice: 'Backpacker was successfully created.' }
        format.json { render :show, status: :created, location: @backpacker }
      else
        format.html { render :new }
        format.json { render json: @backpacker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backpackers/1
  # PATCH/PUT /backpackers/1.json
  def update
    respond_to do |format|
      if @backpacker.update(backpacker_params)
        format.html { redirect_to @backpacker, notice: 'Backpacker was successfully updated.' }
        format.json { render :show, status: :ok, location: @backpacker }
      else
        format.html { render :edit }
        format.json { render json: @backpacker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backpackers/1
  # DELETE /backpackers/1.json
  def destroy
    @backpacker.destroy
    respond_to do |format|
      format.html { redirect_to backpackers_url, notice: 'Backpacker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backpacker
      @backpacker = Backpacker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def backpacker_params
      params.require(:backpacker).permit(:name, :lastname, :nationality, :age, :email, :profession, :phone, :trip_id)
    end
end
