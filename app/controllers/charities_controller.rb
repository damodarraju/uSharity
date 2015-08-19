class CharitiesController < ApplicationController
  before_action :set_charity, only: [:show, :edit, :update, :destroy]

  # GET /charities
  # GET /charities.json
  def index
    @charities = Charity.all
    category_group = params[:category_group].split(',') if params[:category_group]
    category_group ||= []
    @charities = @charities.where("#{params[:category]} is null") if params[:category].present?
    @charities = @charities.where(charity_size: params[:charity_size]) if params[:charity_size].present?
    @charities = @charities.where(state: params[:state]) if params[:state].present?
    category_group.each do |category|
      @charities = @charities.where("#{category} is null")
    end
    @charities = @charities.where("charity_website is not null")
    @charities = @charities.offset(rand(@charities.count)).limit(5)
  end

  # GET /charities/1
  # GET /charities/1.json
  def show
  end

  # GET /charities/new
  def new
    @charity = Charity.new
  end

  # GET /charities/1/edit
  def edit
  end

  # POST /charities
  # POST /charities.json
  def create
    @charity = Charity.new(charity_params)

    respond_to do |format|
      if @charity.save
        format.html { redirect_to @charity, notice: 'Charity was successfully created.' }
        format.json { render :show, status: :created, location: @charity }
      else
        format.html { render :new }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charities/1
  # PATCH/PUT /charities/1.json
  def update
    respond_to do |format|
      if @charity.update(charity_params)
        format.html { redirect_to @charity, notice: 'Charity was successfully updated.' }
        format.json { render :show, status: :ok, location: @charity }
      else
        format.html { render :edit }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charities/1
  # DELETE /charities/1.json
  def destroy
    @charity.destroy
    respond_to do |format|
      format.html { redirect_to charities_url, notice: 'Charity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity
      @charity = Charity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charity_params
      params[:charity]
    end
end
