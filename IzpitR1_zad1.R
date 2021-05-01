func=function(a0, a1, n){
  ak1=a1
  ak2=a0
  i=0
  while(i<n-2){
    a=2*ak1+ak2
    ak2=ak1
    ak1=a
    i=i+1
  }
  return (ak1)
}

func(1, 0, 10)