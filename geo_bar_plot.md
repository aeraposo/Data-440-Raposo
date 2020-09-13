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
