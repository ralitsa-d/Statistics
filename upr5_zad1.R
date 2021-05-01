rep.rbin=function(x, y, prob){
  c=0
  i=0
  while(i<100){
    c=c+rbinom(x, y, prob)
    i=i+1
  }
  res=c/100
  return (res)
}

