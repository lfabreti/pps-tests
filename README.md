Posterior Predictive Tests for Bayesian Phylogenetics
==========================

This is the repository for the scripts used in the paper `The Expected Behavior of Posterior Predictive Tests May Be Unexpected]{The Expected Behavior of Posterior Predictive Tests May Be Unexpected`.

We prepared a small example of the Posterior Predictive Simulation test. The number of simulation settings, MCMC iterations and replicates were reduced to allow the full pipeline to run in a regular computer within reasonable time. Note that the plots produced by this tutorial should not be representative of the full study.
To reproduce the method, follow the steps in this tutorial.


Installing RevBayes
=================

The functions and methods used in this tutorial are implemented in the software RevBayes.
To install: [`RevBayes`](https://revbayes.github.io/).

Simulating datasets
=================

We will simulate 10 alignments under the Jukes-Cantor model, with 16 taxa, 100 sites and a mean branch length draw from an exponential distribution with rate 10.
From the `scripts` folder, run the script `simulate_JC.Rev` with the command:

	rb simulate_JC.Rev

You should see a new folder called `data`. Inside that folder there is another folder called `JC_16_taxa_nSites_100_bl_0.1`. In there you can see the simulated alignments and the corresponding trees.

Full analysis
=================

The full analysis pipeline is in the script `pps_full_analysis.Rev`. It can be run, from the `scripts` folder, with the command:

	rb pps_full_analysis.Rev

This analysis icludes both data-based and inference-based posterior predictive simulations.
The first step in the pipeline is to run the empirical MCMC on the simulated datasets. After that, we perform the posterior predictive data simulation, followed by the posterior predictive MCMC.
These two steps should be time consuming.
When these steps are finished, we calculate the summary statistics for the data and the inference output.
The last step is to calculate the p-values for each summary statistic.

Plotting the Histograms
=================


Different settings for the analysis
=================

In this small tutorial we taught the basic steps to run the full analysis. Now we will explain how to change some settings to perform a different analysis.

1. Changing the simulation settings:

	The number of alignments, taxa, sites and mean branch length are specified in the beginning of the `simulate_JC.Rev` script. To change any of these variables, simply change the value on the script.
	To simulate datasets under the GTR model with Gamma among site rate variation and proportion of invariable sites: use the script `simulate_GTR_I_G`. The specifics of the alignments can be changed in the same way as for JC.
	If the number of simulated datasets or the mean branch length are changed, these values should be manually changed in the script `pps_full_analysis.Rev`.

2. Changing the substitution model for the inference:

	The model is specified in the script `pps_full_analysis.Rev` in the variable **model_name**. To perform inference under the GTR model change the **model_name** to "GTR_G_I".

3. Changing the MCMC settings for the empirical MCMC

	The changes on the MCMC settings should be done on the script `pps_MCMC_Simulation.Rev`. 

	   


