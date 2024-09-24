library(tidyverse)
library(rtms)

# Using development version 0.1.1
library(rtmsEcho)

wiffFile <- "example.wiff"
wiffScanFile <- "example.wiff.scan"
center <- 1.2 # 900 ms shot spacing plus 300 ms for each shot
efficient <- TRUE # Shots traverse back and forth across plate

# Access WIFF Binary Data
wiff <- newWiffReader(wiffFile, wiffScanFile)
tic <- getAllTIC(wiff)[[1]]
shots <- getWiffShots(wiff)

# Identify ejection timing and measure intensity
peaks <- measurePeaks(tic,shots,center=center,efficientPath=efficient)
peaks <- peaks %>%
	rename(c("Well"="well","Time"="time","Area"="area",
			 "Height"="height","Width"="width","HalfWidth"="halfWidth")) %>%
	select(Well,Time,Area,Height,Width,HalfWidth) %>%
	mutate(Sample="Sample1")

write_tsv(peaks,"output.txt")