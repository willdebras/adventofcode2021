# Part 1

input <- read.fwf("Day 3/day_3_input.txt", widths = c(rep(1, 12)))

gamma <- apply(input, 2, function(x) ceiling(median(x)))
epsilon <- as.integer(sapply(gamma, `!`))

gamma_dec <- strtoi(paste0(gamma, collapse = ''), 2)
epsilon_dec <- strtoi(paste0(epsilon, collapse = ''), 2)


gamma_dec * epsilon_dec
