# Initialize
rm(list=ls())
setwd("..")

n_rep <- 10
dirs <- "results_JC"

setwd(dirs)

# Create vectors to hold p-values lower 1-tailed
numInvSites_low <- vector(mode="numeric",length=n_rep)
maxGC_low <- vector(mode="numeric",length=n_rep)
maxInvBlock_low <- vector(mode="numeric",length=n_rep)
maxPairDiff_low <- vector(mode="numeric",length=n_rep)
maxVarBlock_low <- vector(mode="numeric",length=n_rep)
minGC_low <- vector(mode="numeric",length=n_rep)
minPairDiff_low <- vector(mode="numeric",length=n_rep)
numInvBlock_low <- vector(mode="numeric",length=n_rep)
meanGC_low <- vector(mode="numeric",length=n_rep)
meanGC1_low <- vector(mode="numeric",length=n_rep)
meanGC2_low <- vector(mode="numeric",length=n_rep)
meanGC3_low <- vector(mode="numeric",length=n_rep)
varGC_low <- vector(mode="numeric",length=n_rep)
varGC1_low <- vector(mode="numeric",length=n_rep)
varGC2_low <- vector(mode="numeric",length=n_rep)
varGC3_low <- vector(mode="numeric",length=n_rep)
theta_low <- vector(mode="numeric",length=n_rep)
tajD_low <- vector(mode="numeric",length=n_rep)
tajPi_low <- vector(mode="numeric",length=n_rep)
segSites_low <- vector(mode="numeric",length=n_rep)
multiLike_low <- vector(mode="numeric",length=n_rep)

# Create vectors to hold p-values upper 1-tailed
numInvSites_up <- vector(mode="numeric",length=n_rep)
maxGC_up <- vector(mode="numeric",length=n_rep)
maxInvBlock_up <- vector(mode="numeric",length=n_rep)
maxPairDiff_up <- vector(mode="numeric",length=n_rep)
maxVarBlock_up <- vector(mode="numeric",length=n_rep)
minGC_up <- vector(mode="numeric",length=n_rep)
minPairDiff_up <- vector(mode="numeric",length=n_rep)
numInvBlock_up <- vector(mode="numeric",length=n_rep)
meanGC_up <- vector(mode="numeric",length=n_rep)
meanGC1_up <- vector(mode="numeric",length=n_rep)
meanGC2_up <- vector(mode="numeric",length=n_rep)
meanGC3_up <- vector(mode="numeric",length=n_rep)
varGC_up <- vector(mode="numeric",length=n_rep)
varGC1_up <- vector(mode="numeric",length=n_rep)
varGC2_up <- vector(mode="numeric",length=n_rep)
varGC3_up <- vector(mode="numeric",length=n_rep)
theta_up <- vector(mode="numeric",length=n_rep)
tajD_up <- vector(mode="numeric",length=n_rep)
tajPi_up <- vector(mode="numeric",length=n_rep)
segSites_up <- vector(mode="numeric",length=n_rep)
multiLike_up <- vector(mode="numeric",length=n_rep)

# Create vectors to hold p-values two tailed
numInvSites_two <- vector(mode="numeric",length=n_rep)
maxGC_two <- vector(mode="numeric",length=n_rep)
maxInvBlock_two <- vector(mode="numeric",length=n_rep)
maxPairDiff_two <- vector(mode="numeric",length=n_rep)
maxVarBlock_two <- vector(mode="numeric",length=n_rep)
minGC_two <- vector(mode="numeric",length=n_rep)
minPairDiff_two <- vector(mode="numeric",length=n_rep)
numInvBlock_two <- vector(mode="numeric",length=n_rep)
meanGC_two <- vector(mode="numeric",length=n_rep)
meanGC1_two <- vector(mode="numeric",length=n_rep)
meanGC2_two <- vector(mode="numeric",length=n_rep)
meanGC3_two <- vector(mode="numeric",length=n_rep)
varGC_two <- vector(mode="numeric",length=n_rep)
varGC1_two <- vector(mode="numeric",length=n_rep)
varGC2_two <- vector(mode="numeric",length=n_rep)
varGC3_two <- vector(mode="numeric",length=n_rep)
theta_two <- vector(mode="numeric",length=n_rep)
tajD_two <- vector(mode="numeric",length=n_rep)
tajPi_two <- vector(mode="numeric",length=n_rep)
segSites_two <- vector(mode="numeric",length=n_rep)
multiLike_two <- vector(mode="numeric",length=n_rep)

