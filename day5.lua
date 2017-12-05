#!/usr/bin/env lua5.3
--bp file input
function lines_from(file)
	lines = {}
	for line in io.lines(file) do
		lines[#lines + 1] = line
	end
	return lines
end

local lines = lines_from('amcertain.txt')
for i=1, #lines, 1 do
	lines[i] = tonumber(lines[i])
end

--day 2a
counter = 0
position = 1
while position <= #lines do
	offset = 1
--	if lines[position] > 2 then
--		offset = -1
--	else offset = 1
--	end
	temp = position
	position = position + lines[position]
	lines[temp] = lines[temp] + offset
	counter = counter + 1

end
print(counter)
