def merge_sort(array)
  return array if array.size < 2
  halfway = array.size / 2 - 1

  left = merge_sort(array[0..halfway])

  right = merge_sort(array[(halfway + 1)..-1])

  merge(left, right)
end

def merge(left, right)
  merged = []
  left.each_with_index do |l_num, i|
    right.each_with_index do |r_num, j|
      next if !r_num

      if l_num < r_num
        merged << l_num
        left[i] = nil
        break
      else
        merged << r_num
        right[j] = nil
      end
    end
  end
  
  if left.all?(nil)
    merged.concat(right.select{ |x| x })
  else
    merged.concat(left.select{ |x| x })
  end
  merged
end

p merge_sort([3, 2, 5, 4, 9, 7, 8, 10, 200, 22, 11])

# => [2, 3, 4, 5, 7, 8, 9, 10, 11, 22, 200]