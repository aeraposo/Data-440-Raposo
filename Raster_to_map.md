## Extracting Populations from a Raster and Aggregating to each Unit
In [this exercise](https://tyler-frazier.github.io/dsbook/describe.html#extracting-populations-from-a-raster-and-aggregating-to-each-unit), we made a ggplot that showed population distribution in a chose country. First, I read in a .tiff image of Uganda, as a raster, and verified that its boarders matched those present in the .shp files used last time. I verified this using the plot() function to add both maps to the same plot and visually checked that the boundaries appeared to match.
```
plot(uga_pop20)
plot(st_geometry(uga_adm1), add = TRUE)
```
![tiff image](https://aeraposo.github.io/Data-440-Raposo/uga_tiff.png)<br/>

I was able to plot the new population data but, as you can see, its hard to tell what the population density is across the entire country becuase of the high counts (in major cities) that skew the color scale of the map.<br/>

![map1](https://aeraposo.github.io/Data-440-Raposo/uga_pop_20_map1.png)

As I mentioned above, I read in my .tiff file as a raster object, which stores the map's contained information in different cells representing each pixel. In order to 
![map2](https://aeraposo.github.io/Data-440-Raposo/uga_pop_20_map2.png)
