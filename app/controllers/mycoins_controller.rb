class MycoinsController < ApplicationController
  before_action :set_mycoin, only: [:show, :edit, :update, :destroy]

  # GET /mycoins
  # GET /mycoins.json
  def index
    @mycoins = Mycoin.all
  end

  # GET /mycoins/1
  # GET /mycoins/1.json
  def show
  end

  # GET /mycoins/new
  def new
    @mycoin = Mycoin.new
  end

  # GET /mycoins/1/edit
  def edit
  end

  # POST /mycoins
  # POST /mycoins.json
  def create
    @mycoin = Mycoin.new(mycoin_params)

    respond_to do |format|
      if @mycoin.save
        format.html { redirect_to @mycoin, notice: 'Mycoin was successfully created.' }
        format.json { render :show, status: :created, location: @mycoin }
      else
        format.html { render :new }
        format.json { render json: @mycoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mycoins/1
  # PATCH/PUT /mycoins/1.json
  def update
    respond_to do |format|
      if @mycoin.update(mycoin_params)
        format.html { redirect_to @mycoin, notice: 'Mycoin was successfully updated.' }
        format.json { render :show, status: :ok, location: @mycoin }
      else
        format.html { render :edit }
        format.json { render json: @mycoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mycoins/1
  # DELETE /mycoins/1.json
  def destroy
    @mycoin.destroy
    respond_to do |format|
      format.html { redirect_to mycoins_url, notice: 'Mycoin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mycoin
      @mycoin = Mycoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mycoin_params
      params.require(:mycoin).permit(:category, :coinname, :price, :user_id)
    end
end
