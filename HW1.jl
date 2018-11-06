#Adam Smith
#user to call this function to begin
println("Call function list(x) with x < 99")

function list(listlen)
	sum = 0
	#declare array
	a1 = []
	#check bounds
	if ((listlen > 99) || (listlen < 1))
		print("Error - input list length is not legal")
		return
	end
	#for loop in julia
	for i in 1:listlen
		print("Input integer:")
		#push user input ot array
		push!(a1, parse(UInt8, readline()))
		#sum the inputs
		sum += (a1[i])
	end
	print("Average: ")
	avg = (sum/listlen)
	print(avg)
	print("  Number of values > average is: ")
	count = 0
	for i in 1:listlen
		if a1[i] > avg
			count += 1
		end
	end
	print(count)
end

print("theEND")
