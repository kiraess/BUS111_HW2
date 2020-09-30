# Question 1
a = as.integer(readline(prompt = "Enter number a: "))
b = as.integer(readline(prompt = "Enter number b: "))
c = as.integer(readline(prompt = "Enter number c: "))

trio = function(a,b,c){
  if(a^2 + b^2 == c^2){
    return(TRUE)
  } else{
    return(FALSE)
  }
}

trio(a,b,c)
trio(1,1,2)
trio(4,6,10)
trio(3,4,5)



# Question 2
for (i in 100:10){
  if (i == 2) {
    print(i)
  } else if (!any(i %% 2:(i-1) == 0)) {
    print(i)
  } 
}

# Question 2 extra credit 
is_prime = function(n){
  if (n == 2) {
    print("TRUE")
  } else if (any(n %% 2:(n-1) == 0)) {
    print("FALSE")
  } else { 
    print("TRUE")
  }
}

is_prime(2)
is_prime(6)
is_prime(7)


# Question 3a 
# Creating inventory matrix
temp_a= c(20, 30, 50, 30, 20, 60, 30, 30, 32)
wine_blend = matrix(temp_a, nrow =3, ncol = 3, byrow = TRUE)
colnames(wine_blend) = c("Wine", "Vodka", "Lemon Juice")
rownames(wine_blend) = c("A", "B", "C")
wine_blend

#price of ingredients 
temp_b= c(5, 45, 10)
price= matrix(temp_b, nrow =3, ncol = 1, byrow = TRUE)
rownames(price) = c("Wine", "Vodka", "Lemon Juice")
price

#calculate cost of each blend with dot product 
cost = wine_blend %*% price
rownames(cost) = c("Blend A", "Blend B", "Blend C")
colnames(cost) = c("Cost")
cost

# Question 3b
totalPrice = 10*cost[1,1] + 4*cost[2,1] + 5*cost[3,1]
totalPrice
