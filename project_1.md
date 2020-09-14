## Project 1: Code red, computer meltdown in progress

**Creating a Geometric Bar Plot with your Simple Feature object:**<br/>

After my computer took a brief hiatus to delete its own operating system, I was able to start project 1!<br/>
For this project, I attained my data from [GADM]( https://gadm.org/), which provides geospatial and population data for each country and its subdivisions. I selected Uganda and began by downloading a zip file containing the necessary shapefiles (shp). Shp files contain both geospatial information, in the form of polygons, and descriptive population measurements. After familiarizing myself with the data and producing some base level plots during week 2, week 3 began with making a geometric bar plot with a simple features object
- Read more about the specifics of making the bar plot [HERE](https://aeraposo.github.io/Data-440-Raposo/geo_bar_plot.md)
![geo. bar plot](https://aeraposo.github.io/Data-440-Raposo/geo_bar.png)<br/>

**De facto description of human settlements and urban areas (accessibility 1)**<br/>
For this portion of the project, I generated a map of the district of Kumi, Uganda that shows areas of poplation settlement/ urban areas. To create such a map, I generated a planar point pattern(PPP) of the country. The planar point pattern is a visual representation of population dispersal. This pattern is randomly generated using the rpoint() method, which makes random predictions about population distribution based on defining features and variations in input data within a defined window (in this case, the window contained only Uganda). I also took a closer look at this area by generating a similar ppp of Kumi unioned with its neighboring districts Ngora and Bukedea.<br/>

![planar point pattern](https://aeraposo.github.io/Data-440-Raposo/ppp_uga.png)<br/>

Next, I generated a color-scaled map of the population density represented in the pps. I was also able to generate polygon that encircle well-defined settlements or clusters apparent in the maps, and filter out repetitive or incomplete ones. After overlaying the polygons on the maps, I was left with the following:<br/>

![density plots](https://aeraposo.github.io/Data-440-Raposo/both_density.png)<br/>

Using a similar process to that used to generate the above density, plots, I plotted the identified ubran settlements on the following maps- these allow us to visualize both population cluster sizes and the relative density of the clusters. One issue that I couldn't seem to solve was the density of the clusters- they just seem too high without explaination. We talked in class about how this may be random 'noise', however, all of my clusters are extremely dense.<br/>

![urban areas](https://aeraposo.github.io/Data-440-Raposo/urban_areas_uga.png)<br/>

I though it was interesting how settlements in Kumi seem to be clustered either on the side near Ngora, which boarders a body of water and is closer to the capital (Kampala) or are on the boarder of Ngora. Looking back, after completing accessability 2, I think the clusters on the Bukedea side are due to increased access to roads and health care. I'm interested to see the 3D plot to confirm my suspicions about population clustering by water on the Ngora side.
**Adding transportation facilities & health care services**<br/>
Next, I added transportation and health care services to the map of Kumi. I also chose to union Kumi with 2 neighboring districts- Ngora and Bukedea. By expanding my window, I was better able to visualize the infrastructure in and arround my selected district. These maps have many applications in community development and offer some insight into the economic and medical [crises](https://www.imf.org/en/News/Articles/2020/05/21/na052120-the-imfs-support-for-ugandas-health-care-the-vulnerable-businesses-and-stability) that have stricken this area in during the COVID-19 pandemic.<br/>
- Making the maps: First, I dowloaded a dataset from the [Humanitarian Data Exchange (HDX)](https://data.humdata.org/dataset/uganda-road-network) and read it into R as a simple features object (sf). 
  - Sf objects are particularly adept at storing geospatial data, which is why this type of object appears so much in project 1/ in this class in general!
- Now that I had the data, I used the crop() function to keep just the information that was pertinent to Kumi and the surrounding area. If I were to use the mask() method directly after this, I would limit the plotted features to those exclusively within Kumi, but I wanted to see some of the surrounding area too, so I left this part out.<br/>
- After taking a quick look at what kinds of roads were present in my subset area (Kumi), I defined three new sf objects to represent the data that pertains to each type of road. Then, I produced a gg plot of kumi and overlayed the different kinds of roads.<br/>
- After repeating this whole process with data contianing locations of different kinds of healthcare facilities (also from HDX), I was left with the plots below.<br/>
- A few challenges I faced:
  - I wanted to add a legend to these plots- I searched online and tried several methods with no success.<br/>
  - Also, my population count for Kumi totaled to 308,672. According to Google, this is an overestimation by 50,000 but I cannot see how such an error may have occured. After unioning Kumi with Ngora and Bukedea, the population total was 718,297, which is also an overestimation.

![health care and roads](https://aeraposo.github.io/Data-440-Raposo/health_care_access.png)<br/>

**Rendering Topography (accessibility 3)**
For me, this was definitely the most exciting part of project 1. There is something about generating a 3d plot from seemingly uninterpretable data that is super awesome (for lack of better words)! Although I struggled with getting the settlements to shade in, I would call my 3d plot an overall success. This plot also sheds some light on the community distributions within Kumi.
How has topography appeared to have impacted the development of urban areas?
How has topography appeared to have impacted the development of transportation facilities?
How has topography appeared to have impacted the location of health care facilities?
Has producing your three-dimensional map resulted in an interpretion that is different from your previous analysis?

