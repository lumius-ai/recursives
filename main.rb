require 'pry-byebug'

# Function for merging two arrays(least to greatest)
# Function for merging two arrays(least to greatest)
def merge(a1, a2)
  i = 0
  j = 0
  out = []

  while i < a1.length and j < a2.length
    if a1[i] <= a2[j]
      out.append(a1[i])
      i += 1
    else
      out.append(a2[j])
      j += 1
    end
  end

  while i < a1.length
    out.append(a1[i])
    i += 1
  end

  while j < a2.length
    out.append(a2[j])
    j += 1
  end
  return out
end

# Merge_sort implementation
def merge_sort(array)
  max = array.length
  # base case
  if max == 1
    return array
  end
  # get midpoint of current array
  if max > 0
    mid = max / 2
  end

  # Call itself on left and right subarrays
  left_array = merge_sort(array[0...mid])
  right_array = merge_sort(array[mid...max])

  # merge and return left + right
  return merge(left_array, right_array)
end

def main()
  a = [5, 4, 3, 2, 1]
  binding.pry
  a = merge_sort(a)

  puts(a)
end

main()