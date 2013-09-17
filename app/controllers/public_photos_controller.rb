class PublicPhotosController < ApplicationController
  before_action :set_public_photo, only: [:show, :edit, :update, :destroy]

  # GET /public_photos
  # GET /public_photos.json
  def index
    @public_photos = PublicPhoto.all
  end

  # GET /public_photos/1
  # GET /public_photos/1.json
  def show
  end

  # GET /public_photos/new
  def new
    @public_photo = PublicPhoto.new
  end

  # GET /public_photos/1/edit
  def edit
  end

  # POST /public_photos
  # POST /public_photos.json
  def create
    @public_photo = PublicPhoto.new(public_photo_params)

    respond_to do |format|
      if @public_photo.save
        format.html { redirect_to @public_photo, notice: 'Public photo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @public_photo }
      else
        format.html { render action: 'new' }
        format.json { render json: @public_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_photos/1
  # PATCH/PUT /public_photos/1.json
  def update
    respond_to do |format|
      if @public_photo.update(public_photo_params)
        format.html { redirect_to @public_photo, notice: 'Public photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @public_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_photos/1
  # DELETE /public_photos/1.json
  def destroy
    @public_photo.destroy
    respond_to do |format|
      format.html { redirect_to public_photos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_photo
      @public_photo = PublicPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_photo_params
      params.require(:public_photo).permit(:image, :caption)
    end
end
