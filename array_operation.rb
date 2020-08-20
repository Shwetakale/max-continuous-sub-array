require_relative './max_sum_continuous_sub_array.rb'

# This will perform different array operations
class ArrayOperation
  attr_accessor :length, :input

  def initialize
    @length = 0
    @input = []
  end

  def execute
    parse_input
    MaxSumContinuousSubArray.new(@input).execute
  end

  def parse_input
    loop do
      puts 'Enter length of your array (Ensure length is > 0): '
      @length = gets.chomp.to_i
      break if @length.positive?
    end

    puts 'Enter array elements :'
    @length.times { |_count| @input << gets.chomp.to_i }
  end
end

ArrayOperation.new.execute
