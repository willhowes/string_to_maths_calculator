class ZeroDivisionError < StandardError
  def initialize(msg = 'Cannot divide by zero', exception_type = 'custom')
    @exception_type = exception_type
    super(msg)
  end
end

def maths_evaluator(sum_as_string)
  return ["", 0] if sum_as_string.empty?

  split_sum = sum_as_string.split(' ')

  return ["#{sum_as_string}", sum_as_string.to_f] if split_sum.length == 1

  numbers = []
  
  split_sum.each_with_index do |char, index|
    numbers << char.to_f unless index == 1
  end

  if split_sum[1] == "/" && numbers[0] == 0.0 || numbers[1] == 0.0
    raise ZeroDivisionError
  end

  return ["#{sum_as_string}", numbers.reduce(split_sum[1].to_sym)]
end
