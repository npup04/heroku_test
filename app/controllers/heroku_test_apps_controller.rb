class HerokuTestAppsController < ApplicationController
  before_action :set_heroku_test_app, only: [:show, :edit, :update, :destroy]

  # GET /heroku_test_apps
  # GET /heroku_test_apps.json
  def index
    @heroku_test_apps = HerokuTestApp.all
  end

  # GET /heroku_test_apps/1
  # GET /heroku_test_apps/1.json
  def show
  end

  # GET /heroku_test_apps/new
  def new
    @heroku_test_app = HerokuTestApp.new
  end

  # GET /heroku_test_apps/1/edit
  def edit
  end

  # POST /heroku_test_apps
  # POST /heroku_test_apps.json
  def create
    @heroku_test_app = HerokuTestApp.new(heroku_test_app_params)

    respond_to do |format|
      if @heroku_test_app.save
        format.html { redirect_to @heroku_test_app, notice: 'Heroku test app was successfully created.' }
        format.json { render :show, status: :created, location: @heroku_test_app }
      else
        format.html { render :new }
        format.json { render json: @heroku_test_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heroku_test_apps/1
  # PATCH/PUT /heroku_test_apps/1.json
  def update
    respond_to do |format|
      if @heroku_test_app.update(heroku_test_app_params)
        format.html { redirect_to @heroku_test_app, notice: 'Heroku test app was successfully updated.' }
        format.json { render :show, status: :ok, location: @heroku_test_app }
      else
        format.html { render :edit }
        format.json { render json: @heroku_test_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heroku_test_apps/1
  # DELETE /heroku_test_apps/1.json
  def destroy
    @heroku_test_app.destroy
    respond_to do |format|
      format.html { redirect_to heroku_test_apps_url, notice: 'Heroku test app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heroku_test_app
      @heroku_test_app = HerokuTestApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heroku_test_app_params
      params.require(:heroku_test_app).permit(:name)
    end
end
