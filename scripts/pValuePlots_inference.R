# Initialize
rm(list=ls())
setwd("..")

n_rep <- 10
dirs <- "results_JC"

setwd(dirs)

# Create vectors to hold p-values lower 1-tailed
mean_rf_low <- vector(mode="numeric",length=n_rep)
quantile25_low <- vector(mode="numeric",length=n_rep)
quantile50_low <- vector(mode="numeric",length=n_rep)
quantile75_low <- vector(mode="numeric",length=n_rep)
quantile99_low <- vector(mode="numeric",length=n_rep)
quantile999_low <- vector(mode="numeric",length=n_rep)
mean_tl_low <- vector(mode="numeric",length=n_rep)
var_tl_low <- vector(mode="numeric",length=n_rep)
entropy_low <- vector(mode="numeric",length=n_rep)

# Create vectors to hold p-values upper 1-tailed
mean_rf_up <- vector(mode="numeric",length=n_rep)
quantile25_up <- vector(mode="numeric",length=n_rep)
quantile50_up <- vector(mode="numeric",length=n_rep)
quantile75_up <- vector(mode="numeric",length=n_rep)
quantile99_up <- vector(mode="numeric",length=n_rep)
quantile999_up <- vector(mode="numeric",length=n_rep)
mean_tl_up <- vector(mode="numeric",length=n_rep)
var_tl_up <- vector(mode="numeric",length=n_rep)
entropy_up <- vector(mode="numeric",length=n_rep)

# Create vectors to hold p-values two tailed
mean_rf_two <- vector(mode="numeric",length=n_rep)
quantile25_two <- vector(mode="numeric",length=n_rep)
quantile50_two <- vector(mode="numeric",length=n_rep)
quantile75_two <- vector(mode="numeric",length=n_rep)
quantile99_two <- vector(mode="numeric",length=n_rep)
quantile999_two <- vector(mode="numeric",length=n_rep)
mean_tl_two <- vector(mode="numeric",length=n_rep)
var_tl_two <- vector(mode="numeric",length=n_rep)
entropy_two <- vector(mode="numeric",length=n_rep)

# Create vectors to hold p-values midpoint
mean_rf_mid <- vector(mode="numeric",length=n_rep)
quantile25_mid <- vector(mode="numeric",length=n_rep)
quantile50_mid <- vector(mode="numeric",length=n_rep)
quantile75_mid <- vector(mode="numeric",length=n_rep)
quantile99_mid <- vector(mode="numeric",length=n_rep)
quantile999_mid <- vector(mode="numeric",length=n_rep)
mean_tl_mid <- vector(mode="numeric",length=n_rep)
var_tl_mid <- vector(mode="numeric",length=n_rep)
entropy_mid <- vector(mode="numeric",length=n_rep)

# Create vectors to hold p-values effect size
mean_rf_eff <- vector(mode="numeric",length=n_rep)
quantile25_eff <- vector(mode="numeric",length=n_rep)
quantile50_eff <- vector(mode="numeric",length=n_rep)
quantile75_eff <- vector(mode="numeric",length=n_rep)
quantile99_eff <- vector(mode="numeric",length=n_rep)
quantile999_eff <- vector(mode="numeric",length=n_rep)
mean_tl_eff <- vector(mode="numeric",length=n_rep)
var_tl_eff <- vector(mode="numeric",length=n_rep)
entropy_eff <- vector(mode="numeric",length=n_rep)

# Gets all csv files
list_files <- list.files(pattern="inference_pvalues_effectsizes*")

#auxiliar variable to iterate through replicates
rep <- 1

