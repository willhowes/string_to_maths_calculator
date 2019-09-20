private
def handle_addition(sum)
  numbers = []
  sum.delete('^0-9').split('').each do |number|
    numbers << number
  end
  result = numbers[0].to_i + numbers[1].to_i
  return ["#{sum}", result]
end

def maths_evaluator(sum_as_string)
  numbers = []

  sum_as_string_as_array = sum_as_string.split('')
  if sum_as_string_as_array.include?('+')
    return handle_addition(sum_as_string)
  end
  if sum_as_string.split('').include?('-')
    sum_as_string.delete('^0-9').split('').each do |number|
      numbers << number
    end
    result = numbers[0].to_i - numbers[1].to_i
  end
  if sum_as_string_as_array.include?('*')
    sum_as_string.delete('^0-9').split('').each do |number|
      numbers << number
    end
    result = numbers[0].to_i * numbers[1].to_i
  end
  return ["#{sum_as_string}", result]
end
