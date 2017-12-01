#!/usr/bin/env lua5.3
--bp file input
function lines_from(file)
	lines = {}
	for line in io.lines(file) do
		lines[#lines + 1] = line
	end
	return lines
end

local lines = lines_from('day1.txt')

--day 1a
counter = 0
for i=1, #lines[1], 1 do
	if i == #lines[1] then
		if lines[1]:sub(i,i) == lines[1]:sub(1,1) then
			counter = counter + tonumber(lines[1]:sub(i,i))
		end
	else
		if lines[1]:sub(i,i) == lines[1]:sub(i+1,i+1) then
			counter = counter + tonumber(lines[1]:sub(i,i))
		end
	end
end
print(counter)
--day 1b
counter = 0
j = #lines[1]/2
for i=1, j, 1 do
	if lines[1]:sub(i,i) == lines[1]:sub(i+j,i+j) then
		counter = counter + (tonumber(lines[1]:sub(i,i)) * 2)
	end
end

print(counter)
	
