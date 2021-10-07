require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference("Product.count") do
      post products_url, params: { product: { amount: @product.amount, catchphrase: @product.catchphrase, classification: @product.classification, country_of_origin: @product.country_of_origin, daily_dosage: @product.daily_dosage, detail: @product.detail, expiration_date_information: @product.expiration_date_information, jan_code: @product.jan_code, name: @product.name, nutritional_information: @product.nutritional_information, precautions_for_storage_and_handling: @product.precautions_for_storage_and_handling, precautions_for_use: @product.precautions_for_use, price: @product.price, principal_component: @product.principal_component, product_category: @product.product_category, raw_materials: @product.raw_materials, references: @product.references, target_animal: @product.target_animal } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { amount: @product.amount, catchphrase: @product.catchphrase, classification: @product.classification, country_of_origin: @product.country_of_origin, daily_dosage: @product.daily_dosage, detail: @product.detail, expiration_date_information: @product.expiration_date_information, jan_code: @product.jan_code, name: @product.name, nutritional_information: @product.nutritional_information, precautions_for_storage_and_handling: @product.precautions_for_storage_and_handling, precautions_for_use: @product.precautions_for_use, price: @product.price, principal_component: @product.principal_component, product_category: @product.product_category, raw_materials: @product.raw_materials, references: @product.references, target_animal: @product.target_animal } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference("Product.count", -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
