
module HW_int

	using FastGaussQuadrature

	using PyPlot

	using Distributions

	# question 1 a)
a = 2
b = -0.5
q(p) = a * exp(b * log(p))
p = collect(linspace(0,10,100)) 
c = 1

q(1)
q(4)

plot(p, [q(p) ones(size(p))*1 ones(size(p))*2]) 
xlabel("Price")
ylabel("Quantity")

# Computing change in consumer surplus:

quadgk(q, 1, 4; reltol=sqrt(0))
# Surplus change of 3.99


	# question 1 b) 


# GAUSS-LEGENDRE 

	function question_1b(n)

w(p) = (3/2) * a * exp(b * log(3/2 * p + 5/2))
nodes, weights = gausslegendre(n);
plot(nodes, w(nodes), ".") 
return @time dot(weights, w(nodes))

	end




	# function to run all questions
	function runall(n)
		println("running all questions of HW-integration:")
		println("results of question 1:")
		question_1b(n)	# make sure your function prints some kind of result!
		println("question_1c: I could not solve this question")
		println("question_1d: I could not solve this question")
		println("")
		println("results of question 2:")
		println("I could not solve this question")

		println("end of HW-integration")
	end



