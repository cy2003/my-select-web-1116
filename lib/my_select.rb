def my_select(arr)
  new_arr = []
  i = 0
  while i < arr.length
    if (yield arr[i]) == true
      new_arr << arr[i]
    end
    i += 1
  end
  new_arr
end

nums = [1, 2, 3, 4, 5]
my_select(nums) do |num|
  num.even?
end
