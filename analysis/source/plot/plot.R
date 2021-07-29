library(yaml)
CONFIG <- yaml.load_file("config_global.yaml")

main <- function() {
  
  # get data
  draw_data <- read.csv(sprintf("%s/draw_data.csv", CONFIG$build$draw_data))

  # plot test
  png(sprintf("%s/plot_v1_v2.png", CONFIG$build$plot))
    plot(draw_data$V1, draw_data$V2, xlab="V1", ylab="V2")
  dev.off()

  png(sprintf("%s/hist_v3.png", CONFIG$build$plot))
    hist(draw_data$V3)
  dev.off()
  
}

main()
