m <- 100000;

p <- 0.05;

x <- runif(m);
y <- x < 0.05;

# negative binomial distribution
# count the number of failures before s = 1 successes

f <- NULL;
t <- 0;
for (e in y) {
	if (e) {
		f <- c(f, t);
		t <- 0;
	} else {
		t <- t + 1;
	}
}

# unnamed distribution
# count the number of trials before s = 1 successes

n <- NULL;
t <- 0;
for (i in 1:m) {
	t <- t + 1;
	if (y[i]) {
		n <- c(n, t);
		t <- 0;
	}
}
