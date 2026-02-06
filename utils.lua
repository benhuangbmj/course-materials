local utils = {}
math.randomseed(os.time())
function utils.genRandom(a, b, sign, noOne, noZero)
	a = a or -10
	b = b or 10
	if noZero == nil or noZero == true then
		noZero = 0
	end
	output =  math.random(a,b)
	if noZero ~= false then
		while output == noZero do
			output =  math.random(a,b)
		end
	end
	output = normalizeCoeff(output, sign, noOne)
	return output
end

function normalizeCoeff(output, sign, noOne)
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
utils.normalizeCoeff = normalizeCoeff
function utils.genVersion() 
	tex.print("\\ \\par\\vskip -3em\\noindent Version: " .. os.time()+math.random(-99999,99999) .. "\\vspace{1em}\\par")
end
return utils