# Create vectors to hold p-values midpoint
numInvSites_mid <- vector(mode="numeric",length=n_rep)
maxGC_mid <- vector(mode="numeric",length=n_rep)
maxInvBlock_mid <- vector(mode="numeric",length=n_rep)
maxPairDiff_mid <- vector(mode="numeric",length=n_rep)
maxVarBlock_mid <- vector(mode="numeric",length=n_rep)
minGC_mid <- vector(mode="numeric",length=n_rep)
minPairDiff_mid <- vector(mode="numeric",length=n_rep)
numInvBlock_mid <- vector(mode="numeric",length=n_rep)
meanGC_mid <- vector(mode="numeric",length=n_rep)
meanGC1_mid <- vector(mode="numeric",length=n_rep)
meanGC2_mid <- vector(mode="numeric",length=n_rep)
meanGC3_mid <- vector(mode="numeric",length=n_rep)
varGC_mid <- vector(mode="numeric",length=n_rep)
varGC1_mid <- vector(mode="numeric",length=n_rep)
varGC2_mid <- vector(mode="numeric",length=n_rep)
varGC3_mid <- vector(mode="numeric",length=n_rep)
theta_mid <- vector(mode="numeric",length=n_rep)
tajD_mid <- vector(mode="numeric",length=n_rep)
tajPi_mid <- vector(mode="numeric",length=n_rep)
segSites_mid <- vector(mode="numeric",length=n_rep)
multiLike_mid <- vector(mode="numeric",length=n_rep)

# Create vectors to hold p-values effect size
numInvSites_eff <- vector(mode="numeric",length=n_rep)
maxGC_eff <- vector(mode="numeric",length=n_rep)
maxInvBlock_eff <- vector(mode="numeric",length=n_rep)
maxPairDiff_eff <- vector(mode="numeric",length=n_rep)
maxVarBlock_eff <- vector(mode="numeric",length=n_rep)
minGC_eff <- vector(mode="numeric",length=n_rep)
minPairDiff_eff <- vector(mode="numeric",length=n_rep)
numInvBlock_eff <- vector(mode="numeric",length=n_rep)
meanGC_eff <- vector(mode="numeric",length=n_rep)
meanGC1_eff <- vector(mode="numeric",length=n_rep)
meanGC2_eff <- vector(mode="numeric",length=n_rep)
meanGC3_eff <- vector(mode="numeric",length=n_rep)
varGC_eff <- vector(mode="numeric",length=n_rep)
varGC1_eff <- vector(mode="numeric",length=n_rep)
varGC2_eff <- vector(mode="numeric",length=n_rep)
varGC3_eff <- vector(mode="numeric",length=n_rep)
theta_eff <- vector(mode="numeric",length=n_rep)
tajD_eff <- vector(mode="numeric",length=n_rep)
tajPi_eff <- vector(mode="numeric",length=n_rep)
segSites_eff <- vector(mode="numeric",length=n_rep)
multiLike_eff <- vector(mode="numeric",length=n_rep)

# Gets all csv files
list_files <- list.files(pattern="data_pvalues_effectsizes*")

#auxiliar variable to iterate through replicates
rep <- 1

