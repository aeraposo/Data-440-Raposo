## Exploring a new R package: mlr3viz
This week, I researched the mlr3viz package in R. This package was released in January, 2020 and is used to visualize mlr3 objects.<br/>
- **Mlr3 objects** are of the task class, which contains tasks, predictions, and other various results.<br/>
- **Tasks** are methods used to work with data without directly changing the DataBackend.<br/>
- **DataBackend** is a package designed to format data into either a table or a matrix, depending on which implimentation you use.
Essentially, these objects work together as an interface that enables data flow from a given form of data storage (ie- a remote database or datasets). This is especially useful when working with large quantities of data and in scaling smaller amounts of data. Particularly, these objects have applications in machine learning where large, diversified, and scalable data are required.<br/>
The mlr3viz package allows users to produce visual aids that summarize the data, which the mlr3 interact with. mlr3viz is capable of producing several handy summary statistics, such as quantiles in within a data distribution, and more.<br/>
After importing the package, you can produce the following plots by calling the autoplot(your_mlr3_object) function. This returns a ggplot2 object, which is can be customized with labels, different colors, etc, just as you would do with standard ggplot arguments.
![mlr3viz pair plot](https://rviews.rstudio.com/2020/02/24/january-2020-top-40-new-r-packages/mlr3viz.png)<br/>
As you can see, there are many unique plots offered in this package, includeing barplots, boxplots, histograms, ROC curves, and Precision-Recall curves.

These are just a few mays the mlr3viz library can be used and its aplications certainly stretch beyond what I have covered here.<br/>

Although the languages of R and python are quite distinct, I have noticed several similarities between this package and both maplotlib and seasborn in python. Although mine isn't quite as sophisticated or as mathematically advanced as the above plot, my pair plot below highlights some of the shared graphical capabiliteis of these libraries. <br/>
This pairplot is from my final project for Applied Machine Learning, which I took this summer:<br/>
![seaborn pair plot](https://github.com/aeraposo/Data-440-Raposo/pair_plot_example.png)<br/>


https://cran.r-project.org/web/packages/mlr3viz/index.html
souces:
https://cran.r-project.org/web/packages/mlr3viz/index.html
https://rviews.rstudio.com/2020/02/24/january-2020-top-40-new-r-packages/
https://cran.r-project.org/web/packages/mlr3viz/readme/README.html

https://mlr3.mlr-org.com/

https://mlr3.mlr-org.com/reference/DataBackend.html
https://cran.r-project.org/web/packages/mlr3viz/mlr3viz.pdf
