require "test_helper"

class CurrenciesControllerTest < ActionDispatch::IntegrationTest
  test "get all currencies" do
    get "/api/currencies"

    assert_response :success

    json = JSON.parse(response.body)

    assert (json[0]["num_code"] == "840"), 'expected 840'
    
    assert (Currency.count == 2)
  end

  test "get single currency" do
    get "/api/currencies/840"

    assert_response :success

    json = JSON.parse(response.body)

    assert (json[0]["char_code"] == "USD"), 'expected USD'
  end
end
