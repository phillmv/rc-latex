File.open("lol.tex", "w") do |io| arr.each_with_index do |line, i| io.print line.each_with_index.map { |s,j| if j == 0; s; else; number_with_delimiter(s.gsub(",","")) end }.join(" & "); io.puts " \\\\"; end; end