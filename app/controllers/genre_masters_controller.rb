class GenreMastersController < ApplicationController
  before_action :set_genre_master, only: %i[ show edit update destroy ]

  # GET /genre_masters or /genre_masters.json
  def index
    @genre_masters = GenreMaster.all
  end

  # GET /genre_masters/1 or /genre_masters/1.json
  def show
  end

  # GET /genre_masters/new
  def new
    @genre_master = GenreMaster.new
  end

  # GET /genre_masters/1/edit
  def edit
  end

  # POST /genre_masters or /genre_masters.json
  def create
    @genre_master = GenreMaster.new(genre_master_params)

    respond_to do |format|
      if @genre_master.save
        format.html { redirect_to @genre_master, notice: "Genre master was successfully created." }
        format.json { render :show, status: :created, location: @genre_master }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @genre_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genre_masters/1 or /genre_masters/1.json
  def update
    respond_to do |format|
      if @genre_master.update(genre_master_params)
        format.html { redirect_to @genre_master, notice: "Genre master was successfully updated." }
        format.json { render :show, status: :ok, location: @genre_master }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @genre_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genre_masters/1 or /genre_masters/1.json
  def destroy
    @genre_master.destroy!

    respond_to do |format|
      format.html { redirect_to genre_masters_path, status: :see_other, notice: "Genre master was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre_master
      @genre_master = GenreMaster.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def genre_master_params
      params.expect(genre_master: [ :genre_id, :genre_name ])
    end
end
