## Into the Unknown: Getting Started With R and RStudio
Clearly, I did not read the course description carefully enough because I choked on my coffee on day 1 when we were told "this class will primarily be taught in R". Having never sucessfully executed more than a few lines in this language, I was a little worried about starting from the ground up in a 400 level course, but so far so good! I was able to redownload R and RStudio, while envoking mildly traumatic memories for my computer, and began my first exercise. There were a few main skills learned in this section, which I'll summarize below.<br/>
- Setting a working directory: Set a working directory by specifying a file path and return your working directory by calling the following
```
setwd('your filepath')
getwd()
```
- Instantiating an object: This can be of any class (or type), the arrow points left. Here are some examples
```
x <- 'apple'
x <- 1:10
x <- 4.32
```
- Plot with lines connecting points: The plot() function takes 2 main arguments- an object with x value(s) and one with y value(s). There are also several optional arguments- main = 'Graph Title', sub = 'Graph Subtitle, good to indicate units', xlab and ylab = 'Axis Labels', lty = # representing line type, lwd = # representing line weight, col = 'Color', pch = # representing point shape, cex = # representing scale of the point symbol.
```
plot(x,y, optional arguments)
```
- Select random numbers: x represents an object of a listed range of numbers, size indicates the # of values to pick, relace- if true the same value may be randomly selected multiple times. The example below will select 10 numbers between 1 and 100 and may contain repeated values.
```
x <- 1:100
object_name <- sample(x, size = 10, replace = TRUE)
```
- Plot points, lines optional/specified: circles/squares argument specifies the shape of the point and = point size (rep takes the # of times to repeat the point, which changes its size and the number of points plotted), inches = FALSE specifies that the units of the axis and of the points are the same, fg = 'color of points'. To add additional points to the same graph, call symbols a second time with add = TRUE. Below we will plot a total of 20 points
```
# plot 10 points in red
symbols(x_values, y_values, squares = rep(.75,10), inches = FALSE, fg = "red")
# now add 10 more points in green
symbols(more_x_values, more_y_values, circles = rep(.75,10), inches = FALSE, fg = "green", add = TRUE)
```


One thing I didn't quite get the hang of the first time around was the $ operator. Using the [] for indexing made a lot more sense but I think its valuable to understand both so I'm planning to reread/rerun that portion.
