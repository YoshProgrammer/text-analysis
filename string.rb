def sanitize(string)
  string.downcase
end
#print sanitize("BILL JANE")


def string_split(string)
  sanitize(string).split('')
end

#print string_split("BILL JANE")
#print string_split("bob jane louis")  

#puts "bob".split("")

def item_counts(string)
  counts = {}                                   

  string.each do |item|
    if counts.has_key?(item)                    # if item already has a key, then add to the running total
      counts[item] = counts[item] + 1
    else
      counts[item] = 1                          # if this is the first instance of the item, just assign value of 1                                                                                                               
    end                                                                                                                                               
  end
  counts                                        # This returns the "counts" hash
end

#puts item_counts([1,2,1,2,1]) 
#puts item_counts(["a","b","a","b","a","ZZZ"]) 
#puts item_counts([]) 
#puts item_counts(["hi", "hi", "hi"]) 
#puts item_counts([true, nil, "dinosaur"]) 
#puts item_counts(["a","a","A","A"]) 


def final_input(string)
  item_counts(string_split(string))
end


puts final_input("bob jane loou gggg jane jsejfjgjgjsdjggwefkgjjgpgj[qgjorejgpqoe")

#p item_counts([1,2,1,2,1]) == {1 => 3, 2 => 2}
#p item_counts(["a","b","a","b","a","ZZZ"]) == {"a" => 3, "b" => 2, "ZZZ" => 1}
#p item_counts([]) == {}
#p item_counts(["hi", "hi", "hi"]) == {"hi" => 3}
#p item_counts([true, nil, "dinosaur"]) == {true => 1, nil => 1, "dinosaur" => 1}
#p item_counts(["a","a","A","A"]) == {"a" => 2, "A" => 2}



# Questions #####
# On line 11, I attempted to pass in the 'String_Split(array)' result as the definition of array'
# On line 31-36, I tried passing it in as a new defined method like I had seen in Exercise_36 in the katas
# Can you point me in the right direction again?