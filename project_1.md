## Project 1: Code red, computer meltdown in progress

**Creating a Geometric Bar Plot with your Simple Feature object:**<br/>

After my computer took a brief hiatus to delete its own operating system, I was able to start project 1!<br/>
For this project, I attained my data from [GADM]( https://gadm.org/), which provides geospatial and population data for each country and its subdivisions. I selected Uganda and began by downloading a zip file containing the necessary shapefiles (shp). Shp files contain both geospatial information, in the form of polygons, and descriptive population measurements. After familiarizing myself with the data and producing some base level plots during week 2, week 3 began with making a geometric bar plot with a simple features object
- Read more about the specifics of making the bar plot [HERE](https://aeraposo.github.io/Data-440-Raposo/geo_bar_plot.md)
![geo. bar plot](https://aeraposo.github.io/Data-440-Raposo/geo_bar.png)<br/>

**De facto description of human settlements and urban areas (accessibility 1)**<br/>
For this portion of the project, I generated a map of Uganda that shows areas of poplation settlement/ urban areas. To create such a map, I generated a planar point pattern(PPP) of the country. The planar point pattern is a visual representation of population dispersal. This pattern is randomly generated using the rpoint() method, which makes random predictions about population distribution based on defining features and variations in input data within a defined window (in this case, the window contained only Uganda). I also took a closer look at this country by generating a similar ppp of the district of Kumi.<br/>

![planar point pattern](https://aeraposo.github.io/Data-440-Raposo/ppp_uga.png)<br/>

Next, I generated a color-scaled map of the population density represented in the pps. I was also able to generate polygon that encircle well-defined settlements or clusters apparent in the maps, and filter out repetitive or incomplete ones. After overlaying the polygons on the maps, I was left with the following:<br/>

![density plots](https://aeraposo.github.io/Data-440-Raposo/both_density.png)<br/>

Using a similar process to that used to generate the above density, plots, I plotted the identified ubran settlements on the following maps- these allow us to visualize both population cluster sizes and the relative density of the clusters. One issue that I couldn't seem to solve was the density of the clusters- they just seem too high without explaination. We talked in class about how this may be random 'noise', however, all of my clusters are extremely dense.<br/>

![urban areas](https://aeraposo.github.io/Data-440-Raposo/urban_areas_uga.png)<br/>

**Adding transportation facilities & health care services**<br/>
Next, I added transportation and health care services to the map of Kumi. I also chose to union Kumi with 2 neighboring districts- Ngora and Bukedea. By expanding my window, I was better able to visualize the infrastructure in and arround my selected district. These maps have many applications in community development and offer some insight into the economic and medical [crises](https://www.imf.org/en/News/Articles/2020/05/21/na052120-the-imfs-support-for-ugandas-health-care-the-vulnerable-businesses-and-stability) that have stricken this area in during the COVID-19 pandemic.<br/>

![health care and roads](https://aeraposo.github.io/Data-440-Raposo/health_care_access.png)<br/>

