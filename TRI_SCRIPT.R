install.packages("ltm")

library("ltm")

colnumber <- ncol(X2math_dichotomic_responses)
data <- X2math_dichotomic_responses[2:colnumber]


ML3 <- tpm(data, IRT.param = TRUE)
coef.tpm(ML3)

summary(PL3)

pp_map <- factor.scores(ML3, method = "EB", resp.patterns = data)
tmp1 <- data.frame(MAP = pp_map$score.dat$z1)
tmp1

plot(ML3)
plot(ML3, type = "ICC", legend = TRUE)

plot(ML3,type=c("IIC"))

plot(ML3,type=c("IIC"),items=c(0))

item.fit(ML3,simulate.p.value=T)

theta.rasch<-ltm::factor.scores(ML3)
summary(theta.rasch$score.dat$z1)
plot(theta.rasch)

