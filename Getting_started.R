# Set the working directory as the file where your data is stored
setwd('/Users/aeraposo/R_files/Testing-data')
# Show me what we set the working directory as
getwd()

# Creating objects
# A list of a range of numbers
x <- 1:10
y <- 10:1 # listing in reverse order
# show me all the objects in the project
ls()

# Making a plot using the above lists
plot(x,y) # plot the points
plot(x,y,type = "l") # plot a line
plot(x,y,type = 'o') # plot the points and a line

# Plot with labels (can all be on one line- comma separated input arguments for plot)
plot(x, y, type = "o", 
     main = "The Path of a Running Boy",
     sub = "units of distance = meters",
     xlab = "longitude", 
     ylab = "latitude")

# change the line type (lty), color (col), line weight (lwd), point shape (pch)
plot(x, y, type = "b", main = "The Path of a Running Boy", 
     sub = "units of distance = meters", 
     xlab = "longitude", 
     ylab = "latitude",
     lty = 2,
     lwd = .75,
     col = "blue",
     pch = 0,
     cex = 1.5)

# More complicated plots and DataFrames
x <- 1:100
y <- 1:100

# select 10 random points, x and y specify the range of the values
east <- sample(x, size = 10, replace = TRUE)
north <- sample(y, size = 10, replace = TRUE)

# make a plot with the 10 random points (specified above), squares argument specifies the size of squares, inches = FALSE specifies that the units of the axis and of the points are the same
symbols(east, north, squares = rep(.75,10), inches = FALSE)
# add more random points to this graph but as circles (recall, x and y specify the range of the random values)
# add = TRUE adds the new points to the previous graph, 0.75 is the radius of each circle, fg specifies the color of circles
symbols(sample(x, 10, replace = TRUE), 
        sample(y, 10, replace = TRUE), 
        circles = rep(.75,10), 
        inches = FALSE,
        fg = "green",
        add = TRUE)

# do it again with more point types
symbols(east, north, squares = rep(.75,10), inches = FALSE)

symbols(sample(x, 10, replace = TRUE), 
        sample(y, 10, replace = TRUE), 
        circles = rep(.75,10), 
        inches = FALSE,
        fg = "green1",
        bg = "beige",
        add = TRUE)

symbols(sample(x, 10, replace = TRUE), 
        sample(y, 10, replace = TRUE), 
        circles = rep(1.5,10), 
        inches = FALSE,
        fg = "green4",
        bg = "beige",
        add = TRUE)

# Make a DataFrame
class(east) # show type (lists of integers so the type is integer)
dwellings <- cbind.data.frame(id = 1:10, east, north) #make a DataFrame (id is the index numbers range, east and north are the columns)
dwellings # show me

# lets add lines to our previous plot (from point to point as they are graphed), the $ indexes the DF/tells in which variable to look at.
# notice this command does NOT need the add = TRUE command
lines(x = dwellings$east,
      y = dwellings$north,
      lty = 2,
      lwd = .75,
      col = "blue")
# label the points in the order they were added
text(x = dwellings$east,
     y = dwellings$north,
     labels = dwellings$id)

# Add more lines among 3 random points
# randomly select 3 numbers between 1 and 10 (distinct ones b/c replace is false)
locs <- sample(1:10, 3, replace = FALSE)
class(locs)
# brackets can be used like this [row#,col#] to select a specific DF entry
# add the lines- note that locs' entries are used to index the dwellings DF for the random points
lines(x = dwellings[locs, 2],
      y = dwellings[locs, 3],
      lty = 2,
      lwd = .75,
      col = "blue")
# an alternative way of doing the same thing
#text(x = dwellings[locs, ]$east, 
#     y = dwellings[locs, ]$north + 3,
#     labels = dwellings[locs, ]$id)

# draw a curved line b/t 3 points
xspline(x = dwellings[locs, 2],
        y = dwellings[locs, 3],
        shape = -1,
        lty = 2)

# STRECH GOAL:
x <- 1:1000
y <- 1:1000

x_axis <- sample(x, size = 50, replace = TRUE)
y_axis <- sample(y, size = 50, replace = TRUE)

# add 50 random points
symbols(x_axis, y_axis, squares = rep(5,50), inches = FALSE)

# add these 50 points to a DF
rand_50 <- cbind.data.frame(id = 1:50, x_axis, y_axis) #make a DataFrame (id is the index numbers range, east and north are the columns)
rand_50$id # this is a list of the index values
random_seven = sample(rand_50$id,7) # the index of the random 7 points to use at the end
x_random_seven = rand_50$x_axis[random_seven] # random x points
y_random_seven = rand_50$y_axis[random_seven] # random y points

# add 40 random circles ("trees")
symbols(sample(x, 40, replace = TRUE), 
        sample(y, 40, replace = TRUE), 
        circles = rep(5,40), 
        inches = FALSE,
        fg = "green",
        add = TRUE)

# add 12 larger trees
x_12 = sample(x, 12, replace = TRUE)
y_12 = sample(y, 12, replace = TRUE)

symbols(x_12,y_12, 
        circles = rep(10,12), 
        inches = FALSE,
        fg = "purple",
        add = TRUE)

# add a curved line among the 12 points randomly added to this DF

xspline(x = x_random_seven,
        y = y_random_seven,
        shape = -1,
        lty = 2)
title("A person's path between homes")
