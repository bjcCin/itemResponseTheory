library(mirt)
head(responses_math)

mod1 <- mirt(responses_math, 1, itemtype = 'Rasch')

coef(mod1, simplify=TRUE, IRTpars= TRUE)
plot(mod1)
plot(mod1, type='info')

mod2 <- mirt(responses_math, 1, itemtype = "2PL")
coef(mod2, simplify=TRUE, IRTpars= TRUE)
plot(mod2)
plot(mod2, type='info')

# compare 2 models
anova(mod1, mod2)

mod3 <- mirt(responses_math, 1, itemtype = "3PL")
coef(mod3, simplify=TRUE, IRTpars= TRUE)

anova(mod2, mod3)


plot(mod3, type='trace')
plot(mod3, type='infotrace')
