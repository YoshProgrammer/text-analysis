# take string, return array of all characters
require 'bigdecimal'

text = File.read(ARGV[0])

def sanitize(string)
	string.downcase
end


def item_counts(string)
	array = string.downcase.split("").sort
  counts = {} # Initialize counts to an empty Hash
  puts "\n\n"
  puts "The counts for the string/file you entered are..."
  array.each do |item|
  	if counts[item] == nil
  		if ('a'..'z').to_a.include?(item)
  			counts[item] = 1
  		end
  	else
  		counts[item] += 1
  	end
  end
	length = array.length
	total_frequency = 0.to_f
  counts.each do |key, value|
  	puts "#{key} is found #{value} times"
		frequency = (((value.to_f)/(length.to_f)) * 100)
		total_frequency += frequency
		puts "the key frequency is #{frequency} %"
  end
  puts "sanity check: the following number is the total I am calculating the frequency out of and should be 100: #{total_frequency}"
  puts "\n\n"
  counts # This returns the "counts" hash
end


item_counts(text)