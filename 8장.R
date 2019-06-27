x <- seq(0,15,by = 0.01)
dc <- dchisq(x, df = 3)

alpha <- 0.05
tol <- qchisq(0.95, df = 3)

par(mar=c(0,1,1,1))
plot(x, dc, type = "l", axes = F, 
     ylim=c(-0.03,0.25), xlab = "", ylab="")
abline(h=0)

tol.g <- round(tol,2)
polygon(c(tol.g, x[x>tol.g], 15), c(0,dc[x>tol.g], 0), col="red")
text(0,-0.03,"0",cex = 0.8)


tol2 <- qchisq(1-0.95, df = 3)
tol2.g <- round(tol2,2)
polygon(c(tol.g, x[x>tol2.g], 15), c(0,dc[x>tol2.g], 0), col="")
text(0,-0.03,"0",cex = 0.8)



sns.c <- read.csv("snsbyage.csv")
sns.c <- transform(sns.c, age.c = factor(age, levels = c(1,2,3)))
sns.c <- transform(sns.c, service.c = factor(service, levels = c("F","T","K","C","E"), ordered = TRUE))

c.tab <- table(sns.c$age.c, sns.c$service.c)

chisq.test(c.tab)
ct <- chisq.test(c.tab)
names(ct)

ct
ab <- UCBAdmissions
class(UCBAdmissions)
abc <- apply(ab, c(1,2), sum)


a <- margin.table(ab, margin = 1)
b <- margin.table(ab, margin = 2)

chisq.test(abc)
ab <- UCBAdmissions


