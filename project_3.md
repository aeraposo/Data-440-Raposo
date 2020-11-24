## Project 3: the final countdown

For project 3, we were tasked with modeling population movement within the synthetic population derived in project 2.<br/>

![london map](https://aeraposo.github.io/Data-440-Raposo/london_map.png)<br/>

Before modeling population movement within my own selected area, I first completed [an exercise](https://rpubs.com/adam_dennett/257231) in creating a gravity model using population data of London, England.<br/>
After downloading the provided data, I took a closer look at its contents. The data contain polygons represeting the various cities and counties of England, along with their spatial coordinates. Next, I subset the data for London and proceeded to generate a distances matrix. This matrix contains the relative distances between loactions of mirgration within the city with respect to the CRS (coordinate reference system) or grid assigned to the area. These endpoints allow us to sketch lines between locations, which serve as "tracks" where flow occurs. After retrieving flow data from an additional source and combining it with the previously mentioned distance and destination data into a dataframe, I plotted a subset of flow lines, which I later modeled.<br/>

![flow lines subset](https://aeraposo.github.io/Data-440-Raposo/london_sub_map.png)<br/>

Next, it was time to make the gravity model. For simplicity, we began with a basic multiplicative gravity model, which functions under the assumption that "the flows between an origin and destination are proportional to the product of the mass of the origin and destination and inversely proportional to the distance between them" (Dennett). To determine the various parameters of the model, rather taking a wild guess, we can consider the impacts of other measurable factors on these parameters. In this example, I referenced salary as a potential predicter of the parameters. After deciding on some starting parameters, which I intended to tweak later, I ran the model on my London data.<br/>

To determine the success of the model, I measured its fit using several statistical measures including R-squared and root mean squared error. R-squared, the squared correlation coeffifient, is a measure of accuracy between 0 and 1 where 1 indicated a 'perfect' score. Root mean squared error (RMSE), the root of the average squared error of the model, is a measure of error. Using initial guesses of the paraments, the r-squared value was just .5 and the rmse was around 2,500. These measures are indicative of a poorly fit model but not bad for a first try. I then went to to make various small changes in the model's parameters before refitting and retesting. Any change to a parameter also pressed my to consider changes to the other parameters. This is due to their interconnectedness within the model as described above, "as origin and destination masses increase, flows increase, but as distance increases, flows decrease, and vice versa" (Dennett).

Although seemily simplistic, the applications of this modeling extend beyond the infrastructure that it represents and evaluates. As descrived by Garcia and other contributers to their 2015 paper 'Modeling internal mirgration flows in sub-Saharan Africa using census microdata', gravity models not only allow us to model population movement and interactions with existing infrastructure but also allow us to model this interactions after introducing alterations to infrastrcutre. After the signifiant changes in transportation that came with globalization, rapid changes in development have occured that either harm or aid in societal transportation flow. In a modern context, traffic is largely dictated by the physical strcutres that direct its flow. For example, the addition of a new exit to a highway could either expedite or impede traffic flow. Using a gravity model, however, these additions can be modeled before any concrete changes are made, saving money, time, and resources.

Before attempting to model the movements of individuals, I frist had to define the locations of origin and destination within each subdivision. These centerpoints were taken from the centerpoints recorded in project 2 and defined the enpoints of the various lines of flow. Moreover, the centerpoints are also representative of the population sizes and amount of migration of individuals from these locations, which effects infrastrcutre demand, congestion, and flow.<br/>

![pts](https://aeraposo.github.io/Data-440-Raposo/uga_pts_map.png)<br/>

Within the selected administative subdivision, I documented these paths of movement in an origin-denstination matrix (OD matrix). These lines of movement, or flow, is represented by geospatial coordinates marking the origin and destination destination of movement. Paired with a calculated distance and time component, this information allows for the formation of a gravity model, similar to the one described above. After generating flows from each subdivision to every other subdivision, I removed flows that maped from a subdivision back to itself and those that did not originate form my selected location. Below is a portion of my OD matrix-<br/>

![odm](https://aeraposo.github.io/Data-440-Raposo/odm_final.png)<br/>

My matrix contained 56 observations and 15 variables and once expanded to represent travel among all subdivisions, contained 3080 observations. This is because I chose to model movement at the country level so each of the 56 subdivisions of Uganda are represented here. Becuase there are quite a few subdivisions represented here, I calculated the average distance between their centerpoints which was 47315.25 meters or ~47.315 kilometers.<br/>

Lastly, I made the following animation of a single agent traveling from Adjumani to Apac using the gganimate library. The time scale is compressed over 5 units.<br/>
![gif](https://aeraposo.github.io/Data-440-Raposo/gif.gif)<br/>

Here is a tesselation of voronoi polygons within the Kumi subdivision of Uganda. To reproduce the above models and plot within this subdivision, I would subset the origina world pop data to only include data pertaining to Kumi, use this data to product an od matrix, and subset flow data to contain flows between the centerpoints picutred below. Then, creating the animation and plots would follow directly.<br/>

![uganda st](https://aeraposo.github.io/Data-440-Raposo/uga_st.png)
