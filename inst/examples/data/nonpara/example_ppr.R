# run example_lm2.R before
#
library("MASS")  # for Boston Housing data
model <- ppr(medv~lstat+rm, data=Boston, nterm=2)
plotContour(model, Boston)
par(mfrow=c(1,2))
plot(model)