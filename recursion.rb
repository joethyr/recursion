#
def fibs(num)
  a = 0
  b = 1
  num.times do
    temp = a
    a = b
    b = temp + b
  end
  a
end

def fibs_rec(num)
  return num if num < 2

  fibs_rec(num-1) + fibs_rec(num-2)
end

def merge_sort(arr)
  # base case
  return arr if arr.length < 2

  half = arr.length / 2
  left = merge_sort(arr[0...half])
  right = merge_sort(arr[half..-1])
  merge(left, right)
end

def merge(left, right, sorted_arr = [])
  until left.empty? || right.empty?
    if left[0] < right[0]
      sorted_arr << left.shift
    else
      sorted_arr << right.shift
    end
  end
  sorted_arr + left + right
end


puts fibs(8)
puts fibs_rec(8)
p merge_sort([2, 4, 1, 6])
