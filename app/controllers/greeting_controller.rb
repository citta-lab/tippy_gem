class GreetingController < ApplicationController
  def intialize(name)
    byebug
    @name = name;
  end
  def show_endpoint
    puts "Hello, " +@name+ " !"
  end
end
