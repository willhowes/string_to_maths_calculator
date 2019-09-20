class ZeroDivisionError < StandardError
  def initialize(msg="Cannot divide by zero", exception_type="custom")
    @exception_type = exception_type
    super(msg)
  end
end

def maths_evaluator(sum_as_string)
  return ["", 0] if sum_as_string.empty?

  split_sum = sum_as_string.split(' ')

  first_number = split_sum[0].to_f
  second_number = split_sum[2].to_f

  case split_sum[1]

  when '+'
    result = first_number + second_number

  when '-'
    result = first_number - second_number

  when '*'
    result = first_number * second_number

  when '/'
    raise ZeroDivisionError if first_number == 0 || second_number == 0
    result = first_number / second_number
    
  else
    result = sum_as_string.to_i
  end

  return ["#{sum_as_string}", result]
end
