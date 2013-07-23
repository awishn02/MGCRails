class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
  # GET /users/inGame/1
  # GET /users/inGame/1.json
  def inGame
    @users = User.find(:all, :conditions => ["game_id = ? AND id != ?",params[:game_id], params[:user_id]])
    
    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @u1 = User.find_by_username(params[:user][:username])
    @u2 = User.find_by_email(params[:user][:email])
    
    if @u1 == nil && @u2 == nil
        @user = User.new(params[:user])

        respond_to do |format|
          if @user.save
            format.html { redirect_to @user, notice: 'User was successfully created.' }
            format.json { render json: @user, status: :created, location: @user }
          else
            format.html { render action: "new" }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end
    else
        respond_to do |format|
          if @u2 != nil
            format.html { redirect_to @u2, notice: 'Udid exists'}
            format.json { render :json => {:user => @u2, :message => "Udid exists"}, notice: 'Udid exists'}
          else
            format.html { redirect_to @u1, notice: 'Username exists'}
            format.json { render :json => {:message => "Username exists"}, notice: 'Username exists'}
          end
        end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end