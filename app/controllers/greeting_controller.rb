class GreetingController < ApplicationController
  def initialize
    @name = 'Engine Test';
  end
  def show_endpoint
    puts "Hello, " +@name+ " !"
  end
end
