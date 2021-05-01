birthdays=function(p=0.5){
  prob=1
  for(i in 1:365){
    prob=prob*(366-i)/365
    if( prob < 1 - p ) break
  }
  return (i)
}









dice=function(n=100)
{
  x=sample(1:6, n, replace=T)
  sixes=sum(x==6)
  return(sixes)
}

manyThrows=function(n=100)
{
  s=0
  for(i in 1:n)
    s=s+dice(100)
  
  return(s/(100*n))
        
}



prob.dice = function( n )
{
  x = rep.int( 0, 100 )
  c = 0
  for(i in 1 : 100 )
  {
    c = c + dice()
    x[ i ] = c / ( 100 * i )
  }
  return(x)
}

x = prob.dice(500)
plot(x, type = 'l')
abline(h = 1/6, col = 'red' )

