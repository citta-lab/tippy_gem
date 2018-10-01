class String
  def integer?
    return true if self =~ /^[1-9]\d*(\.\d+)?$/
    false
  end
end

module Tippy
  class Builder

    #initialize with total and gratuity from customer
    def initialize total:, gratuity:
      @total = total
      @gratuity = gratuity
    end

    #based on whether gratuity is number or string we calculate and return it
    def generate
      return calculation if number_based?
      string_based
    end

    #if gratuity is number, then we send number to calculate
    def number_based?
      (@gratuity_is_a? Numeric) || (@gratuity.integer?)
    end

    # if we string, then we call calculate once we figureout what amount
    def string_based
      case @gratuity.downcase
      when 'high' then calculation 25
      when 'standard' then calculation 18
      when 'low' then calculation 15
      when 'default' then calculation 20
      end
    end

    # all calculations will be done here
    def calculation gratuity = @gratuity
      @total += @total * (gratuity.to_f / 100)
    end

  end
