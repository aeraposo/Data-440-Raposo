## Projecting, and Plotting, and Labelling Administrative Subdivisions (Oh, my!)
[This exercise](https://tyler-frazier.github.io/dsbook/describe.html#projecting-plotting-and-labelling-administrative-subdivisions) was both interesting and challenging in several ways. The applications of these maps will, evidently, become very important as we begin to model synthetic populations. Beyond being able to visualize population density and the distribution of agents with certain features, this visualiation will provide context to values and patterns that emerge withing the data. My main challenge during this exercise was in coercing RStudio to show me my plots. For each plot, the code would execute but plots would only show up after an additional 30min, in the case of the last map, which I ran on Uganda data. I included these plots but found that there were too many subdivisions to fit on the map, even using super tiny text (size = 0.1 in Uganda's 3rd plot). I also tried running the script on Portugal data and, because of the large volume of data (or at least I think so), the plot wouldn't show up even after an hour. Another hurdle I faced was was labeling my second plot- the white background of the Liberia label just wouldn't go away. I even tried passing it in directly as a string, with no luck. During this process, however, I swapped the oder of the layers in building ggplots and found that this order corresponds to the order in which they are added to the map. After a few more tries of swapping the layers, the white label miraculously disappeared! I included both plots to show what I mean.<br/>

First we installed a few liraries. The tidyverse package will is used to analyze and describe the various features in our data. This package is a collection of libraries, each of which works better on different types of data. We'll use ggplot, which is contained in the tidyverse, to create some zesty maps. We also installed the sf (simple features) package. Sf works well with tidyverse libraries and will help us analyze spatial data and pull out certain features that ggplot will use. Once a package is installed, which is only done once ever(ish) because it stays installed on your computer, we just need to call the package once in a script to use it. We do this with the library(package_name) package function.<br/>
Another handy skill we learned is how to clear your workspace using this line of code:
```
rm(list=ls(all=TRUE))
```
The data used for this project came from [GADM](https://gadm.org/) and is composed of a mixture of remotely sensed and secondary data. Remotely sensed data is generally satelite-collected and requires no human input and secondary is reported by people, such as census data. This data was stored in .shp files, which were accessed and summarized using the sf library in the following way:
```
spacial_data_object_name  <- read_sf("folder_name/file_name.shp")
st_geometry(spacial_data_object_name)
```
This part wasn't included in the code but I got error when I ran without it: library(ggplot2)<br/>
Next, we made ggplots with different levels of detail. To add layers to the ggplots, we used geom_sf, which takes several inputs: data = spacial_data_object_name, size = # line size, alpha = transparency (between 0 and 1), color = 'edge color', fill = 'fill color'. Next, we added text to the maps using geom_sf_text. These layers also took several arguments: data = spacial_data_object_name, aes(label = column name in spatial data with the text labels you want),size = text size, color = "text color". NOTE: a + is needed in between layers.
```
ggplot() +
  geom_sf(data = uga_int,
               size = line_size,
               color = 'edge color',
               fill = 'fill color',
               alpha = transparency) +
  geom_sf_text(data = spacial_data_object_name,
               aes(label = column name),
               size = text size,
               color = "text color")
```
To add further geographic layers with more detailed regions, we simply repeated the process of reading in another .shp file, assigning it to an object, and adding it's data to a layer of the ggplot. Lastly, we learned how to save a ggplot to your working directory folder like this:
```
ggsave("file_name.png")
```

**Plot 1:**<br/>

![Plot 1- Uganda and Liberia](https://aeraposo.github.io/Data-440-Raposo/gg_plot1.png)<br/>

**Plot 2:**<br/>

![Plot 2- Uganda and Liberia](https://aeraposo.github.io/Data-440-Raposo/gg_plot2.png)<br/>
**You can see the issue I had with the white label in these plots.**

**Plot 3:**<br/>

![Plot 3- Uganda and Liberia](https://aeraposo.github.io/Data-440-Raposo/gg_plot3.png)<br/>
**You can see the issue I had with overcrowding labels in these plots.**<br/><br/>

<br/>**UPDATE: I made an improvement!**<br/>

![Uganda Improved](https://aeraposo.github.io/Data-440-Raposo/Uganda_improved.png)
