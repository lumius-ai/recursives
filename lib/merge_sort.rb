# Function for merging two arrays(least to greatest)
def merge(array, left, right, mid)
  n1 = mid - left + 1
  n2 = right - mid
  
  # Temporary arrays
  left_array = []
  right_array = []
  output = 0

  for i in 0..n1
    left_array[i] = array[i]
  end

  for j in 0..n2
    right_array[i] = array[mid + 1 + j]
  end

  # indices for left, right and output arrays
  i = 0
  j = 0
  k = 0

  # Sorting the elements
  while i < n1 and j < n2
    if left_array[i] <= right_array[j]
      output[k] = left_array[j]
      i += 1
    else 
      output[k] = right_array[j]
      j += 1
    end
    k += 1
  end

  # Adding remaining elements
  while i < n1
    output[k] = left_array[i]
    i += 1
    k += 1
  end

  while j < n2
    output[k] = right_array[j]
    j += 1
    k += 1
  end
    return output
end

# Merge_sort implementation
def merge_sort(array, left, right)
  if left < right
    mid = (right + left) / 2

    left_sorted = merge_sort(array, left, mid)
    right_sorted = merge_sort(array, (mid + 1), right)
    return merge(array, left, right, mid)
  end

  return "ERROR"


  
end