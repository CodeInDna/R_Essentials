# File: 06_Colors_Data_Visualization.R
# Project: Baiscs_R

# LOAD DATA ##############################

x = c(24, 13, 7, 4, 8)  # Sample Data
barplot(x)              # Default barplot

# COLORS IN R ############################

# Color names R has 657 color names for 502 unique colors,
# arranged alphabetically except for white, which is first
?colors
colors()    # Get list of color names

# Web page with R colors swatches, color names, hex codes,
# RGB codes in (0-255 ad 0.00-1.00), and R index numbers;
# Browsable table on the page or in Google Sheets;
# downlodable as XLSX or PDF
browseURL("https://datalab.cc/rcolors")

# USE COLORS #########################

# Color names
barplot(x, col = 'red3')
barplot(x, col = 'slategray3')

# RGB triplets (0.00-1.00)
barplot(x, col = rgb(.80,0,0))
barplot(x, col = rgb(.62,.71,.80))

# RGB triplets (0-255)
barplot(x, col = rgb(205,0,0, max = 255))
barplot(x, col = rgb(159,182,205, max = 255))

# RGB hexcodes
barplot(x, col = '#CD0000')
barplot(x, col = '#9FB6CD')

# Index numbers
barplot(x, col = colors() [555])
barplot(x, col = colors() [602])

# MULTIPLE COLORS #######################
# Can specify several colors in a vector, which will cycle
barplot(x, col=c("red3", "slategray3"))

# USING COLOR PALETTES ##################

?palette    # Info on palettes
palette()   # See current palette

barplot(x, col = 1:6)   # Use current palette
barplot(x, col = rainbow(6)) # Rainbow colors   
barplot(x, col = heat.colors(6)) # Yellow through red
barplot(x, col = terrain.colors(6)) # Gray through green
barplot(x, col = topo.colors(6)) # Purple through tan
barplot(x, col = cm.colors(6)) # Pink through blues
