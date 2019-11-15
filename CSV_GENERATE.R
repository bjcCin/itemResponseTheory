install.packages("ltm")
library("ltm")

sheet_file <-  X3pt_dichotomic_responses
colnumber <- ncol(sheet_file)
data <- sheet_file[2:colnumber]

ML3 <- tpm(data, IRT.param = TRUE)
questions_difficult <- coef(ML3)
frame <- data.frame(questions_difficult)

write.csv(frame,"Desktop//TRI//itemResponseTheory//QUESTIONS//pt_3.csv", row.names = FALSE)


# pp_map <- factor.scores(ML3, method = "EB", resp.patterns = data)

# tmp1 <- data.frame(COD = sheet_file[1]  ,MAP = pp_map$score.dat$z1)

# write.csv(tmp1,"Desktop//TRI//itemResponseTheory//ABILITY//abilities.csv", row.names = FALSE)


