def fib(n)
	if num < 2
		return n
	else
		return(fib(n-1)+fib(n-2))
		#add the the fib of the previous two numbers
	end
end

puts fib(5)
