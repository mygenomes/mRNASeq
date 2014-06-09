###### BLOCK get ancestor of BP #############

if (dim(as.matrix(go.bp))[1]>0)
{

getBPAnFun=function(i) an.bp[[i]]
lgo.bp <- lapply(go.bp[,"go_id"],getBPAnFun)

ango.bp=c()

for (i in 1:length(lgo.bp))
{
  if(length(lgo.bp[[i]])>0)
{
   k=length(lgo.bp[[i]])-1	
   ango.bp=rbind(ango.bp,cbind(go.bp[i,1],lgo.bp[[i]][1:k]))
}	

}

colnames(ango.bp)=colnames(go.bp)[1:2]

gene2gomap[["BP"]]=unique(rbind(go.bp[,1:2],ango.bp))

}
