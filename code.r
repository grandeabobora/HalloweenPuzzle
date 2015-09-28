total.candy <- 0 # total number of candy

repl <- 100000 # number of replications (or halloween nights)

for (i in 1:repl){

	children <- rpois(24, lambda=5) # 24 5-minute interval between 6:00 and 8:00

	candy <- 0 # candy per children

	for (j in 1:sum(children)){
		candy[j] <- 1+rpois(1, lambda=1)
	}

	total.candy[i] <- sum(candy) # total candy per night

}

quantile(total.candy, .95) # 95th percentile
