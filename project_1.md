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

We can also represent these %s with a color scale in the bars:<br/>

![color scale %](https://aeraposo.github.io/Data-440-Raposo/colorful_%_plt.png)<br/>

Now, let's add population density values to the original map of Uganda that showed population distribution.<br/>

![color scale %](https://aeraposo.github.io/Data-440-Raposo/density_map.png)<br/>

We can now display the above bar plot and map side by side using the ggarrange() function from the ggpubr library.<br/>

![labeled map and bar plot](https://aeraposo.github.io/Data-440-Raposo/labeled_bar_map.png)<br/>

**De facto description of human settlements and urban areas:**<br/>
![cropped and masked](https://aeraposo.github.io/Data-440-Raposo/crop_mask1.png)<br/>

After croping the raster and masking the sf adm2 object, I used the readShapeSpatial() method from the maptools library. This creates a SpatialPolygonsDataFrame, which I used to define a window or boundary for the country's boarders and subdivisions. I also used this boundary to define the endges of a selected district- Gulu. Now that the boarders are defined, we can generate a spatial probability distribution defined by the masked adm2 objected to produce a planar point patter on Gulu.

![Gulu ppp](https://aeraposo.github.io/Data-440-Raposo/ppp_uga.png)

Next, I used the spatstat library (primarily used for spacial statistics)

# Deliverables:
Upload the spatial plot that describes the de facto location of human settlements and urban areas, the center lines of classified roadways and the location of health care facilities by type throughout your selected and combined adm2, adm3 or adm4 areas.

Accompany your plot with a written statement that provides answers to the following information.

Total population of selected and combined adm2, adm3 or adm4 areas and the total number of distinctly defined human settlements or urban areas
A description of the distribution of sizes and densities of all human settlements and urban areas throughout your selected and combined adm2, adm3 or adm4 areas
A description of the roadways and your estimate of the transportation networks level of service in comparison to the spatial distriubtion of human settlements and urban areas
A description of health care facilities and your estimate of service accessibility in comparison to the spatial distriubtion of human settlements and urban areas
Each team member should be prepared to present their final draft results on Friday, November 15th during the informal group presentations. Upload your finished product to the slack channel #data100_project3 no later than 11:59PM on Sunday, November 17th.
