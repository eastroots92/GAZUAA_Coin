require 'Coin'
class MycoinsController < ApplicationController
  before_action :set_mycoin, only: [:show, :edit, :update, :destroy]
  before_action :user_nil


  # 마켓 추가 설정
  def storechecking
    @exchangeStore = params[:store]

    case @exchangeStore      
      when 'coinnest'
        render :json => Coin.coinnest
      when 'upbit'
        render :json => Coin.upbit
      when 'upbit_btc'
        render :json => Coin.upbit_btc
      when 'bithumb'
        render :json => Coin.bithumb
      when 'coinone'
        render :json => Coin.coinone
     end

  end
 
  # GET /mycoins
  # GET /mycoins.json
  # 마켓 추가 설정
  def index
    @coinnest = Mycoin.where(user_id: current_user.id,category: "coinnest")
    @upbit = Mycoin.where(user_id: current_user.id,category: "upbit")
    @upbit_btc = Mycoin.where(user_id: current_user.id,category: "upbit_btc")
    @bithumb = Mycoin.where(user_id: current_user.id,category: "bithumb")
    @coinone = Mycoin.where(user_id: current_user.id,category: "coinone")
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
      params.require(:mycoin).permit(:category, :coinname, :price, :user_id,:deposit)
    end

    def user_nil
      puts user_signed_in?
      unless(user_signed_in?)
        redirect_to '/'
      end
    end
end
