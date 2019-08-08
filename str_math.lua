

function add(str, num)
	-- body
	if not tonumber(str) or not tonumber(num) then
		return nil
	end

	local num = tostring(num)
	local str = tostring(str)
	if not num or not str then
		return nil
	end

	local tb1, tb2, tb3 = {}, {}, {}

	local length = #str > #num and (#str + 1) or (#num + 1)

	for i = 1, (length - #str) do
		tb1[i] = 0
	end

	for i = 1, (length - #num) do
		tb2[i] = 0
	end

	for i = 1, #str do
		tb1[#tb1 + 1] =  tonumber(str:sub(i, i))
	end

	for i = 1, #num do
		tb2[#tb2 + 1] = tonumber(num:sub(i, i))
	end

	local flag = 0
	for i = length, 1, -1 do
		local tmp = tb1[i] + tb2[i] + flag
		if tmp >= 10 then
			tb3[i] = tmp - 10
			flag = 1
		else
			tb3[i] = tmp
			flag = 0
		end
	end
	if tb3[1] > 0 then
		return table.concat(tb3, "")
	else
		return table.concat(tb3, "", 2)
	end
end
