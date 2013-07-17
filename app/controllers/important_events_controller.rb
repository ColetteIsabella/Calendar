class ImportantEventsController < ApplicationController
  # GET /important_events
  # GET /important_events.json
  def index
    @important_events = ImportantEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @important_events }
    end
  end

  # GET /important_events/1
  # GET /important_events/1.json
  def show
    @important_event = ImportantEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @important_event }
    end
  end

  # GET /important_events/new
  # GET /important_events/new.json
  def new
    @important_event = ImportantEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @important_event }
    end
  end

  # GET /important_events/1/edit
  def edit
    @important_event = ImportantEvent.find(params[:id])
  end

  # POST /important_events
  # POST /important_events.json
  def create
    @important_event = ImportantEvent.new(params[:important_event])

    respond_to do |format|
      if @important_event.save
        format.html { redirect_to @important_event, notice: 'Important event was successfully created.' }
        format.json { render json: @important_event, status: :created, location: @important_event }
      else
        format.html { render action: "new" }
        format.json { render json: @important_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /important_events/1
  # PUT /important_events/1.json
  def update
    @important_event = ImportantEvent.find(params[:id])

    respond_to do |format|
      if @important_event.update_attributes(params[:important_event])
        format.html { redirect_to @important_event, notice: 'Important event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @important_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /important_events/1
  # DELETE /important_events/1.json
  def destroy
    @important_event = ImportantEvent.find(params[:id])
    @important_event.destroy

    respond_to do |format|
      format.html { redirect_to important_events_url }
      format.json { head :no_content }
    end
  end
end
