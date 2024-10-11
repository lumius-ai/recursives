
# Returns an array with the first n numbers of the fibonacci seq
def fib(n)
  out = []
  if n == 0
    return out
  end
  for i in 0...n
    if i == 1
      out.append(1)
    else
      out.append(out.fetch(-1, 0) + out.fetch(-2, 0))
    end
  end
  return out
end

# Returns an array with the first n numbers recursively
def fib_rec(n)
  # Base case
  if n == 0
    return []
  end
  # When n = 2, should return [0, 1]
  if n == 1
    array = [0]
    return array
  end
  # Recursive
  array = fib_rec(n - 1)
  # Case 1: n is two
  if n == 2
    array.append(1)
    return array
  # Case 2: any other number
  else
    array.append(array.fetch(-1, 0) + array.fetch(-2 ,0))
  end


end
