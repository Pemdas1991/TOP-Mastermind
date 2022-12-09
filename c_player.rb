# frozen_string_literal: true

class CPlayer
  def initialize
    @prng = Random.new
    @rand_array = Array.new(4, 0)
  end

  def generate_code
    @rand_array.each_index { |i| @rand_array[i] = @prng.rand(6) + 1 }
  end

  def convert_to_color
    @rand_array.each_index do |i|
      # colors: red, orange,  yellow, green, blue, purple
      @rand_array[i] =
        case @rand_array[i]
        when 6
          'R'
        when 5
          'O'
        when 4
          'Y'
        when 3
          'G'
        when 2
          'B'
        else
          'P'
        end
    end
    @rand_array
  end
end
