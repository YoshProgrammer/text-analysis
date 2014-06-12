if ARGV.size == 0
  puts "You didn't tell us what file to read.  Try this command:"
  puts ""
  puts "    ruby file_read.rb random_file.txt"
  exit # This exits the program
end

file_name = ARGV[0]  # Set the value of file_name to the first command-line argument
string = File.read(file_name) # Read the contents of the file specified by file_name

def sanitize(string)
  string.downcase
end

def string_split(string)
  sanitize(string).split('').sort
end

def item_counts(data)
  counts = Hash.new(0)                                  
  data.each do |item|
    if counts.has_key?(item)                    # if item already has a key, then add to the running total
      counts[item] += 1 
    else
      counts[item] = 1                        # if this is the first instance of the item, just assign value of 1                                                                                                               
    end                                                                                                                                                 
  end 
    sum = 0
    counts.values.each {|a| sum+=a}
      puts sum
  data.each do |value|
    total = (counts.values[0] / sum)
  end
  print total
  end 
  counts.each do |key, value|
    puts "The key is '#{key}' and the value is '#{value}'"                                        # This returns the "counts" hash
  end
end

#def percent(value)
#  value.each do |item|
#    total = counts[item] / sum  
#  end
# print total
#end



def final_input(string)
  item_counts(string_split(string))
end

final_input(string)


# Need to implement sum into the counts[item] so that it
# gives the percentage that the character is appearing

# figure out how to do this, and then attempt histogram


