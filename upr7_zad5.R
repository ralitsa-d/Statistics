dovint=function(n=100){
  i=0
  br=0
  while(i<n){
    y=rnorm(20, 5, 2)
    t=t.test(y, conf.int=T, conf.level=0.9)
    if(5>t$conf.int[1] & 5<t$conf.int[2]){
      br=br+1
    }
    i=i+1
  }
  return (br)
}