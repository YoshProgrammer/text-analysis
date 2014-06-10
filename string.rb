
def string_split(list)
	list.split(",")
end

puts string_split(["bob","jane","louis"])  

#puts "bob".split("")

def item_counts(array)
  counts = {} 																	

  array.each do |item|
		if counts.has_key?(item)                    # if item already has a key, then add to the running total
			counts[item] = counts[item] + 1
		else
			counts[item] = 1 													# if this is the first instance of the item, just assign value of 1					 																																																			
		end																																																																								
  end
  counts 																				# This returns the "counts" hash
end

p item_counts([1,2,1,2,1]) 
p item_counts(["a","b","a","b","a","ZZZ"]) 
p item_counts([]) 
p item_counts(["hi", "hi", "hi"]) 
p item_counts([true, nil, "dinosaur"]) 
p item_counts(["a","a","A","A"]) 

p item_counts([1,2,1,2,1]) == {1 => 3, 2 => 2}
p item_counts(["a","b","a","b","a","ZZZ"]) == {"a" => 3, "b" => 2, "ZZZ" => 1}
p item_counts([]) == {}
p item_counts(["hi", "hi", "hi"]) == {"hi" => 3}
p item_counts([true, nil, "dinosaur"]) == {true => 1, nil => 1, "dinosaur" => 1}
p item_counts(["a","a","A","A"]) == {"a" => 2, "A" => 2}

