dice=function(N=100, C=6){
  x=sample(1:6, N, replace=T)
  c=sum(x==C)
  return (c)
}

ThrowDice=function(N=100){
  s=0
  for(i in 1:N){
    s=s+dice(100)
  }
  empirical=s/(N*100)
  return (empirical)
}

prob.dice=function(n=100){
  x = rep.int(0, 100)
  c=0
  for(i in 1:100){
    c=c+dice(n)
    x[i] = c/(n*i)
  }
  return (x)
}