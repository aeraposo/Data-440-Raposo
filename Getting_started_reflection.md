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
- Select random numbers: x represents an object of a listed range of numbers, size indicates the # of values to pick, relace- if true the same value may be randomly selected multiple times. The example below will select 10 numbers between 1 and 100 and may contain repeated values.
```
x <- 1:100
object_name <- sample(x, size = 10, replace = TRUE)
```
- Check the class of an object:
```
class(object_name)
```
- Create a DataFrame: id = range of numbers for index, list objects that contain subsequent column entries
```
df_name <- cbind.data.frame(id = 1:10, col_1_entries, col_2_entries, etc.)
```
- Index a DataFrame: using either $ or \[ ]
```
df_name[row_number(s),col_number(s)]
# Index an entire column
df_name$col_name

```

- Plot with plot() function: Plots points with or without lines through. The plot() function takes 2 main arguments- an object with x value(s) and one with y value(s). There are also several optional arguments- type = 'o' or 'l' or 'b' ('o' the lines and the points on top, 'l' shows lines, 'b' also shows both), main = 'Graph Title', sub = 'Graph Subtitle, good to indicate units', xlab and ylab = 'Axis Labels', lty = # representing line type, lwd = # representing line weight (opacity), col = 'Color', pch = # representing point shape, cex = # representing scale of the point symbol.
```
plot(x,y, optional arguments)
```
- Plot with symbols() function: plots points (lines, etc. can be added too). Circles/squares argument specifies the shape of the point and = point size (rep takes the # of times to repeat the point, which changes its size and the number of points plotted), inches = FALSE specifies that the units of the axis and of the points are the same, fg = 'color of points'. To add additional points to the same graph, call symbols a second time with add = TRUE. Below we will plot a total of 20 points
```
# plot 10 points in red
symbols(x_values, y_values, squares = rep(.75,10), inches = FALSE, fg = "red")
# now add 10 more points in green
symbols(more_x_values, more_y_values, circles = rep(.75,10), inches = FALSE, fg = "green", add = TRUE)
```
- Add stright lines to a plot made with symbols function: uses lines function (takes same inputs as symbols function). Lines will be drawn in order of points listed. Add numbers to indicate the order in which the points were added/appear in the data.
```
# Add lines
lines(x = x_values_of_points,y = y_values_of_points,lty = 2, lwd = .75, col = "blue")
# Innumerate the points
text(x = x_values_of_points,y = y_values_of_points,labels = #_range_of_length_x_or_y)
```
- Add curved lines to a plot made with symbols function: takes same arguments for data as with straight lines, shape = not sure but I think it indicates how closely the line fits to the points (-1 works well). The line connects the points in the order in which they appear in the data.
```
xspline(x = x_points,y = y_points,shape = -1,lty = 2)
```
<br/>
Using all of this information, I made the following plots:
- This plot was made using the plot() function. By setting type = 'b', both lines and points are displayed,lty = 2 makes the line dotted, lwd = 0.75 controls the line opacity, col is set to blue so the line and points are blue, pch is set to 0 so the points are square, cex = 1 so the points are fairly large. Since the x values are 1-10 in ascending order and the y values are 1-10 in descending order, the line has a slope of -1.<br/>

![Running Boy Plot](https://aeraposo.github.io/Data-440-Raposo/running_boy_plt.png)<br/>

- Next, after defining a new set of 10 random points with x and y coordinates between 1 and 100 using the sample() function, 

One thing I didn't quite get the hang of the first time around was the $ operator. Using the [] for indexing made a lot more sense but I think its valuable to understand both so I'm planning to reread/rerun that portion. As of now, I understand that $ is used to index an entire column of a DataFrame (df_name$col_name).
