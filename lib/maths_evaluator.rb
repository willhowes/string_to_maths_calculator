def maths_evaluator(sum_as_string)
  split_sum = sum_as_string.split(' ')
  if split_sum.include?('+')
    result = split_sum[0].to_i + split_sum[2].to_i
  end
  if sum_as_string.split('').include?('-')
    result = split_sum[0].to_i - split_sum[2].to_i
  end
  if split_sum.include?('*')
    result = split_sum[0].to_i * split_sum[2].to_i
  end
  ["#{sum_as_string}", result]
end
