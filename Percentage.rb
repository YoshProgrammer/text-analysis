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
    if ('a'..'z').to_a.include?(item) then
      counts[item] += 1 
    end                                                                                                                                             
  end
  sum = 0.to_f
  counts.values.each {|a| sum+=a}
  counts.each do |key, value|
      #puts "The key is '#{key}' and the value is '#{value}'" 
    frequency = ((((value.to_f)/(sum.to_f)) * 100).round(2))
    sum += frequency
    puts "[#{key}] appears #{frequency} % "
  end
end

def final_input(string)
  item_counts(string_split(string))
end

final_input(string)

if ARGV.size == 0
  puts "You didn't tell us what file to read.  Try this command:"
  puts ""
  puts "    ruby file_read.rb random_file.txt"
  exit # This exits the program
end


#Questions

# How would I approach checking if this is really working?
# I figure I could potentially do this by verifying that
# all of the perecentages add up to 100%


