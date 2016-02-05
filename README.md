# quantColor

The function quantColor(x,col) returns colors for the "x" values based on the quantiles of the data. "col" is a vector of colors to use.

quantColorLegend(x, col) creates a rudimentary legend for the color ramp.

For example:
randval <- exp(rnorm(50,0,1.2))
par(mfcol=c(1,2))
plot(randval,pch=19,col=quantColor(randval))
quantColorLegend(randval)
