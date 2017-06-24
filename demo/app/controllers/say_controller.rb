class SayController < ApplicationController
  def hello
    @time = Time.now
    @jia = "jia"
  end

  def goodbye
  end
end
