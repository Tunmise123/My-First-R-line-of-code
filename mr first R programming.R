2+3
6/3
(3*8) / (2*6)
8^2
log(10)
sqrt(81)
xen <- sqrt(6*7)
print(xen)
age <- ("56, 79,95,23")
tunmise <- (25/12/1996)
olaoluwa <- c(1.5,2.5)
k <- 1:1024
class (age)
length (age)
dim (age)
attributes(age)
tobi <- c(2+6i, 4-58i)
qt <- c("time",36, "october",TRUE, 5.76)
bar <- 0:9
class (bar)
bar1 <- as.numeric(bar)
class(bar1)
bar2 <- as.character(bar1)
class(bar2)
my_list <- list(39,"ola", TRUE, 1+2i)
my_list
my_list[4]




my_matrix <-matrix(1:6, nrow=3, ncol=2)
my_matrix
dim(my_matrix)
my_matrix[3,]
my_matrix[3,2]

SeatNumber <- c(1,2,3,4,5,6,7,8,9,10)
ExamScore <- c(56,72,32,10,4,89,97,46,50,.0)
cbind(SeatNumber,ExamScore)
class(cbind(SeatNumber,ExamScore))

df <- data.frame(name = c("elvis","ola","tobi","anu"),45,36,50,25)
df

a <- 1
b <- 5
c <- 3
d <- b^2
e <- 4*a*c
f <- sqrt(d-e)
g <- 2*a
h <- -b+f
i <- h/g
i
j <- -b-f
k <- j/g
k
t.yu <- g
if (<condition>){
  ##do something
}else{
  ##do something
}
#Example
bunmi <- 10
if (bunmi > 40){
  print("You are old, go get married!")
} else{
  print ("You are young, wait for your time!")
}
bunmi <- 40
if (bunmi > 40){
  print("You are old, go get married!")
} else{
  print ("You are young, wait for your time!")
}
bunmi <- 70
if (bunmi > 40){
  print("You are old, go get married!")
} else{
  print ("You are young, wait for your time!")
}

For- this is used when a loop is to be executed over a fixed number 
It is commonly used for iterating over the elements of an object.size(
  
for (<search condition>){
 ##do something    
}

#Example
ade <- c(345, 96,233, 207,168)
for(i in 1:3){
 print(ade[i])
}


Girl <- c(1,10,20,11,12,14,34,38,5,15,18,17,16,13,18,19,22,28,36,40)
for(i in 6:17){
 print (Girl[i])
}

Girl <- 10
if (Girl[i] > 40){
  print("you pass!")
} else{
  print ("You failed!")
}

Tunmise <- list(1,10,20,11,12,14,34,38,5,15,18,17,16,13,18,19,22,28,36,40)
print(Tunmise)
if (Tunmise[i]> 30){
   print("You excel")
 } else{
   print ("You failed")
 }

while (it begins by testing a condition and executes if the condition
  
}

ann <- 10
while (ann < 17){
  print(ann)
  ann <- ann + 1
  
  
  
  
  
  
  
  
  
  
  
  Packages

  tidyr- data cleansing/ manipulation
  dplyr- data cleansing/ manipulation
  lubricate- used in correcting errors in date and time
  gglot2- data visualisation
  data.table
  reshape2- data visualisation and manipulation
  readr
  
  
install.packages('dplyr')
library(dplyr)
#Creating a dataframe so as to read easily
mtcarsdata <- tbl_df(data1)
irisdata <- tbl_df(iris)

data1 <- mtcars
mtcarsdata <- tbl_df(data1)
View(mtcarsdata)

#Using the Filter functions in dplyr to filter data with required

filter(mtcars, cyl >4 & gear>4)
filter(mtcarsdata, cyl > 4)

#viewing the irisdata
View(iris)


#seprating the setosa and virginica species
filter(irisdata, Species %in% c('setosa', 'virginica'))

data.class()

#Using select function to pick columns by name
select(mtcarsdata, cyl,mpg,hp)

#working with all others except
select(mtcarsdata, -cyl,-mpg,-hp)

#Using(-) to hide columns
select(mtcarsdata, -cyl, -mpg, -hp)

#Hide a range of columns
select(mtcarsdata, -c(cyl,mpg))

#Selecting a series of columns
select(mtcarsdata, cyl:gear)

#Chaining some columns to perform multiple operations
mtcarsdata %>%
   select(cyl,wt,gear)%>%
  filter(wt > 2)

#Using arrange and select functions to reorder rows in ascending
mtcarsdata %>%
  select (cyl,wt,gear)%>%
  arrange(wt)

#Using arrange and select functions to reordger rows in descending
mtcarsdata %>%
   selecting(cyl,wt,gear)%>%
  arrange(desc(wt))

#Creating new variables using the mutate function
mtcarsdata %>%
   select(mpg, cyl)%>%
  mutate(multipli = mgp*cyl)

#Using the summarise function to generate insights from the data
irisdata%>%
   group_by(Species)%>%
  summarise(Average = mean(Sepal.Length, na.rm = TRUE))
