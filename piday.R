
# use a random seed
set.seed()

# set the number of iterations
iter=100000


x=runif(iter)
y=runif(iter)
z=sqrt(x^2+y^2)

# pi: all the x,w plots <= 1 from origin
# multiplied by 4 (we have a quarter circle here)
# and divide by the radius
piest = length(which(z<=1))*4/length(z)

# formatting
options(scipen = 9999999)

title=paste("Monte Carlo for Pi Day. ", iter, " iterations, pi= ",piest)

plot(x[which(z<=1)],y[which(z<=1)],xlab="X",ylab="Y",main=title)
points(x[which(z>1)],y[which(z>1)],col='blue')