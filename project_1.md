## Project 1: Code Red, computer meltdown in progress

**Creating a Geometric Bar Plot with your Simple Feature object:**
Now that we've added a new column to the adm1 oject that summarizes the total population for each subdivision, let's make a bar plot of the population density on this level.<br/>
- First, I added two new columns to the adm1 (sf) object: one that gives the area of each subdivision in square kilometers and one that describes population density. As with the first time, I made the new columns using the piper operator (%>%) but also used the mutate() command. This function is part of the tidyverse syntax and creates a new vaariable by performing calculations with other variable(s).<br/>
  - For area, I used st_area() to compute the area. These values were measured in m^2 so to make the conversions to km^2 I used the set_units() command from the units library.<br/>
  - For density, I used the mutate() command again and specified how to calculate density in the argument density = numerator_variable / denominator_variable. The numberator variable (column in the adm1 sf object) was the area and the demoninator was the pop20 object that lists the population in each subdivision. Density is measured in person per km^2 (1/km^2).<br/>
To visualize the population in each subdivision in a bar plot, I started by creating a new ggplot object by piping the adm1 into this new object. Next, I called geom_bar() with optional arguments (such as color and width of the bars) to make the barplot. I also used coord_flip() to flip the bars horizontally and labeled the axises using xlab("label") + ylab("label")<br/>

![bar plot](https://aeraposo.github.io/Data-440-Raposo/bar_plt_1.png)<br/>

Let's reorder these districts from greatest to least population size using fct_reorder() and add the % of total population:<br/>

![bar plot, sorted](https://aeraposo.github.io/Data-440-Raposo/bar_plt_1_sorted_and_labeled.png)<br/>

