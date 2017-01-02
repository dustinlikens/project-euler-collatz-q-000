def even_next(n)
  n / 2
end

def odd_next(n)
  n * 3 + 1
end

def next_value(n)
  n.even? ? even_next(n) : odd_next(n)
end

def collatz(n)
  array = [n]
  until array[-1] == 1 do
    array << (n = next_value(n))
  end
  return array
end

def longest_collatz
  high = 0
  number = 0
  (1..999999).each do |n|
    if collatz(n).count > high
      high = collatz(n).count
      number = n
    end
  end
  return number
end