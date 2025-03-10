class SymptomsController < ApplicationController
  before_action :set_symptom, only: %i[ show edit update destroy ]

  # GET /symptoms or /symptoms.json
  def index
    @symptoms = Symptom.all
  end

  # GET /symptoms/1 or /symptoms/1.json
  def show
  end

  # GET /symptoms/new
  def new
    @symptom = Symptom.new
  end

  # GET /symptoms/1/edit
  def edit
  end

  # POST /symptoms or /symptoms.json
  def create
    @symptom = Symptom.new(symptom_params)

    respond_to do |format|
      if @symptom.save
        format.html { redirect_to @symptom, notice: "Symptom was successfully created." }
        format.json { render :show, status: :created, location: @symptom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @symptom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /symptoms/1 or /symptoms/1.json
  def update
    respond_to do |format|
      if @symptom.update(symptom_params)
        format.html { redirect_to @symptom, notice: "Symptom was successfully updated." }
        format.json { render :show, status: :ok, location: @symptom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @symptom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /symptoms/1 or /symptoms/1.json
  def destroy
    @symptom.destroy!

    respond_to do |format|
      format.html { redirect_to symptoms_path, status: :see_other, notice: "Symptom was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_symptom
      @symptom = Symptom.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def symptom_params
      params.expect(symptom: [ :patient_id, :name, :severity, :description, :reported_at ])
    end
end