for (file_name in list_files){
  dat <- read.csv(file = paste(file_name,sep="") , header=TRUE)
  
  mean_rf_low[rep] <- dat[1,2]
  quantile25_low[rep] <- dat[2,2]
  quantile50_low[rep] <- dat[3,2]
  quantile75_low[rep] <- dat[4,2]
  quantile99_low[rep] <- dat[5,2]
  quantile999_low[rep] <- dat[6,2]
  mean_tl_low[rep] <- dat[7,2]
  var_tl_low[rep] <- dat[8,2]
  entropy_low[rep] <- dat[9,2]
  
  mean_rf_up[rep] <- dat[1,3]
  quantile25_up[rep] <- dat[2,3]
  quantile50_up[rep] <- dat[3,3]
  quantile75_up[rep] <- dat[4,3]
  quantile99_up[rep] <- dat[5,3]
  quantile999_up[rep] <- dat[6,3]
  mean_tl_up[rep] <- dat[7,3]
  var_tl_up[rep] <- dat[8,3]
  entropy_up[rep] <- dat[9,3]
  
  mean_rf_two[rep] <- dat[1,4]
  quantile25_two[rep] <- dat[2,4]
  quantile50_two[rep] <- dat[3,4]
  quantile75_two[rep] <- dat[4,4]
  quantile99_two[rep] <- dat[5,4]
  quantile999_two[rep] <- dat[6,4]
  mean_tl_two[rep] <- dat[7,4]
  var_tl_two[rep] <- dat[8,4]
  entropy_two[rep] <- dat[9,4]
  
  mean_rf_mid[rep] <- dat[1,5]
  quantile25_mid[rep] <- dat[2,5]
  quantile50_mid[rep] <- dat[3,5]
  quantile75_mid[rep] <- dat[4,5]
  quantile99_mid[rep] <- dat[5,5]
  quantile999_mid[rep] <- dat[6,5]
  mean_tl_mid[rep] <- dat[7,5]
  var_tl_mid[rep] <- dat[8,5]
  entropy_mid[rep] <- dat[9,5]
  
  mean_rf_eff[rep] <- dat[1,6]
  quantile25_eff[rep] <- dat[2,6]
  quantile50_eff[rep] <- dat[3,6]
  quantile75_eff[rep] <- dat[4,6]
  quantile99_eff[rep] <- dat[5,6]
  quantile999_eff[rep] <- dat[6,6]
  mean_tl_eff[rep] <- dat[7,6]
  var_tl_eff[rep] <- dat[8,6]
  entropy_eff[rep] <- dat[9,6]
  
  rep <- rep + 1
}

setwd("..")
dir.create("histograms_inference")

pdf(file="histograms_inference/lower1-tailed_hist.pdf")
hist(mean_rf_low,col="grey",breaks=20)
hist(quantile25_low,col="grey",breaks=20)
hist(quantile50_low,col="grey",breaks=20)
hist(quantile75_low,col="grey",breaks=20)
hist(quantile99_low,col="grey",breaks=20)
hist(quantile999_low,col="grey",breaks=20)
hist(mean_tl_low,col="grey",breaks=20)
hist(var_tl_low,col="grey",breaks=20)
hist(entropy_low,col="grey",breaks=20)
dev.off()

pdf(file="histograms_inference/upper-tailed_hist.pdf")
hist(mean_rf_up,col="grey",breaks=20)
hist(quantile25_up,col="grey",breaks=20)
hist(quantile50_up,col="grey",breaks=20)
hist(quantile75_up,col="grey",breaks=20)
hist(quantile99_up,col="grey",breaks=20)
hist(quantile999_up,col="grey",breaks=20)
hist(mean_tl_up,col="grey",breaks=20)
hist(var_tl_up,col="grey",breaks=20)
hist(entropy_up,col="grey",breaks=20)
dev.off()

pdf(file="histograms_inference/two-tailed_hist.pdf")
hist(mean_rf_two,col="grey",breaks=20)
hist(quantile25_two,col="grey",breaks=20)
hist(quantile50_two,col="grey",breaks=20)
hist(quantile75_two,col="grey",breaks=20)
hist(quantile99_two,col="grey",breaks=20)
hist(quantile999_two,col="grey",breaks=20)
hist(mean_tl_two,col="grey",breaks=20)
hist(var_tl_two,col="grey",breaks=20)
hist(entropy_two,col="grey",breaks=20)
dev.off()

pdf(file="histograms_inference/midpoint_hist.pdf")
hist(mean_rf_mid,col="grey",breaks=20)
hist(quantile25_mid,col="grey",breaks=20)
hist(quantile50_mid,col="grey",breaks=20)
hist(quantile75_mid,col="grey",breaks=20)
hist(quantile99_mid,col="grey",breaks=20)
hist(quantile999_mid,col="grey",breaks=20)
hist(mean_tl_mid,col="grey",breaks=20)
hist(var_tl_mid,col="grey",breaks=20)
hist(entropy_mid,col="grey",breaks=20)
dev.off()

pdf(file="histograms_inference/effect_size_hist.pdf")
hist(mean_rf_eff,col="grey",breaks=20)
hist(quantile25_eff,col="grey",breaks=20)
hist(quantile50_eff,col="grey",breaks=20)
hist(quantile75_eff,col="grey",breaks=20)
hist(quantile99_eff,col="grey",breaks=20)
hist(quantile999_eff,col="grey",breaks=20)
hist(mean_tl_eff,col="grey",breaks=20)
hist(var_tl_eff,col="grey",breaks=20)
hist(entropy_eff,col="grey",breaks=20)
dev.off()