library(dplyr)

input <- read.delim("Day 2/day_2_input.txt", header = F, sep = " ")

# Part 1

sums <- input %>% group_by(V1) %>% summarize(sum =sum(V2))

(sums[1,2] - sums[3,2]) * sums[2,2]

# Part 2

aim <- 0
hori <- 0
depth <- 0

for (i in 1:nrow(input)) {
  
  dir <- input[i, "V1"]
  val <- input[i, "V2"]
  
  if(dir=="down") {
    aim <<- aim + val
    }
  else if(dir =="up") {
    aim <<- aim - val
    }
  else if(dir == "forward") {
    hori <<- hori + val
    depth <<- depth + (aim * val)
  }
  
  print(paste("aim:", aim, "hori:", hori, "depth:", depth))
  
}

hori * depth
