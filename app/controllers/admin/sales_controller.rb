class Admin::SalesController < ApplicationController
  before_action :set_admin_sale, only: %i[ show edit update destroy ]

  # GET /admin/sales or /admin/sales.json
  def index
    @admin_sales = Admin::Sale.all
  end

  # GET /admin/sales/1 or /admin/sales/1.json
  def show
  end

  # GET /admin/sales/new
  def new
    @admin_sale = Admin::Sale.new
    @admin_product = Admin::Product.all
    @admin_customer = Admin::Customer.all
  end

  # GET /admin/sales/1/edit
  def edit
    @admin_product = Admin::Product.all
    @admin_customer = Admin::Customer.all
  end

  # POST /admin/sales or /admin/sales.json
  def create
    @admin_sale = Admin::Sale.new(admin_sale_params)
    #Rails.logger.debug("My admin_sale: #{@admin_sale.inspect}")
    respond_to do |format|
      if @admin_sale.save
        #redirect_to @admin_sale
        format.html { redirect_to @admin_sale, notice: "Sale was successfully created." }
        format.json { render :show, status: :created, location: @admin_sale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/sales/1 or /admin/sales/1.json
  def update
    respond_to do |format|
      if @admin_sale.update(admin_sale_params)
        format.html { redirect_to @admin_sale, notice: "Sale was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_sale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/sales/1 or /admin/sales/1.json
  def destroy
    @admin_sale.destroy
    respond_to do |format|
      format.html { redirect_to admin_sales_url, notice: "Sale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_sale
      @admin_sale = Admin::Sale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_sale_params
      params.require(:admin_sale).permit(:saleCode, :customer_id, :product_id, :quantity, :amount)
    end
end
