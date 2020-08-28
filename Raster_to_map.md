## Extracting Populations from a Raster and Aggregating to each Unit
In [this exercise](https://tyler-frazier.github.io/dsbook/describe.html#extracting-populations-from-a-raster-and-aggregating-to-each-unit), we made a ggplot that showed population distribution in a chose country.
```
plot(uga_pop20)
plot(st_geometry(uga_adm1), add = TRUE)
```
![tiff image](https://aeraposo.github.io/Data-440-Raposo/uga_tiff.png)<br/>

First, I read in a .tiff image of Uganda, using raster(), and verified that its boarders matched those present in the .shp files used last time. I verified this using the plot() function to add both maps to the same plot and visually checked that the boundaries appeared to match. As you can see, its hard to tell what the population density is across the entire country becuase of the high counts (in major cities) that skew the color scale of the map.<br/>

![map1](https://aeraposo.github.io/Data-440-Raposo/uga_pop_20_map1.png)<br/>

As I mentioned above, I read in my .tiff file as a raster object, which stores the map's contained information in different cells representing each pixel. In order to work with the data, I extracted it using the extract() function. In order to extract the millions of cells contained within the raster, a computationally expensive task, we use parallel processing to optimize the computer's ability to do so. After downloading the library, using this process allocates tasks to different cores within the computer, which expedites the run time by distributing the workload. As seem below, Clusters determines the distribution of the 'work'. The pop_vals_adm1 is a new DataFrame object where the millions of values will be stored once extracted form the raster. We also used the snow library, which is used during parallel processing (even though we don't call it directly).
```
ncores <- detectCores() - 1
beginCluster(ncores)
pop_vals_adm1 <- raster::extract(uga_pop20, uga_adm1, df = TRUE)
endCluster()
```
We can then take the information stored in pop_vals_adm1 and call the pipepline operator (%>%) to create a subset of the data, stored as totals_adm1, which is sorted by the sub-country ID number. This subset contains two variable- an ID number (1-58 in this case) and the population present size in each of the cells found in the raster. By using the summarize() function, we can add the rows with the same ID number. This means our object now contains population totals for each of th 58 sub-countries of Uganda.
```
totals_adm1 <- pop_vals_adm1 %>%
  group_by(ID) %>%
  summarize(totals_adm1 = sum(uga_ppp_2020, na.rm = TRUE))
```
By adding these totals to the data extracted from our original shape file, each of the hundreds of thousands of rows now has an entry that indentifies the total population of the subcountry the given location is contained in. This will help us eliminate the patchiness seen in our first graph.
```
uga_adm1 <- uga_adm1 %>%
  add_column(pop20 = totals_adm1$totals_adm1)
```
Now we can make a plot! Because each location in the shapefile has a matching population count to the other locations in each of the 58 subcountries, we are able to generalize the population distribution of these areas, making more a more interpretable plot.
![map2](https://aeraposo.github.io/Data-440-Raposo/uga_pop_20_map2.png)<br/>
