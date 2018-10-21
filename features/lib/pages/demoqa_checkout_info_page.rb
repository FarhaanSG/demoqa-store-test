class DemoQACheckoutInfo
  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  CONTINUE_BUTTON_ID = ".step2"
  JAPAN_COUNTRY_OPTION = "option[value='JP']"
  STATE_FIELD_ID = "collected_data[15]"
  USERNAME_FIELD_ID = "#log"
  PASSWORD_FIELD_ID = "#pwd"
  LOGIN_BUTTON_ID = "#login"
  REMEMBER_ME_ID = "#rememberme"
  EMAIL_FIELD_ID = "wpsc_checkout_form_9"
  FIRST_NAME_FIELD_ID = "wpsc_checkout_form_2"
  LAST_NAME_FIELD_ID = "wpsc_checkout_form_3"
  ADDRESS_FIELD_ID = "wpsc_checkout_form_4"
  CITY_FIELD_ID = "wpsc_checkout_form_5"
  PROVINCE_FIELD_ID = "wpsc_checkout_form_6"
  SECOND_DROPDOWN_COUNTRY_ID = "#uniform-wpsc_checkout_form_7"
  POST_CODE_FIELD_ID = "wpsc_checkout_form_8"
  PHONE_FIELD_ID = "wpsc_checkout_form_18"
  SAME_AS_BILLING_CHECKBOX_ID = "#shippingSameBilling"
  PURCHASE_BUTTON_CLASS = ".make_purchase.wpsc_buy_button"
  SUMMARY_OF_ORDERED_PRODUCTS = ".wpsc-purchase-log-transaction-results"

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def find_continue_button
    find(CONTINUE_BUTTON_ID)
  end

  def click_continue_button
    find_continue_button.click
  end

  def select_country_dropdown
    find(JAPAN_COUNTRY_OPTION).click
  end

  def input_state_province(state)
    fill_in(STATE_FIELD_ID, with: state)
  end

  def click_calculate_button
    find(".wpsc_change_country").find("[name=\"wpsc_submit_zipcode\"]").click
  end

  def shipping_price_change
    if find(".pricedisplay.checkout-shipping", text: '12')
      return true
    end
    return false
  end

  def find_username_field
    find(USERNAME_FIELD_ID)
  end

  def input_username(username)
    find_username_field.fill_in(with: username)
  end

  def find_password_field
    find(PASSWORD_FIELD_ID)
  end

  def input_password(password)
    find_password_field.fill_in(with: password)
  end

  def find_login_button
    find(LOGIN_BUTTON_ID)
  end

  def click_login_button
    find_login_button.click
  end

  def input_email(email)
    fill_in(EMAIL_FIELD_ID, with: email)
  end

  def input_first_name(firstname)
    fill_in(FIRST_NAME_FIELD_ID, with: firstname)
  end

  def input_last_name(lastname)
    fill_in(LAST_NAME_FIELD_ID, with: lastname)
  end

  def input_address(address)
    fill_in(ADDRESS_FIELD_ID, with: address)
  end

  def input_city(city)
    fill_in(CITY_FIELD_ID, with: city)
  end

  def input_province(province)
    fill_in(PROVINCE_FIELD_ID, with: province)
  end

  def second_counrty_dropdown
    find(SECOND_DROPDOWN_COUNTRY_ID).find(JAPAN_COUNTRY_OPTION).click
  end

  def input_postcode(postcode)
    fill_in(POST_CODE_FIELD_ID, with: postcode)
  end

  def input_phone_number(phone)
    fill_in(PHONE_FIELD_ID, with: phone)
  end

  def click_same_as_billing
    find(SAME_AS_BILLING_CHECKBOX_ID).click
  end

  def click_purchase_button
    find(PURCHASE_BUTTON_CLASS).click
  end

  def find_summary_of_products
    find(SUMMARY_OF_ORDERED_PRODUCTS).visible?
  end

end
