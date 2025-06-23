class UserMastersController < ApplicationController
  before_action :set_user_master, only: %i[ show edit update destroy ]

  # GET /user_masters or /user_masters.json
  def index
    @user_masters = UserMaster.all
  end

  # GET /user_masters/1 or /user_masters/1.json
  def show
  end

  # GET /user_masters/new
  def new
    @user_master = UserMaster.new
  end

  # GET /user_masters/1/edit
  def edit
  end

  # POST /user_masters or /user_masters.json
  def create
    @user_master = UserMaster.new(user_master_params)

    respond_to do |format|
      if @user_master.save
        format.html { redirect_to @user_master, notice: "User master was successfully created." }
        format.json { render :show, status: :created, location: @user_master }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_masters/1 or /user_masters/1.json
  def update
    respond_to do |format|
      if @user_master.update(user_master_params)
        format.html { redirect_to @user_master, notice: "User master was successfully updated." }
        format.json { render :show, status: :ok, location: @user_master }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_masters/1 or /user_masters/1.json
  def destroy
    @user_master.destroy!

    respond_to do |format|
      format.html { redirect_to user_masters_path, status: :see_other, notice: "User master was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_master
      @user_master = UserMaster.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def user_master_params
      params.expect(user_master: [ :user_id, :user_name, :email ])
    end
end
