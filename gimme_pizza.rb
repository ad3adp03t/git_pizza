def size
	size=["small","medium","large"].sample
end
def crust_style
	crust_style=["thin crust","hand tossed crust","deep dish","stuffed crust"].sample
end
def sauce
	sauce=["robust tomato", "marinara","alfredo"].sample
end
def sauce_portion
	sauce_portion=["light sauce","regular sauce","extra sauce"].sample
end
def cheese
	cheese=["standard mozerella","w/parmasean & romano cheese","6 cheese blend"].sample
end
def meats
	meats=["peperonni","sausage","bacon","canadian bacon","chicken","Italian sausage","hamburger","steak"].sample
end
def veggies
	veggies=["mushrooms","olives","spinach","onions","garlic","Bananna peppers"].sample
end
	
def clock
	clock=["20-35","36-45","46-59","60+"].sample
end	

def tip
	if clock == "20-35"
		tip = 5
	elsif clock == "36-45"
		tip = 3
	elsif clock == "46-59"
		tip = 2
	else 
		tip = 0
	end	
end	

				

p "How many pizza's would you like?"
n=gets.chomp.to_i
count = 1
cost = 0
n.times do
	puts "pizza #{count}"
	pizza_size=size
	count+=1
	puts pizza_size
	puts crust_style
	puts sauce
	puts sauce_portion
	puts cheese
	puts meats	
	puts veggies
	if pizza_size == "small"
    	cost += 5
    	puts "Current cost is $#{cost}"   
	elsif pizza_size== "medium"
    	cost += 8
    	puts "Current cost is $#{cost}"
	else pizza_size == "large"
    	cost += 12
    	puts "Current cost is $#{cost}"   
	end   
	puts " "
end


puts "Do you want that delivered? There is a $2.50 delivery fee"
deliv = gets.chomp
	if deliv== "no"
		puts "your total is $#{'%.2f' %(cost*0.06+cost)}"
	elsif deliv== "yes"
		puts "Your order arrived in #{clock} minutes. Your total is $#{'%.2f' %((cost*0.06+cost)+2.50+tip)}"
	else
		puts "Im sorry, I dont understand. Please try your order again."	
	end	

