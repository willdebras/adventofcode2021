# Day 1 

input <- read.delim("Day 1/day_1_input.txt", header = F)

# Part 1

day1_part1 <- function(inputvec) {
  
  # Compute lagged differences
  diffs <- diff(inputvec)
  # Return length of vector of positive lagged differences
  return(length(diffs[diffs>0]))
  
}

day1_part1(input$V1)

# Part 2

day1_part2 <- function(inputvec) {
  
  # Compute linear filtering (lagged sum of 3 values)
  lagged_sums <- filter(inputvec, filter=c(1,1,1), sides=1)
  # Compute the lagged differences of these sums
  diffs_sums <- diff(lagged_sums)
  # Return length of vector of positive lagged differences
  return(length(diffs_sums[!is.na(diffs_sums) & diffs_sums>0]))
  
}

day1_part2(input$V1)


