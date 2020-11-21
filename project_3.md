## Project 3: the final countdown

For project 3, we were tasked with modeling population movement within the synthetic population derived in project 2.

# London gravity model:<br/>

Before modeling population movement within my own selected area, I first completed [an exercise](https://rpubs.com/adam_dennett/257231) in creating a gravity model using population data of London, England.<br/>
After downloading the provided data, I took a closer look at its contents. The data contain polygons represeting the various cities and counties of England, along with their spatial coordinates. Next, I subset the data for London and proceeded to generate a distances matrix. This matrix contains the relative distances between loactions of mirgration within the city with respect to the CRS (coordinate reference system) or grid assigned to the area.

Although interesting to create, the applications of this technology extend beyond the infrastructure, which is modeled and evaluated above. As descrived by Garcia and other contributers to their 2015 paper 'Modeling internal mirgration flows in sub-Saharan Africa using census microdata', gravity models not only allow us to model population movement and interactions with existing infrastructure but also allow us to model this interactions after introducing alterations to infrastrcutre. After the signifiant changes in transportation that came with globalization, rapid changes in development have occured that either harm or aid in societal transportation flow. In a modern context, for example, traffic is largely dictated by the physical strcutres that direct its flow. The addition of a new exit to a highway could either expedite 

- effects of globalization, 

![uganda st](https://aeraposo.github.io/Data-440-Raposo/uga_st.png)<br/>

Before attempting to model the movements of individuals, I frist had to define the locations of origin and destination within each subdivision. These centerpoints were taken from the centerpoints recorded in project 1/2.

![pts](https://aeraposo.github.io/Data-440-Raposo/uga_pts_map.png)<br/>

Within the selected administative subdivision, I documented the predicted movement of individuals in an origin-denstination matrix (OD matrix). This movement, or flow, is represented by geospatial coordinates marking the origin and destination destination of movement along with a calculated distance and time component. After generating flows from each subdivision to every other subdivision, I removed flows that maped from a subdivision back to itself and those that did not originate form my selected location. Below is a portion of my OD matrix-<br/>

![odm](https://aeraposo.github.io/Data-440-Raposo/odm.png)<br/>


![gif](https://aeraposo.github.io/Data-440-Raposo/gif.gif)<br/>
