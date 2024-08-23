N = 100000

x = runif(N)

for ( i in c(1:N))
{
  if ( x[i] >= 0 && x[i] <= 1/6)
    y[i] = 1
  if ( x[i] > 1/6 && x[i] <= 2/6)
    y[i] = 2
  if ( x[i] > 2/6 && x[i] <= 3/6)
    y[i] = 3
  if ( x[i] > 3/6 && x[i] <= 4/6)
    y[i] = 4
  if ( x[i] > 4/6 && x[i] <= 5/6)
    y[i] = 5
  if ( x[i] > 5/6 && x[i] <= 6/6)
    y[i] = 6
}

cnt = 0
for ( i in c(1:N))
{
  if (y[i] < 5)
    cnt = cnt + 1
}

print(paste("Probability of getting outcome less than 5 is = ", cnt/N))