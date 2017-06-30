size=["small","medium","large","x-large"]
crust_style=["thin pan","hand tossed","deep dish","stuffed"]
sauce=["robust tomato", "marinara", "alfredo"]
sauce_portion=["light sauce","regular sauce","extra sauce"]
cheese=["normal cheese","w/parmasean & romano","6 cheese blend"]
meats=["peperonni","sausage","bacon","canadian bacon","chicken"]
veggies=["mushrooms","olives","spinach","onions","garlic","Bananna peppers"]

p "Pizza's are $10 each. How many would you like?"
n=gets.chomp.to_i
count = 1
n.times do
puts "pizza #{count}"
count+=1
puts size.sample
puts crust_style.sample
puts sauce.sample
puts sauce_portion.sample
puts cheese.sample
	if [1,2]==1
		puts cheese.sample
	else
	end	
puts meats.sample
puts veggies.sample
end
p "Your total is $#{n*10.60.to_f.round(2)}"