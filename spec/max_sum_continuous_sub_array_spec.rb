require_relative '../max_sum_continuous_sub_array.rb'

RSpec.describe MaxSumContinuousSubArray do
  context '#execute - check if sub array and max_sum are set on object correctly' do
    it 'When all elements are positive - will return entire array as sub array' do
      arr = [1,2,3,4,5,6,7]
      obj = MaxSumContinuousSubArray.new(arr)
      obj.execute
      expect(obj.max_sum).to eql 28
      expect(obj.resultant_sub_array).to eq [1,2,3,4,5,6,7]
    end

    it 'When all elements are positive but last element is -ve - will skip last element in sub array' do
      arr = [1,2,3,4,5,6,7,0]
      obj = MaxSumContinuousSubArray.new(arr)
      obj.execute
      expect(obj.max_sum).to eql 28
      expect(obj.resultant_sub_array).to eq [1,2,3,4,5,6,7]
    end

    it 'Combination of +ve and -ve elements - case 1' do
      arr = [2,-1,2,0,-1]
      obj = MaxSumContinuousSubArray.new(arr)
      obj.execute
      expect(obj.max_sum).to eql 3
      expect(obj.resultant_sub_array).to eq [2,-1,2]
    end

    it 'Combination of +ve and -ve elements - case 2 (return smallest array)' do
      arr = [2,1,0,0,-9,2,-9,2,0,1]
      obj = MaxSumContinuousSubArray.new(arr)
      obj.execute
      expect(obj.max_sum).to eql 3
      expect(obj.resultant_sub_array).to eq [2,1]
    end
  end
end