for (file_name in list_files){
  dat <- read.csv(file = paste(file_name,sep="") , header=TRUE)
  numInvSites_low[rep] <- dat[1,2]
  maxGC_low[rep] <- dat[3,2]
  maxInvBlock_low[rep] <- dat[5,2]
  maxPairDiff_low[rep] <- dat[7,2]
  maxVarBlock_low[rep] <- dat[9,2]
  minGC_low[rep] <- dat[11,2]
  minPairDiff_low[rep] <- dat[13,2]
  numInvBlock_low[rep] <- dat[15,2]
  meanGC_low[rep] <- dat[17,2]
  meanGC1_low[rep] <- dat[19,2]
  meanGC2_low[rep] <- dat[21,2]
  meanGC3_low[rep] <- dat[23,2]
  varGC_low[rep] <- dat[25,2]
  varGC1_low[rep] <- dat[27,2]
  varGC2_low[rep] <- dat[29,2]
  varGC3_low[rep] <- dat[31,2]
  theta_low[rep] <- dat[33,2]
  tajD_low[rep] <- dat[34,2]
  tajPi_low[rep] <- dat[35,2]
  segSites_low[rep] <- dat[36,2]
  multiLike_low[rep] <- dat[37,2]
  
  numInvSites_up[rep] <- dat[1,3]
  maxGC_up[rep] <- dat[3,3]
  maxInvBlock_up[rep] <- dat[5,3]
  maxPairDiff_up[rep] <- dat[7,3]
  maxVarBlock_up[rep] <- dat[9,3]
  minGC_up[rep] <- dat[11,3]
  minPairDiff_up[rep] <- dat[13,3]
  numInvBlock_up[rep] <- dat[15,3]
  meanGC_up[rep] <- dat[17,3]
  meanGC1_up[rep] <- dat[19,3]
  meanGC2_up[rep] <- dat[21,3]
  meanGC3_up[rep] <- dat[23,3]
  varGC_up[rep] <- dat[25,3]
  varGC1_up[rep] <- dat[27,3]
  varGC2_up[rep] <- dat[29,3]
  varGC3_up[rep] <- dat[31,3]
  theta_up[rep] <- dat[33,3]
  tajD_up[rep] <- dat[34,3]
  tajPi_up[rep] <- dat[35,3]
  segSites_up[rep] <- dat[36,3]
  multiLike_up[rep] <- dat[37,3]
  
  numInvSites_two[rep] <- dat[1,4]
  maxGC_two[rep] <- dat[3,4]
  maxInvBlock_two[rep] <- dat[5,4]
  maxPairDiff_two[rep] <- dat[7,4]
  maxVarBlock_two[rep] <- dat[9,4]
  minGC_two[rep] <- dat[11,4]
  minPairDiff_two[rep] <- dat[13,4]
  numInvBlock_two[rep] <- dat[15,4]
  meanGC_two[rep] <- dat[17,4]
  meanGC1_two[rep] <- dat[19,4]
  meanGC2_two[rep] <- dat[21,4]
  meanGC3_two[rep] <- dat[23,4]
  varGC_two[rep] <- dat[25,4]
  varGC1_two[rep] <- dat[27,4]
  varGC2_two[rep] <- dat[29,4]
  varGC3_two[rep] <- dat[31,4]
  theta_two[rep] <- dat[33,4]
  tajD_two[rep] <- dat[34,4]
  tajPi_two[rep] <- dat[35,4]
  segSites_two[rep] <- dat[36,4]
  multiLike_two[rep] <- dat[37,4]
  
  numInvSites_mid[rep] <- dat[1,5]
  maxGC_mid[rep] <- dat[3,5]
  maxInvBlock_mid[rep] <- dat[5,5]
  maxPairDiff_mid[rep] <- dat[7,5]
  maxVarBlock_mid[rep] <- dat[9,5]
  minGC_mid[rep] <- dat[11,5]
  minPairDiff_mid[rep] <- dat[13,5]
  numInvBlock_mid[rep] <- dat[15,5]
  meanGC_mid[rep] <- dat[17,5]
  meanGC1_mid[rep] <- dat[19,5]
  meanGC2_mid[rep] <- dat[21,5]
  meanGC3_mid[rep] <- dat[23,5]
  varGC_mid[rep] <- dat[25,5]
  varGC1_mid[rep] <- dat[27,5]
  varGC2_mid[rep] <- dat[29,5]
  varGC3_mid[rep] <- dat[31,5]
  theta_mid[rep] <- dat[33,5]
  tajD_mid[rep] <- dat[34,5]
  tajPi_mid[rep] <- dat[35,5]
  segSites_mid[rep] <- dat[36,5]
  multiLike_mid[rep] <- dat[37,5]
  
  numInvSites_eff[rep] <- dat[1,6]
  maxGC_eff[rep] <- dat[3,6]
  maxInvBlock_eff[rep] <- dat[5,6]
  maxPairDiff_eff[rep] <- dat[7,6]
  maxVarBlock_eff[rep] <- dat[9,6]
  minGC_eff[rep] <- dat[11,6]
  minPairDiff_eff[rep] <- dat[13,6]
  numInvBlock_eff[rep] <- dat[15,6]
  meanGC_eff[rep] <- dat[17,6]
  meanGC1_eff[rep] <- dat[19,6]
  meanGC2_eff[rep] <- dat[21,6]
  meanGC3_eff[rep] <- dat[23,6]
  varGC_eff[rep] <- dat[25,6]
  varGC1_eff[rep] <- dat[27,6]
  varGC2_eff[rep] <- dat[29,6]
  varGC3_eff[rep] <- dat[31,6]
  theta_eff[rep] <- dat[33,6]
  tajD_eff[rep] <- dat[34,6]
  tajPi_eff[rep] <- dat[35,6]
  segSites_eff[rep] <- dat[36,6]
  multiLike_eff[rep] <- dat[37,6]
  
  rep <- rep + 1
  
}

