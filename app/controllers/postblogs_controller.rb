class PostblogsController < ApplicationController

  before_action :set_postblog, only: [:show, :edit, :update, :destroy]

  # GET /postblogs
  # GET /postblogs.json
  def index
    #@postblogs = Postblog.all
    @pagy, @postblogs = pagy(Postblog)
  end

  # GET /postblogs/1
  # GET /postblogs/1.json
  def show
  end

  # GET /postblogs/new
  def new
    @postblog = Postblog.new
  end

  # GET /postblogs/1/edit
  def edit
  end

  # POST /postblogs
  # POST /postblogs.json
  def create
    @postblog = Postblog.new(postblog_params)

    respond_to do |format|
      if @postblog.save
        format.html { redirect_to @postblog, notice: 'Postblog was successfully created.' }
        format.json { render :show, status: :created, location: @postblog }
      else
        format.html { render :new }
        format.json { render json: @postblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postblogs/1
  # PATCH/PUT /postblogs/1.json
  def update
    respond_to do |format|
      if @postblog.update(postblog_params)
        format.html { redirect_to @postblog, notice: 'Postblog was successfully updated.' }
        format.json { render :show, status: :ok, location: @postblog }
      else
        format.html { render :edit }
        format.json { render json: @postblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postblogs/1
  # DELETE /postblogs/1.json
  def destroy
    @postblog.destroy
    respond_to do |format|
      format.html { redirect_to postblogs_url, notice: 'Postblog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postblog
      @postblog = Postblog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postblog_params
      params.require(:postblog).permit(:name, :text)
    end
end
