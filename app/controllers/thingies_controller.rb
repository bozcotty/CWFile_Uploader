class ThingiesController < ApplicationController
  before_action :set_thingy, only: [:show, :edit, :update, :destroy]

  def index
    @thingies = Thingy.all
  end

  def show
  end

  def new
    @thingy = Thingy.new
  end

  def edit
  end

  def create
    @thingy = Thingy.new(thingy_params)

    respond_to do |format|
      if @thingy.save
        format.html { redirect_to @thingy, notice: 'Thingy was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @thingy.update(thingy_params)
        format.html { redirect_to @thingy, notice: 'Thingy was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @thingy.destroy
    respond_to do |format|
      format.html { redirect_to thingies_url, notice: 'Thingy was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thingy
      @thingy = Thingy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thingy_params
      params.require(:thingy).permit(:name, :image)
    end
end
