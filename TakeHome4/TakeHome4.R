#1b.
commercial_plastic_wrap<-c(7.66,6.98,7.80,7.74)
vacuum_packaged<-c(5.26,5.44,5.80,5.64)
co_o2_n<-c(7.41,7.33,7.04,7.21)
co2<-c(3.51,2.91,3.66,3.48)

factorLevels <- c(1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4)

factorLevels <- factor(factorLevels)

packages<-c(commercial_plastic_wrap, vacuum_packaged, co_o2_n, co2)

packages_conditions<-data.frame(packages,factorLevels)

packages_conditions.anova <- aov(packages~factorLevels, data = packages_conditions)

summary(packages_conditions.anova)

#1c.
TukeyHSD(x= packages_conditions.anova, which = "factorLevels", ordered = TRUE, conf.level = .95 )

#2b
x_axis <- c(74,82,81,77,82,88,83,76)

y_axis <- c(8487,8179,8362,7815,8075,8040,6981,7582)

model = lm(formula = y_axis~x_axis)

summary(model)

#2c

Xnew = list(x_axis = 80)

predict(model, newdata = Xnew, interval = "confidence", level = .99)

predict(model, newdata = Xnew, interval = "prediction", level= .99)

