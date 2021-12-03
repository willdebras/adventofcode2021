# Part 1

input <- read.fwf("Day 3/day_3_input.txt", widths = c(rep(1, 12)))

gamma <- apply(input, 2, function(x) ceiling(median(x)))
epsilon <- as.integer(sapply(gamma, `!`))

gamma_dec <- strtoi(paste0(gamma, collapse = ''), 2)
epsilon_dec <- strtoi(paste0(epsilon, collapse = ''), 2)


gamma_dec * epsilon_dec


# Part 2

oxy <- input
co2 <- input
oxy$dec <- apply(oxy, 1, function(x) strtoi(paste0(x, collapse = ''), 2))
co2$dec <- apply(co2, 1, function(x) strtoi(paste0(x, collapse = ''), 2))

while (nrow(oxy) > 1) {
  oxy <- oxy[oxy[[1]]==ceiling(median(oxy[[1]])), -1, drop = F]
}


while (nrow(co2) > 1) {
  co2 <- co2[co2[[1]]==as.integer(sapply(ceiling(median(co2[[1]])), `!`)), -1, drop = F]
}

oxy$dec * co2$dec

