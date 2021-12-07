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

puts fibs(8)

