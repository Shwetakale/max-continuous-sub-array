# This class will find sub array with maximum sum
class MaxSumContinuousSubArray
  attr_accessor :resultant_sub_array, :input, :max_sum

  def initialize(input_arr)
    @input = input_arr
    @resultant_sub_array = []
    @max_sum = input[0]
  end

  def execute
    
    # Loop over the input and find out sub array with max sub starting from
    # current index
    
    @input.length.times do |index|
      find_max_sub_array_from_current_index(index)
    end
    print_result_to_console
  end

  private

  # Find sub array with max sum from current index and set it to
  # @resultant_sub_array
  # which is result array
 
  def find_max_sub_array_from_current_index(index)
    current_sub_array = input[index..-1]
    current_sub_array = max_sub_array(current_sub_array)
    
    # If @resultant_sub_array is already having max sum do not set new array as resultant_sub_array
    # or if both has eql sum them check the length as we want smallest sub array
    # with max sum
  
    return if(@max_sum > current_sub_array.sum) || (@max_sum.eql?(current_sub_array.sum) && (current_sub_array.length > @resultant_sub_array.length))
    set_sub_array_and_max_sum(current_sub_array)
  end

  def max_sub_array(current_sub_array)
    len = current_sub_array.length
    current_max = current_sub_array[0]
    current_end = 0
    len.times do |index|
      sum = current_sub_array[0..index].sum
      next if sum <= current_max
      current_end = index
      current_max = sum
    end
    current_sub_array[0..current_end]
  end

  def set_sub_array_and_max_sum(sub_array)
    @max_sum = sub_array.sum
    @resultant_sub_array = sub_array
  end

  def print_result_to_console
    puts '----------------------------------------------'
    puts "Input Array = #{@input}"
    puts "Max Sum = #{@max_sum}"
    puts "SubArray with max sum = #{@resultant_sub_array}"
  end
end