setwd("..")
dir.create("histograms_data")	

pdf(file="histograms_data/lower1-tailed_hist.pdf")
hist(numInvSites_low,col="grey",breaks=20)
hist(maxGC_low,col="grey",breaks=20)
hist(maxInvBlock_low,col="grey",breaks=20)
hist(maxPairDiff_low,col="grey",breaks=20)
hist(maxVarBlock_low,col="grey",breaks=20)
hist(minGC_low,col="grey",breaks=20)
hist(numInvBlock_low,col="grey",breaks=20)
hist(meanGC_low,col="grey",breaks=20)
hist(meanGC2_low,col="grey",breaks=20)
hist(meanGC3_low,col="grey",breaks=20)
hist(varGC_low,col="grey",breaks=20)
hist(varGC1_low,col="grey",breaks=20)
hist(varGC2_low,col="grey",breaks=20)
hist(varGC3_low,col="grey",breaks=20)
hist(theta_low,col="grey",breaks=20)
hist(tajD_low,col="grey",breaks=20)
hist(tajPi_low,col="grey",breaks=20)
hist(segSites_low,col="grey",breaks=20)
hist(multiLike_low,col="grey",breaks=20)
dev.off()

pdf(file="histograms_data/upper-tailed_hist.pdf")
hist(numInvSites_up,col="grey",breaks=20)
hist(maxGC_up,col="grey",breaks=20)
hist(maxInvBlock_up,col="grey",breaks=20)
hist(maxPairDiff_up,col="grey",breaks=20)
hist(maxVarBlock_up,col="grey",breaks=20)
hist(minGC_up,col="grey",breaks=20)
hist(numInvBlock_up,col="grey",breaks=20)
hist(meanGC_up,col="grey",breaks=20)
hist(meanGC2_up,col="grey",breaks=20)
hist(meanGC3_up,col="grey",breaks=20)
hist(varGC_up,col="grey",breaks=20)
hist(varGC1_up,col="grey",breaks=20)
hist(varGC2_up,col="grey",breaks=20)
hist(varGC3_up,col="grey",breaks=20)
hist(theta_up,col="grey",breaks=20)
hist(tajD_up,col="grey",breaks=20)
hist(tajPi_up,col="grey",breaks=20)
hist(segSites_up,col="grey",breaks=20)
hist(multiLike_up,col="grey",breaks=20)
dev.off()

