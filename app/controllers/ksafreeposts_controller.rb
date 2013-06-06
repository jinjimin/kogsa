class KsafreepostsController < ApplicationController
  # GET /ksafreeposts
  # GET /ksafreeposts.json
  def ksafree
    @ksafreeposts = Ksafreepost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ksafreeposts }
    end
  end

  # GET /ksafreeposts/1
  # GET /ksafreeposts/1.json
  def show
    @ksafreepost = Ksafreepost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ksafreepost }
    end
  end

  # GET /ksafreeposts/new
  # GET /ksafreeposts/new.json
  def new
    @ksafreepost = Ksafreepost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ksafreepost }
    end
  end

  # GET /ksafreeposts/1/edit
  def edit
    @ksafreepost = Ksafreepost.find(params[:id])
  end

  # POST /ksafreeposts
  # POST /ksafreeposts.json
  def create
    @ksafreepost = Ksafreepost.new(params[:ksafreepost])

    respond_to do |format|
      if @ksafreepost.save
        format.html { redirect_to @ksafreepost, notice: 'Ksafreepost was successfully created.' }
        format.json { render json: @ksafreepost, status: :created, location: @ksafreepost }
      else
        format.html { render action: "new" }
        format.json { render json: @ksafreepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ksafreeposts/1
  # PUT /ksafreeposts/1.json
  def update
    @ksafreepost = Ksafreepost.find(params[:id])

    respond_to do |format|
      if @ksafreepost.update_attributes(params[:ksafreepost])
        format.html { redirect_to @ksafreepost, notice: 'Ksafreepost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ksafreepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ksafreeposts/1
  # DELETE /ksafreeposts/1.json
  def destroy
    @ksafreepost = Ksafreepost.find(params[:id])
    @ksafreepost.destroy

    respond_to do |format|
      format.html { redirect_to ksafreeposts_url }
      format.json { head :no_content }
    end
  end
  
end
