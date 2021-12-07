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

puts fibs(8)
puts fibs_rec(8)
