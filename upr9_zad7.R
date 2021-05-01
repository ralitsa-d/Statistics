func=function(m1, m2, n){
  c1=0
  c2=0
  for(i in 1000){
    x=rnorm(n, m1)
    y=rnorm(n, m2)
    t=t.test(x, y, alternative='two.sided', paired=F)
    if(t$p.value<0.05 & m1==m2){
      c1=c1+1
    }
    if(t$p.value>0.05 & m1!=m2){
      c2=c2+1
    }
  }
  res1=c1/1000
  res2=c2/1000
  res=c(res1, res2)
  return (res)
}