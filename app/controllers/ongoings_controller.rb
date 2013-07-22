class OngoingsController < ApplicationController
  # GET /ongoings
  # GET /ongoings.json
  def index
    @ongoings = Ongoing.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ongoings.to_json(:include => :users) }
    end
  end

  # GET /ongoings/1
  # GET /ongoings/1.json
  def show
    @ongoing = Ongoing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ongoing }
    end
  end

  # GET /ongoings/new
  # GET /ongoings/new.json
  def new
    @ongoing = Ongoing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ongoing }
    end
  end

  # GET /ongoings/1/edit
  def edit
    @ongoing = Ongoing.find(params[:id])
  end

  # POST /ongoings
  # POST /ongoings.json
  def create
    @ongoing = Ongoing.new(params[:ongoing])
    

    respond_to do |format|
      if @ongoing.save
        format.html { redirect_to @ongoing, notice: 'Ongoing was successfully created.' }
        format.json { render json: @ongoing, status: :created, location: @ongoing }
      else
        format.html { render action: "new" }
        format.json { render json: @ongoing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ongoings/1
  # PUT /ongoings/1.json
  def update
    @ongoing = Ongoing.find(params[:id])

    respond_to do |format|
      if @ongoing.update_attributes(params[:ongoing])
        format.html { redirect_to @ongoing, notice: 'Ongoing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ongoing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ongoings/1
  # DELETE /ongoings/1.json
  def destroy
    @ongoing = Ongoing.find(params[:id])
    @ongoing.destroy

    respond_to do |format|
      format.html { redirect_to ongoings_url }
      format.json { head :no_content }
    end
  end
  
  # DELETE /ongoings
  # DELETE /ongoings.json
  def destroyByUDID
    @game = Ongoing.find_by_user_id(params[:user_id])
    logger.info params
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url }
      format.json { head :no_content }    
    end
  end
end
