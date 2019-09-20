def maths_evaluator(sum_as_string)
  if sum_as_string.split('').include?('+')
    numbers = []
    sum_as_string.delete('^0-9').split('').each do |number|
      numbers << number
    end
    result = numbers[0].to_i + numbers[1].to_i
    return ["#{sum_as_string}", result]
  end
  if sum_as_string.split('').include?('-')
    numbers = []
    sum_as_string.delete('^0-9').split('').each do |number|
      numbers << number
    end
    result = numbers[0].to_i - numbers[1].to_i
    return ["#{sum_as_string}", result]
  end
  if sum_as_string.split('').include?('*')
    numbers = []
    sum_as_string.delete('^0-9').split('').each do |number|
      numbers << number
    end
    result = numbers[0].to_i * numbers[1].to_i
    return ["#{sum_as_string}", result]
  end
end
