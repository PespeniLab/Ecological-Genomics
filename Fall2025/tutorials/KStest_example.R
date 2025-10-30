


# Generate two samples
set.seed(123)
sample1 <- rnorm(50, mean = 0, sd = 1)    # Normal distribution
sample2 <- rnorm(50, mean = 0.5, sd = 1)  # Shifted mean

plot(sample1)
ggplot(sample1, aes(x = sample1)) +
  geom_density(fill = "lightblue", color = "blue", alpha = 0.5, linewidth = 1)

ks_result <- ks.test(sample1, sample2)


print(ks_result)

plot(ecdf(sample1), col = "blue", lwd = 2,
     main = "Kolmogorov-Smirnov Test: ECDF Comparison",
     xlab = "Value", ylab = "ECDF")
lines(ecdf(sample2), col = "red", lwd = 2)
legend("bottomright", legend = c("Sample 1", "Sample 2"),
       col = c("blue", "red"), lty = 1, lwd = 2)

# Optional: Add KS statistic visually
D <- ks_result$statistic
cat("KS Statistic (D):", D, "\n")
cat("p-value:", ks_result$p.value, "\n")
