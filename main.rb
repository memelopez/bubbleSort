def bubble_sort(array)
  sorted = false
  until sorted
    sorted = true
    (array.length - 1).times do |i|
      if array[i + 1] < array[i]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
  end
  array
end
unsorted_array = [10, 2, 8, 1, 0]
puts 'Unsorted: ' + unsorted_array.join(', ')
puts 'Sorted: ' + bubble_sort(unsorted_array).join(', ')

def bubble_sort_by(array)
  sorted = false
  until sorted
    sorted = true
    (array.length - 1).times do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
  end
  array
end

unsorted_strings = %w[hi hello hey]
puts 'Unsorted-strings: ' + unsorted_strings.join(', ')
result = bubble_sort_by(unsorted_strings) do |left, right|
  left.length - right.length
end

puts 'Sorted-strings: ' + result.join(', ')
