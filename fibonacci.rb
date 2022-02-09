def fibs(num)
  result = []
  for i in (0..(num - 1)) do
    if i === 0
      result << 0
    elsif i === 1
      result << 1
    else
      result << result[i - 1] + result[i - 2]
    end
  end
  result
end

p fibs(10)
# => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

def fibs_rec(num)
  if num == 1
    [0]
  elsif num == 2
    [0, 1]
  else
    array = fibs_rec(num - 1)
    array << array[-1] + array[-2]
  end
end

p fibs_rec(10)
# => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
