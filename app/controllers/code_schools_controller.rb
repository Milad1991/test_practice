class CodeSchoolsController < ApplicationController
  before_action :set_code_school, only: [:show, :edit, :update, :destroy]

  # GET /code_schools
  # GET /code_schools.json
  def index
    @code_schools = CodeSchool.all
  end

  # GET /code_schools/1
  # GET /code_schools/1.json
  def show
  end

  # GET /code_schools/new
  def new
    @code_school = CodeSchool.new
  end

  # GET /code_schools/1/edit
  def edit
  end

  # POST /code_schools
  # POST /code_schools.json
  def create
    @code_school = CodeSchool.new(code_school_params)

    respond_to do |format|
      if @code_school.save
        format.html { redirect_to @code_school, notice: 'Code school was successfully created.' }
        format.json { render :show, status: :created, location: @code_school }
      else
        format.html { render :new }
        format.json { render json: @code_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_schools/1
  # PATCH/PUT /code_schools/1.json
  def update
    respond_to do |format|
      if @code_school.update(code_school_params)
        format.html { redirect_to @code_school, notice: 'Code school was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_school }
      else
        format.html { render :edit }
        format.json { render json: @code_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_schools/1
  # DELETE /code_schools/1.json
  def destroy
    @code_school.destroy
    respond_to do |format|
      format.html { redirect_to code_schools_url, notice: 'Code school was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_school
      @code_school = CodeSchool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_school_params
      params.require(:code_school).permit(:name)
    end
end
