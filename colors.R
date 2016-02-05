quantColor <- function(x,col=c("#ca0020","#f7f7f7","#0571b0"),n=length(x)){
  # x is a vector of values
  # col is a sequence of colors, optional
  # n is a number of distinct colors, optional
  Pal <- colorRampPalette(col)
  brk <- quantile(x, probs=seq(0,1,length.out=n))
  Pal(n)[cut(x, breaks=brk, include.lowest=T)]
}

quantColorLegend <- function(x,col=c("#ca0020","#f7f7f7","#0571b0"),n=length(x)){
  # x is a vector of values
  # col is a sequence of colors, optional
  # n is a number of distinct colors, optional
  Pal <- colorRampPalette(col)
  brk <- quantile(x, probs=seq(0,1,length.out=n))
  colors <- Pal(n)[cut(x, breaks=brk, include.lowest=T)]
  image(1, brk, t(matrix(1:n)), col=Pal(n), xaxt="n", xlab="")
}

randval <- exp(rnorm(50,0,1.2))
par(mfcol=c(1,2))
plot(randval,pch=19,col=quantColor(randval))
quantColorLegend(randval)