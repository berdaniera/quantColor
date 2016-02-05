quantColor <- function(x,col=c("#ca0020","#f7f7f7","#0571b0")){
  # x is a vector of values
  # col is a sequence of colors, optional
  Pal <- colorRampPalette(col)
  brk <- quantile(x, probs=seq(0,1,length.out=length(x)))
  Pal(length(x))[cut(x, breaks=brk, include.lowest=T)]
}

quantColorLegend <- function(x,col=c("#ca0020","#f7f7f7","#0571b0")){
  # x is a vector of values
  # col is a sequence of colors, optional
  Pal <- colorRampPalette(col)
  brk <- quantile(x, probs=seq(0,1,length.out=length(x)))
  colors <- Pal(length(x))[cut(x, breaks=brk, include.lowest=T)]
  image(1, brk, t(matrix(1:length(x))), col=Pal(length(x)), xaxt="n", xlab="")
}

# Examples
#randval <- exp(rnorm(50,0,1.2))
#par(mfcol=c(1,2))
#plot(randval,pch=19,col=quantColor(randval))
#quantColorLegend(randval)