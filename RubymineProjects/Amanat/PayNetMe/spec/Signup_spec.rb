require 'rspec'
include WaitHelper

describe 'Signup :' do

  it 'Should allow user to signup ' do
wait_true(15){@driver.find_element(:id,"input-email_or_phone").displayed?}
@driver.find_element(:id,"input-email_or_phone").send_keys(rand_m())

#step 2
    wait_true(15){@driver.find_element(:id,"input-password").displayed?}
    @driver.find_element(:id,"input-password").send_keys("Iqaz@WSX")

    #step 3 enter rip code
    wait_true(15){@driver.find_element(:id,"input-postalcode").displayed?}
    @driver.find_element(:id,"input-postalcode").send_keys("95035")

sleep(2)
    wait_true(15){@driver.find_element(:id,"button-sign-up").displayed?}
    @driver.find_element(:id,"button-sign-up").click

    sleep(10)

  end

  it "should through error on wrong email format " do
    wait_true(15){@driver.find_element(:id,"input-email_or_phone").displayed?}
    @driver.find_element(:id,"input-email_or_phone").send_keys("helloghh.com")

    wait_true(15){@driver.find_element(:id,"error-email_or_phone").displayed?}
    @driver.find_element(:id,"error-email_or_phone").text.should eq "Email or phone number is not valid."



    sleep(10)

  end

  it "should trow error wrong zip code" do
    wait_true(15){@driver.find_element(:id,"input-postalcode").displayed?}
    @driver.find_element(:id,"input-postalcode").send_keys("61156")

    @driver.find_element(:id,"registration-form").click



sleep(10)
  end
end