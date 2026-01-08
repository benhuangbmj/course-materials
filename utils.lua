local utils = {}
math.randomseed(os.time())
function utils.genRandom(a, b, sign, noOne, noZero)
	a = a or -10
	b = b or 10
	if noZero == nil then
		noZero = true
	end
	output =  math.random(a,b)
	if noZero then
		while output == 0 do
			output =  math.random(a,b)
		end
	end
	if sign == true then
		output = string.format("%+d", output)
	end
	if noOne then
		if output == "1" or output == "+1"  or output == 1 then
			if sign then
				output = "+"
			else 
				output = ""
			end
		elseif output == "-1" or output == -1 then
			output ="-"
		end
	end	
	return output
end

return utils