pdf(file="histograms_data/two-tailed_hist.pdf")
hist(numInvSites_two,col="grey",breaks=20)
hist(maxGC_two,col="grey",breaks=20)
hist(maxInvBlock_two,col="grey",breaks=20)
hist(maxPairDiff_two,col="grey",breaks=20)
hist(maxVarBlock_two,col="grey",breaks=20)
hist(minGC_two,col="grey",breaks=20)
hist(numInvBlock_two,col="grey",breaks=20)
hist(meanGC_two,col="grey",breaks=20)
hist(meanGC2_two,col="grey",breaks=20)
hist(meanGC3_two,col="grey",breaks=20)
hist(varGC_two,col="grey",breaks=20)
hist(varGC1_two,col="grey",breaks=20)
hist(varGC2_two,col="grey",breaks=20)
hist(varGC3_two,col="grey",breaks=20)
hist(theta_two,col="grey",breaks=20)
hist(tajD_two,col="grey",breaks=20)
hist(tajPi_two,col="grey",breaks=20)
hist(segSites_two,col="grey",breaks=20)
hist(multiLike_two,col="grey",breaks=20)
dev.off()

pdf(file="histograms_data/midpoint_hist.pdf")
hist(numInvSites_mid,col="grey",breaks=20)
hist(maxGC_mid,col="grey",breaks=20)
hist(maxInvBlock_mid,col="grey",breaks=20)
hist(maxPairDiff_mid,col="grey",breaks=20)
hist(maxVarBlock_mid,col="grey",breaks=20)
hist(minGC_mid,col="grey",breaks=20)
hist(numInvBlock_mid,col="grey",breaks=20)
hist(meanGC_mid,col="grey",breaks=20)
hist(meanGC2_mid,col="grey",breaks=20)
hist(meanGC3_mid,col="grey",breaks=20)
hist(varGC_mid,col="grey",breaks=20)
hist(varGC1_mid,col="grey",breaks=20)
hist(varGC2_mid,col="grey",breaks=20)
hist(varGC3_mid,col="grey",breaks=20)
hist(theta_mid,col="grey",breaks=20)
hist(tajD_mid,col="grey",breaks=20)
hist(tajPi_mid,col="grey",breaks=20)
hist(segSites_mid,col="grey",breaks=20)
hist(multiLike_mid,col="grey",breaks=20)
dev.off()

pdf(file="histograms_data/effect_size_hist.pdf")
hist(numInvSites_eff,col="grey",breaks=20)
hist(maxGC_eff,col="grey",breaks=20)
hist(maxInvBlock_eff,col="grey",breaks=20)
hist(maxPairDiff_eff,col="grey",breaks=20)
hist(maxVarBlock_eff,col="grey",breaks=20)
hist(minGC_eff,col="grey",breaks=20)
hist(numInvBlock_eff,col="grey",breaks=20)
hist(meanGC_eff,col="grey",breaks=20)
hist(meanGC2_eff,col="grey",breaks=20)
hist(meanGC3_eff,col="grey",breaks=20)
hist(varGC_eff,col="grey",breaks=20)
hist(varGC1_eff,col="grey",breaks=20)
hist(varGC2_eff,col="grey",breaks=20)
hist(varGC3_eff,col="grey",breaks=20)
hist(theta_eff,col="grey",breaks=20)
hist(tajD_eff,col="grey",breaks=20)
hist(tajPi_eff,col="grey",breaks=20)
hist(segSites_eff,col="grey",breaks=20)
hist(multiLike_eff,col="grey",breaks=20)
dev.off()