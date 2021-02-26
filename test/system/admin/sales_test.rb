require "application_system_test_case"

class Admin::SalesTest < ApplicationSystemTestCase
  setup do
    @admin_sale = admin_sales(:one)
  end

  test "visiting the index" do
    visit admin_sales_url
    assert_selector "h1", text: "Admin/Sales"
  end

  test "creating a Sale" do
    visit admin_sales_url
    click_on "New Admin/Sale"

    fill_in "Amount", with: @admin_sale.amount
    fill_in "Customer", with: @admin_sale.customer_id
    fill_in "Product", with: @admin_sale.product_id
    fill_in "Quantity", with: @admin_sale.quantity
    fill_in "Salecode", with: @admin_sale.saleCode
    click_on "Create Sale"

    assert_text "Sale was successfully created"
    click_on "Back"
  end

  test "updating a Sale" do
    visit admin_sales_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @admin_sale.amount
    fill_in "Customer", with: @admin_sale.customer_id
    fill_in "Product", with: @admin_sale.product_id
    fill_in "Quantity", with: @admin_sale.quantity
    fill_in "Salecode", with: @admin_sale.saleCode
    click_on "Update Sale"

    assert_text "Sale was successfully updated"
    click_on "Back"
  end

  test "destroying a Sale" do
    visit admin_sales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sale was successfully destroyed"
  end
end
