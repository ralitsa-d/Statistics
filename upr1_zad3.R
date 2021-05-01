library(MASS)
attach(survey)
?survey
sum(Sex=="Male", na.rm=T)

t=table(Sex, Smoke)
t[2, ]
sum(t[2, -2])

mean(Height[Sex=="Male"], na.rm=T)

i=order(Age)
Height[i[1:6]]
Sex[i[1:6]]

#tova e komentar
#a=c(1,2,3,4)
#t=matrix(a, nrow=2)
#prop.table(t)
#prop.table(t, 1)
#prop.table(t, 2)