class GreetingController < ApplicationController
  def intialize(name)
    @name = name;
  end
  def show_endpoint
    puts "Hello, " +@name+ " !"
  end
end
