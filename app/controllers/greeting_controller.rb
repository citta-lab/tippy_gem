class GreetingController < ApplicationController
  def initialize name:
    byebug
    @name = name;
  end
  def show_endpoint
    puts "Hello, " +@name+ " !"
  end
end
