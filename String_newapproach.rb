def string_split(array)
  array.split("")
end


def item_counts(array)
  counts = {}                                   
  array.split("").each do |item|
    if counts.has_key?(item)                    # if item already has a key, then add to the running total
      counts[item] = counts[item] + 1
    else
      counts[item] = 1                          # if this is the first instance of the item, just assign value of 1                                                                                                               
    end                                                                                                                                               
  end
  counts                                        # This returns the "counts" hash
end

puts item_counts("bill joe bob")
puts item_counts("james dill richard")

