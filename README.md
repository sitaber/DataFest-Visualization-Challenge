# DataFest-Visualization-Challenge

This is the results of work done on a visualization challenge held by The UC Davis DSI. The challenge was to produce a visualization that explains one of the 11 ballot propositions in California 2018. This particular visualization was made for Propostion 9, which proposed to divide California into three states. The California Supreme Court removed Proposition 9 from the ballot, however this propostion was chosen because of personal intrests in the topic.

### The Process

The visual was made using R, [ggplot2](https://ggplot2.tidyverse.org/), and [GIMP](https://www.gimp.org/). The data used to calculate the statitics was wrangled from the [USGS](https://waterdata.usgs.gov/ca/nwis/water_use?format=html_table&rdb_compression=file&wu_area=County&wu_year=2015&wu_county=ALL&wu_category=ALL&wu_county_nms=--ALL%2BCounties--&wu_category_nms=--ALL%2BCategories--) and [DataPile](https://www.counties.org/post/datapile), which is a collection of data. Data taken from the compiled data set include information from the [California Secretary of State](https://www.sos.ca.gov/elections/voter-registration/voter-registration-statistics/) webpage and the [The US Census](https://www.census.gov/data/datasets/2016/demo/saipe/2016-state-and-county.html). There is more data in the `.rds` file all_coords_data, but the only data used is from the previously mentioned sources.

### Requirements
 
R version 3.5.1 (2018-07-02) -- "Feather Spray"

GIMP (if you want to recreate the image exactly)

##### R Packages 
* ggplot2
* maps

![](https://github.com/sitaber/DataFest-Visualization-Challenge/blob/master/datafestviz.png)
