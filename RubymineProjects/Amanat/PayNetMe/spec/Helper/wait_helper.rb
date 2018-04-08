module WaitHelper

  def wait_true(no_of_sec,&block)
    wait = Selenium::WebDriver::Wait.new(:timeout=>no_of_sec)
    wait.until &block
  end


  def rand_m()
    num = rand(1..98989089)
    emlID = "test" + "#{num}" + "@gmail.com"
    return emlID
  end
end