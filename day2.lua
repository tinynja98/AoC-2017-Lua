#!/usr/bin/env lua5.3
--bp file input
function lines_from(file)
	lines = {}
	for line in io.lines(file) do
		lines[#lines + 1] = line
	end
	return lines
end

local lines = lines_from('day2.txt')

--day 2a
function tablemax(table)
	local xnum = 0
	for i,x in pairs(table) do
		if x>xnum then
			xnum = x
		end
	end
	return xnum
end

function tablemin(table)
	local xnum = math.huge
	for i,x in pairs(table) do
		if x<xnum then
			xnum = x
		end
	end
	return xnum
end

checksum_a = 0

my_input = {}
for i=1, #lines, 1 do
	inp_sep = {}
	for num in lines[i]:gmatch("%w+") do 
		table.insert(inp_sep,tonumber(num))
	end 
	table.insert(my_input,inp_sep)
end

for i=1, #my_input, 1 do
	checksum_a = checksum_a + (tablemax(my_input[i]) - tablemin(my_input[i]))
end
print(checksum_a)
		

--day 2b
function checktableforvalue(a_table, a_value)
	for i, v in pairs(a_table) do
		if v == a_value then
			return true
		end
	end
end

checksum_b = 0
for i=1, #my_input, 1 do
	table.sort(my_input[i])
	for j=1, #my_input[i],1 do
		for k=2, math.ceil(my_input[i][#my_input[i]]/my_input[i][1]),1 do 	
			val = my_input[i][j] * k
			if checktableforvalue(my_input[i], val) then
				checksum_b = checksum_b + k
			end
		end
	end
end

print(checksum_b)
