install.packages("ltm")
library("ltm")

colnumber <- ncol(X3pt_dichotomic_responses)
data <- X3pt_dichotomic_responses[2:colnumber]

ML3 <- tpm(data, IRT.param = TRUE)
pp_map <- factor.scores(ML3, method = "EB", resp.patterns = data)

tmp1 <- data.frame(MAP = pp_map$score.dat$z1)

write.csv(tmp1,"Desktop//TRI//itemResponseTheory//ABILITY//abilities.csv", row.names = FALSE)
