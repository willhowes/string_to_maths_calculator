def maths_evaluator(sum_as_string)
  split_sum = sum_as_string.split(' ')

  case split_sum[1]

  when '+'
    result = split_sum[0].to_i + split_sum[2].to_i

  when '-'
    result = split_sum[0].to_i - split_sum[2].to_i

  when '*'
    result = split_sum[0].to_i * split_sum[2].to_i

  when '/'
    result = split_sum[0].to_i / split_sum[2].to_i
  end
  return ["#{sum_as_string}", result]
end
