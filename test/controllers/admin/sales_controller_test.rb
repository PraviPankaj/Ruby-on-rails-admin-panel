require "test_helper"

class Admin::SalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_sale = admin_sales(:one)
  end

  test "should get index" do
    get admin_sales_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_sale_url
    assert_response :success
  end

  test "should create admin_sale" do
    assert_difference('Admin::Sale.count') do
      post admin_sales_url, params: { admin_sale: { amount: @admin_sale.amount, customer_id: @admin_sale.customer_id, product_id: @admin_sale.product_id, quantity: @admin_sale.quantity, saleCode: @admin_sale.saleCode } }
    end

    assert_redirected_to admin_sale_url(Admin::Sale.last)
  end

  test "should show admin_sale" do
    get admin_sale_url(@admin_sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_sale_url(@admin_sale)
    assert_response :success
  end

  test "should update admin_sale" do
    patch admin_sale_url(@admin_sale), params: { admin_sale: { amount: @admin_sale.amount, customer_id: @admin_sale.customer_id, product_id: @admin_sale.product_id, quantity: @admin_sale.quantity, saleCode: @admin_sale.saleCode } }
    assert_redirected_to admin_sale_url(@admin_sale)
  end

  test "should destroy admin_sale" do
    assert_difference('Admin::Sale.count', -1) do
      delete admin_sale_url(@admin_sale)
    end

    assert_redirected_to admin_sales_url
  end
end
