def my_select(collection)
  if block_given?
    i = 0
    new_array = []
    while i < collection.length
      thing = yield collection[i]
      if thing == true
        new_array << collection[i]
        i += 1
      else
        i += 1
      end
    end
    new_array
  end
end
