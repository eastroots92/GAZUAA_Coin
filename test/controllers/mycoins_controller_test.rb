require 'test_helper'

class MycoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mycoin = mycoins(:one)
  end

  test "should get index" do
    get mycoins_url
    assert_response :success
  end

  test "should get new" do
    get new_mycoin_url
    assert_response :success
  end

  test "should create mycoin" do
    assert_difference('Mycoin.count') do
      post mycoins_url, params: { mycoin: { category: @mycoin.category, coinname: @mycoin.coinname, price: @mycoin.price, user_id: @mycoin.user_id } }
    end

    assert_redirected_to mycoin_url(Mycoin.last)
  end

  test "should show mycoin" do
    get mycoin_url(@mycoin)
    assert_response :success
  end

  test "should get edit" do
    get edit_mycoin_url(@mycoin)
    assert_response :success
  end

  test "should update mycoin" do
    patch mycoin_url(@mycoin), params: { mycoin: { category: @mycoin.category, coinname: @mycoin.coinname, price: @mycoin.price, user_id: @mycoin.user_id } }
    assert_redirected_to mycoin_url(@mycoin)
  end

  test "should destroy mycoin" do
    assert_difference('Mycoin.count', -1) do
      delete mycoin_url(@mycoin)
    end

    assert_redirected_to mycoins_url
  end
end
