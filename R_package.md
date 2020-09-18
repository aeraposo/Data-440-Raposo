## Exploring a new R package: mlr3viz
This week, I researched the mlr3viz package in R. This package was released in January, 2020 and is used to visualize mlr3 objects.<br/>

- **mlr3 objects** are of the R6 class, which contains several subclasses such as tasks and predictions.<br/>

  - **Tasks** are used to access, handle, and potentially change data without directly changing the DataBackend.<br/>

    - **DataBackend** is a package designed to format data into either a table, matrix, or DataFrame, depending on which implimentation you use, making it easily accessible and visable for users.<br/>
  
  - **Predictions** are objects generated using the predict() function. This function is commonly used in machine learning- after training a model on a given dataset, we can ask the model to make a prediction, say classify an image as cat (0) or dog (1). The function takes input data with distinguished features and outputs a list of its predictions about the target variable. Additionally, you can provide the correct classifications, true values, etc., which will be displayed side by side with the  model's predictions.<br/>

Collectively, these objects work together as an interface that enables data flow from a given form of data storage (ie- a remote database or datasets). This is especially useful when working with large quantities of data and in scaling smaller amounts of data. Particularly, these objects have applications in machine learning where large, diversified, and scalable data are required.<br/>
- Machine learning in R actually has a lot of similarities to ML is python! All of the [same techniques are available](https://bradleyboehmke.github.io/HOML/index.html) and their implementation in R might look pretty familiar to Python users! For example,
```
# linear regression
lm(y_value~x_value, data = your_source)
# make is a multiple linear regression
lm(y_value~x_value + other_variable + another_if_you_want_to, data = your_source)
# clustering techniques such as k nearest neighbors (blueprint is an object containing some model presets such as step size, etc., cv is an object that specifies controls about sampling from the data such as allowing for resampling, hyper_grid points to an object that specifies how we want our graph of the knn validation as we increase the number of neighbors so we can select an appropriate number for k neighbors (this validation is measured with the ROC of the cross validation, as seen in the metric input))
train(blueprint, data = your_data, method = "knn", trControl = cv, tuneGrid = hyper_grid, metric = "ROC"
# Here is an example from a deep learning neural network (DNN). Just like in python, we can use keras!
model <- keras_model_sequential() %>%
  layer_dense(units = 128, input_shape = ncol(mnist_x)) %>%
  layer_dense(units = 64) %>%
  layer_dense(units = 10)
```
[Source for above info about ML](https://bradleyboehmke.github.io/HOML/index.html)<br/>

The mlr3viz package is useful because it allows users to produce visual aids that summarize their data or model performance, which above mlr3 objects interact with or are ingrained in. mlr3viz is capable of extrapalating several summary statistics, such as quantiles in within data distributions, means, and more.<br/>

After importing the package, you can produce the following plots by calling the autoplot(your_mlr3_object) function. This returns a ggplot2 object, which can be customized with labels, different colors, etc, just as you would do with standard ggplot arguments. The plot below is a pair plot containing a few of the plot types that the package supports.<br/>

![mlr3viz pair plot](https://rviews.rstudio.com/2020/02/24/january-2020-top-40-new-r-packages/mlr3viz.png)<br/>

As you can see, there are many unique plots offered in this package, includeing barplots, boxplots, histograms, ROC curves, and Precision-Recall curves.<br/>
Although the languages of R and python are quite distinct, I have noticed several similarities between this package and both matplotlib and seaborn in python. Although mine isn't quite as sophisticated or as mathematically advanced as the above plot, my pair plot below highlights some of the shared graphical capabiliteis of these libraries. Matplotlib is also capable of producing the various plots present in the above plot, which are not found in the plot below.<br/>
This pairplot is from my final project for Applied Machine Learning, which I took this summer:<br/>

![seaborn pair plot](https://aeraposo.github.io/Data-440-Raposo/pair_plot_example.png)<br/>

From modeling the performance of machine learning algorithms to allowing for visualization of data distributions and summary statistics, the applications of this package are vast. In fact, these are just a few functions of mlr3viz package and its aplications certainly stretch beyond what I have covered here (here is a [link](https://cran.r-project.org/web/packages/mlr3viz/mlr3viz.pdf) to the full documentation, which lists some more functions of the package).<br/>

**Relation to course material**<br/>
Machine learning is becoming increasingly relevant in other fields, ouside of data and computer science. Particularly, in biology, machine learning in R is being used to model changes in population genetics. One model is able to predict genomic sequences of new generations within a population or settlement and this can be used to predict overall genomic and evolutionary trends in populations. This model can also be used to predict changes in gene pools after different events (ie- changes in the environment that might favor certain traits).<br/>
- These methods have proved to be more accurate an efficient than computing traditional statistics used in this field.<br/>
- Learn more about this research [here](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5905713/)<br/>
An additional application is in population size prediction from satelite images- over the summer I coded a CNN to predict population in Accra, Ghana (performance of such models can be visualizes using mlr3viz)<br/>

Sources:<br/>
https://cran.r-project.org/web/packages/mlr3viz/index.html <br/>
https://rviews.rstudio.com/2020/02/24/january-2020-top-40-new-r-packages/ <br/>
https://cran.r-project.org/web/packages/mlr3viz/readme/README.html <br/>
https://mlr3.mlr-org.com/ <br/>
https://mlr3.mlr-org.com/reference/DataBackend.html <br/>
https://cran.r-project.org/web/packages/mlr3viz/mlr3viz.pdf
