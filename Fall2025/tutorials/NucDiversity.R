library(ggplot2)
library(tidyverse)

setwd("~/Downloads/")

# First let's read in the diversity stats
theta <- read.table("2030_ALL_win50000_step50000.thetas",sep="\t",header=T)

theta$tWsite = theta$tW/theta$nSites #scales the theta-W by the number of sites
theta$tPsite = theta$tP/theta$nSites #scales the theta-Pi by the number of sites

summary(theta)

sum(theta$nSites)


# We can plot the nucleotide diversities and Tajima's D as sliding windows along the genome:

theta2 <- theta %>%
  arrange(Chr, WinCenter) %>%
  filter(nSites>100)

summary(theta2)

nSites = sum(theta2$nSites)

ggplot(theta2, aes(x=nSites)) +
  geom_histogram(bins = 50, fill = "lightblue", color = "black") +
  geom_vline(xintercept = median(theta2$nSites), color = "red", linetype = "dashed", linewidth = 1) +
  labs(title = paste0("Distribution of sites with data (total N sites = ",nSites,")"), x = "Number of sites in 50kb windows", y = "Frequency")


# Genome-wide plot of nucleotide diversity
ggplot(theta2, aes(x=Chr, y=tPsite, color=Chr)) +
  geom_point(size=0.75, shape=1, show.legend=F) +
  ylim(0,0.075) +
  labs(title = "Nucleotide diversity for population 2030", x = "Scaffold", y = "Theta-Pi")


# Genome-wide plot of segregating sites
ggplot(theta2, aes(x=Chr, y=tWsite, color=Chr)) +
  geom_point(size=0.75, shape=1, show.legend=F) +
  ylim(0,0.075) +
  labs(title = "Segregating sites for population 2030", x = "Scaffold", y = "Theta-W")


# Comparison of pi vs. theta-W
ggplot(theta2, aes(x=tWsite, y=tPsite, color=Chr)) +
  geom_point(size=0.5, shape=1, show.legend=F) +
  xlim(0,0.05) + ylim(0,0.05) +
  geom_abline(slope = 1, intercept = 0, linetype = "dashed", color = "black") +
  labs(title = "Pairwise differences vs. segregating sites", x = "Theta-W", y = "Theta-Pi")

# Let's look at Tajima's D
ggplot(theta2, aes(x=Tajima)) +
  geom_histogram(bins = 50, fill = "lightblue", color = "black") +
  geom_vline(xintercept = median(theta2$Tajima), color = "red", linetype = "dashed", size = 1) +
  labs(title = "Distribution of Tajima's D", x = "Tajima's D", y = "Frequency")


# You can order the contig list to show you the windows/contigs with the highest values of Tajima's D, or the lowest

head(theta[order(theta$Tajima, decreasing = TRUE),]) # top 10 Tajima's D values

head(theta[order(theta$Tajima, decreasing = FALSE),]) # bottom 10 Tajima's D values

#You can also look for windows/contigs that have combinations of high Tajima's D and low diversity -- these could represent outliers for selection!
theta[which(theta$Tajima< -1.5 & theta$tPsite<0.001),]



      