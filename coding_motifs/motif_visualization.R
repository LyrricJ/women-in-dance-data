# Motif Sequence Visualization in R

# Load required library
library(ggplot2)

# Import the motifs CSV (make sure the file is in your working directory)
motifs <- read.csv("sample_motifs.csv")

# Add an index column to track sequence order
motifs$Index <- 1:nrow(motifs)

# Plot motif sequence as a line/point visualization
ggplot(motifs, aes(x = Index, y = Motif)) +
  geom_line(color = "steelblue", linewidth = 1) +
  geom_point(color = "darkred", size = 3) +
  labs(
    title = "Motif Sequence Visualization",
    x = "Sequence Step",
    y = "Motif Code"
  ) +
  theme_minimal(base_size = 14)
