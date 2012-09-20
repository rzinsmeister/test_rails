class SongbirdsController < ApplicationController
  # GET /songbirds
  # GET /songbirds.json
  def index
    @songbirds = Songbird.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @songbirds }
    end
  end

  # GET /songbirds/1
  # GET /songbirds/1.json
  def show
    @songbird = Songbird.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @songbird }
    end
  end

  # GET /songbirds/new
  # GET /songbirds/new.json
  def new
    @songbird = Songbird.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @songbird }
    end
  end

  # GET /songbirds/1/edit
  def edit
    @songbird = Songbird.find(params[:id])
  end

  # POST /songbirds
  # POST /songbirds.json
  def create
    @songbird = Songbird.new(params[:songbird])

    respond_to do |format|
      if @songbird.save
        format.html { redirect_to @songbird, notice: 'Songbird was successfully created.' }
        format.json { render json: @songbird, status: :created, location: @songbird }
      else
        format.html { render action: "new" }
        format.json { render json: @songbird.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /songbirds/1
  # PUT /songbirds/1.json
  def update
    @songbird = Songbird.find(params[:id])

    respond_to do |format|
      if @songbird.update_attributes(params[:songbird])
        format.html { redirect_to @songbird, notice: 'Songbird was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @songbird.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songbirds/1
  # DELETE /songbirds/1.json
  def destroy
    @songbird = Songbird.find(params[:id])
    @songbird.destroy

    respond_to do |format|
      format.html { redirect_to songbirds_url }
      format.json { head :no_content }
    end
  end
end
