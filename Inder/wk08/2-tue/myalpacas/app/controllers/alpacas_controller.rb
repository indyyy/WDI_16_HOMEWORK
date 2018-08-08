class AlpacasController < ApplicationController
  def index
  end


  def index
    @alpacas = Alpaca.all
    @alpaca = Alpaca.new
    render :index
  end

  def new
    @alpaca=Alpaca.new
  end

  def create
    @alpaca=Alpaca.new
    @alpaca.url = params[:url]
    if @alpaca.save
      redirect_to '/alpacas'
    else
      render :new 
    end
  end

  def show
    @alpaca = Alpaca.find(params[:id])
  end

  def destroy
    @alpaca = Alpaca.find( params[:id])
    if @alpaca.destroy
      redirect_to '/alpacas'
    else  
      render :show
    end
  end

  def edit
    @alpaca = Alpaca.find( params[:id])
    render :edit
  end

  def update
    @alpaca = Alpaca.find( params[:id])
    @alpaca.url = params[:url]
    if @alpaca.save
      redirect_to "/alpacas/#{@alpaca.id}"
    else
      render :edit
    end
  end








end
