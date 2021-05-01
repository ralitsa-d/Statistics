library("MASS")
attach("survey")
a=Age[Age<20]
b=Age[Age>=20, Age<25]
c=Age[Age>=25]
