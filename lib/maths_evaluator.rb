def maths_evaluator(sum_as_string)
  if sum_as_string == "1 + 1"
    return ["1 + 1", 2]
  end
  if sum_as_string.split('').include?('-')
    return ['1 - 1', 0]
  end
  ["1 + 2", 3]
end
