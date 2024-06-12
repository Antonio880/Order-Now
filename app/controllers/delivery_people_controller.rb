class DeliveryPeopleController < ApplicationController
  before_action :set_delivery_person, only: %i[ show edit update destroy ]

  # GET /delivery_people or /delivery_people.json
  def index
    @delivery_people = DeliveryPerson.all
  end

  # GET /delivery_people/1 or /delivery_people/1.json
  def show
  end

  # GET /delivery_people/new
  def new
    @delivery_person = DeliveryPerson.new
  end

  # GET /delivery_people/1/edit
  def edit
  end

  # POST /delivery_people or /delivery_people.json
  def create
    @delivery_person = DeliveryPerson.new(delivery_person_params)

    respond_to do |format|
      if @delivery_person.save
        format.html { redirect_to delivery_person_url(@delivery_person), notice: "Delivery person was successfully created." }
        format.json { render :show, status: :created, location: @delivery_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @delivery_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_people/1 or /delivery_people/1.json
  def update
    respond_to do |format|
      if @delivery_person.update(delivery_person_params)
        format.html { redirect_to delivery_person_url(@delivery_person), notice: "Delivery person was successfully updated." }
        format.json { render :show, status: :ok, location: @delivery_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @delivery_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_people/1 or /delivery_people/1.json
  def destroy
    @delivery_person.destroy!

    respond_to do |format|
      format.html { redirect_to delivery_people_url, notice: "Delivery person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_person
      @delivery_person = DeliveryPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delivery_person_params
      params.require(:delivery_person).permit(:name, :phone, :vehicle_type)
    end
end
