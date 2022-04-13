class ProductUrlsController < ApplicationController
  before_action :set_product_url, only: %i[ show edit update destroy ]

  # GET /product_urls or /product_urls.json
  def index
    @product_urls = ProductUrl.all
  end

  # GET /product_urls/1 or /product_urls/1.json
  def show
  end

  # GET /product_urls/new
  def new
    @product_url = ProductUrl.new
  end

  # GET /product_urls/1/edit
  def edit
  end

  # POST /product_urls or /product_urls.json
  def create
    @product_url = ProductUrl.new(product_url_params)

    respond_to do |format|
      if @product_url.save
        format.html { redirect_to product_url_url(@product_url), notice: "Product url was successfully created." }
        format.json { render :show, status: :created, location: @product_url }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_urls/1 or /product_urls/1.json
  def update
    respond_to do |format|
      if @product_url.update(product_url_params)
        format.html { redirect_to product_url_url(@product_url), notice: "Product url was successfully updated." }
        format.json { render :show, status: :ok, location: @product_url }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_urls/1 or /product_urls/1.json
  def destroy
    @product_url.destroy

    respond_to do |format|
      format.html { redirect_to product_urls_url, notice: "Product url was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_url
      @product_url = ProductUrl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_url_params
      params.require(:product_url).permit(:price, :blog_id)
    end
end
