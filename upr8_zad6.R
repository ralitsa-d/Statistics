x=rnorm(100, 2, sqrt(4))
y=rnorm(100, 2, sqrt(16))


t.test(x, mu=3, alternative='two.sided')
t.test(x, mu=5, alternative = 'two.sided')


t.test(y, mu=3, alternative='two.sided')
t.test(y, mu=5, alternative = 'two.sided')


