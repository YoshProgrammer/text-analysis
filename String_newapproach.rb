def string_split(array)
  array.split("")
end


def item_counts(array)
  counts = {}                                   
  array.downcase.split("").each do |item|
    if counts.has_key?(item)                    # if item already has a key, then add to the running total
      counts[item] = counts[item] + 1
    else
      counts[item] = 1                          # if this is the first instance of the item, just assign value of 1                                                                                                               
    end                                                                                                                                               
  end
  counts                                        # This returns the "counts" hash
end

puts item_counts("BILL joe bob")
puts item_counts("james dill richard")



# QUESTIONS
# I implemented the .split("") method in line 8 but I still am having trouble understanding how I would pass in
# the output of the first method as the input for the second method.
# If you look at https://github.com/JoshEnplug/text-analysis/commit/0fe85e1d73228ec9769134288b2f55d02fa48bb4
# that shows a couple different methods I was trying, but none of them successfully worked
# I get that I need to first run string_split so it turns it into an array, that then the each function can run
# and count the frequency of the characters just unsure how to implement that.
