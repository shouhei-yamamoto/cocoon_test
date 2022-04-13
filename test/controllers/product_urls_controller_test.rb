require 'test_helper'

class ProductUrlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_url = product_urls(:one)
  end

  test "should get index" do
    get product_urls_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url_url
    assert_response :success
  end

  test "should create product_url" do
    assert_difference('ProductUrl.count') do
      post product_urls_url, params: { product_url: { blog_id: @product_url.blog_id, price: @product_url.price } }
    end

    assert_redirected_to product_url_url(ProductUrl.last)
  end

  test "should show product_url" do
    get product_url_url(@product_url)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url_url(@product_url)
    assert_response :success
  end

  test "should update product_url" do
    patch product_url_url(@product_url), params: { product_url: { blog_id: @product_url.blog_id, price: @product_url.price } }
    assert_redirected_to product_url_url(@product_url)
  end

  test "should destroy product_url" do
    assert_difference('ProductUrl.count', -1) do
      delete product_url_url(@product_url)
    end

    assert_redirected_to product_urls_url
  end
end
