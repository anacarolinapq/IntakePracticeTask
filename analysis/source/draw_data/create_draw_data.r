library(yaml)
library(MASS)
CONFIG <- yaml.load_file("config_global.yaml")

main <- function() {
  total_vars <- 3
  total_draws <- 10^4
  x <- MASS::mvrnorm(total_draws, mu=rep(0, total_vars), 
                     Sigma = diag(total_vars))
  write.table(x, sprintf("%s/draw_data.csv", CONFIG$build$draw_data),
              row.names = FALSE, col.names = TRUE, quote = FALSE, sep = ",")
}

main()
