require "application_system_test_case"

class ProductUrlsTest < ApplicationSystemTestCase
  setup do
    @product_url = product_urls(:one)
  end

  test "visiting the index" do
    visit product_urls_url
    assert_selector "h1", text: "Product Urls"
  end

  test "creating a Product url" do
    visit product_urls_url
    click_on "New Product Url"

    fill_in "Blog", with: @product_url.blog_id
    fill_in "Price", with: @product_url.price
    click_on "Create Product url"

    assert_text "Product url was successfully created"
    click_on "Back"
  end

  test "updating a Product url" do
    visit product_urls_url
    click_on "Edit", match: :first

    fill_in "Blog", with: @product_url.blog_id
    fill_in "Price", with: @product_url.price
    click_on "Update Product url"

    assert_text "Product url was successfully updated"
    click_on "Back"
  end

  test "destroying a Product url" do
    visit product_urls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product url was successfully destroyed"
  end
end
