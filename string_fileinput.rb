if ARGV.size == 0
  puts "You didn't tell us what file to read.  Try this command:"
  puts ""
  puts "    ruby file_read.rb random_file.txt"
  exit # This exits the program
end

# If we've reached this line of code, we know the user supplied us with at least
# one command-line argument. We'll assume it's a file for us to read.

file_name = ARGV[0]  # Set the value of file_name to the first command-line argument
file_contents = File.read(file_name) # Read the contents of the file specified by file_name

def sanitize(file_contents)
  file_contents.downcase
end



def string_split(file_contents)
  sanitize(file_contents).split('').sort { |a,b| a <=> b}
end


def item_counts(file_contents)
  counts = {}                                   

  file_contents.each do |item|
    if counts.has_key?(item)                    # if item already has a key, then add to the running total
      counts[item] = counts[item] + 1
    else
      counts[item] = 1                          # if this is the first instance of the item, just assign value of 1                                                                                                               
    end                                                                                                                                                 
  end
  counts                                        # This returns the "counts" hash
end



def final_input(file_contents)
  item_counts(string_split(file_contents))
end


puts final_input(file_contents)




# Questions:
# I understand the next step involves taking the total count and
# taking that against the count[item] but I'm not sure where to start
# I mapped it out on paper, but it isn't clear.

#STEM Example:
# I know I need to do basically {[count[item]/count[all_items]} to
# give me a percentage but I am confused on the best course 
# to do so.

#I added in the .sort function to faclitate a cleaner order
# for the end-user.