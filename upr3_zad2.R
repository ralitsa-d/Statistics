library("MASS")
attach('survey')
boxplot(Height ??? Sex )
HM = Height[Sex == 'Male']
h = hist( HM )
lines(h$mids, h$counts )
hist( HM, probability = T)
lines( density(HM, na.rm = T) )
HF = Height[Sex == 'Female']
plot( density (HF, na.rm = T ), xlim = c(140, 210), col = 'red', main =  )
lines( density (HM, na.rm = T ), col = 'blue')
legend( 'topright', legend = c('Female', 'Male'), .ll = c('red', 'blue'))