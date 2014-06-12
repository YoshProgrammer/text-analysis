def item_counts(test)
	counts = {}

	test.each do |item|
		if counts.has_key?(item) then
			counts[item] = (counts[item] + 1) % 100
		else
			counts[item] = (1 % 100)
		end
	end
	counts
end

puts item_counts(["bob", "bob", "jane", "jane", "bob"])


