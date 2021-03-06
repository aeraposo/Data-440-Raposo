## Data Science Insights 3: a discover that's out of this world<br/>

![img](https://aeraposo.github.io/Data-440-Raposo/planet.jpg)<br/>
[image source](https://www.nytimes.com/2017/12/14/science/eight-planets-star-system.html) <br/>

As children we dream of being the “first”. The first to do, see, or find something knew. At the root of this yearning is the hope of discovery. With discovery comes the creation of knowledge, something that seems intangible and evokes images of scientists who are knee deep in a swamp or huddled around a Bunsen burner. Although this ‘hands on’ science may be one path to discovery, there are numerous other methods that accessible via your computer (ie, the thing you’re staring at right now!). Although machine learning and AI can see like a ‘black box’ merely capable of computing or predicting arbitrary values based on specialized, measurable data, such as predicting the number of people in a given photo, these models have actually been at the forefront of knowledge generation and ‘discovery’ throughout the past decade.<br/>

Particularly, a fascination for what lies beyond the cusp of earth’s atmosphere, that has intrigued and frustrated scientists for centuries, has asserted a growing need for AI and machine learning. This demand for knowledge has driven data scientists to pull on the infallible observational skills of computers to answer the questions posed by the world’s top scholars. In 2017, NASA, in cooperation with Google, discovered an 8th planet in our soral system by harnessing the power of machine learning.<br/>

Data for this project was collected by the Kepler Space Telescope, which remains focused on a single point while orbiting earth each year. It is capable of monitoring the ‘brightness’ of over 150,000 simultaneously. In addition to monitoring known stars, Kepler was launched in hope of discovering planted beyond our immediate solar system, called exoplanets. Brightness is measured in the frequency of its rays, which are recorded and returned to NASA.<br/>

![rf model](https://aeraposo.github.io/Data-440-Raposo/rf_tree.png)<br/>
[image source](https://www.researchgate.net/figure/Architecture-of-the-random-forest-model_fig1_301638643)<br/>

When NASA first introduced AI and machine learning practices, researchers opted for a random forest model. At the time, the goal of the model was to identify new craters in the surface of Mars, which were monitored via images that were reviewed by hand, daily. This tedious task took a large team of scientists hours to analyzed before any concrete information could be usurped. Random forest models be used for classification and regression on data by building a large decision tree from smaller subtrees representing various features extracted from the data. This type of model incorporates an element of random probability into the model to simulate randomness in highly specified data, as opposed to measuring feature importance before diving nodes while constructing trees. Hence, each of the internal nodes gauges the collective probability of a classification before the data is passed to a subsequent node. Although randomness in a model may seem unnecessary, it is important in broadening the capabilities of the model by aiding in the prevention of overfitting. After the model is trained, an additional feature also allows users to gauge the importance of each feature in predictions. In this case, the goal of Nasa random forest model was to classify satellite images as a crater or not a crater.<br/>

![Bayesian model](https://aeraposo.github.io/Data-440-Raposo/bay_img.png)<br/>
[image source](https://www.researchgate.net/figure/Schematic-of-the-components-of-the-Bayesian-model-and-how-they-interact-when-making_fig3_260684458)<br/>

After their initial success with the random forest model, researchers attempted to train a Bayesian model. The motivation for the change rested mainly on these models’ ability to provide a measure of certainty in predictions, which is extremely important when considering the financial implications of a misclassification. Bayesian models are trained by sifting through provided data, assigning and updating probabilities of each classification as it goes. After training, the model uses its constructed predictive distributions to classify new data. There are several kinds of Bayesian models, which use Bayesian statistical probabilities to compute predictions; examples include Bayesian linear regression modes, Gibbs sampling, and Bayes classifiers. Using this approach on Kepler’s data, minute areas of difference in light frequency are identified and the locations are recorded. This technique has led to the discovery of over 2,300 planet candidates, with an accuracy of over 80%.<br/>

On the verge of the unknown, expanding our knowledge of the universe would be an impossible task without the power of machine learning.<br/>

Sources:<br/>
[Bayesian models](http://www.columbia.edu/~jwp2128/Teaching/E6720/BayesianModelsMachineLearning2016.pdf)<br/>
[Random forest](https://builtin.com/data-science/random-forest-algorithm#how)<br/>
[AI at NASA](https://www.nasa.gov/feature/goddard/2019/nasa-takes-a-cue-from-silicon-valley-to-hatch-artificial-intelligence-technologies)<br/>
[More AI at NASA](https://www.jpl.nasa.gov/news/news.php?feature=7756)<br/>
[New planet](https://www.nasa.gov/press-release/artificial-intelligence-nasa-data-used-to-discover-eighth-planet-circling-distant-star)
