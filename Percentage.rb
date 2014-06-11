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
      counts[item] = 1                          # if this is the first instance of the item, just assign value of 1                                                                                                               
    end                                                                                                                                              
  end
  counts.each do |key, value|
      puts "The key is '#{key}' and the value is '#{value}'"                                        # This returns the "counts" hash
  end
  sum = 0
  counts.values.each {|a| sum+=a}
  puts "The overall sum of the values are '#{sum}'"

  #puts (counts.values[10] / 324)             #Why does this return 0?
  puts (counts.values[30] / 324)
  puts (324 / counts.values[30])
  puts counts.values[30]
end

def final_input(string)
  item_counts(string_split(string))
end

final_input(string)

# Questions #

# 1.) How do I implement the sum into the problem?
# I am quite confused by how I can get this to divide by
# the counts.values which equals 324

# I also am confused why line 36 returns 0, but line 37
# returns 40. That would mean that index[30] = 8.1
# If it equals 8.1, then line 36 should return 0.025.

# When I run like 38, it returns 8 so I am just a tad confused
# Do I have to set some sort of rule that decimals are fine
# to return?

# Can you point me in the right direction? I believe I am
# overlooking a simple point, and need a nudge.

#



