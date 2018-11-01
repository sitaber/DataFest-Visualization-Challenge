# DataFest-Visualization-Challenge

This is the results of work done on a visualization challenge held by The UC Davis DSI. The challenge was to produce a visualization that explains one of the 11 ballot propositions in California 2018. This particular visualization was made for Propostion 9, which proposed to divide California into three states. The California Supreme Court removed Proposition 9 from the ballot, however this propostion was chosen because of personal intrests in the topic.

### The Process

The visual was made using R, [ggplot2](https://ggplot2.tidyverse.org/), and [GIMP](https://www.gimp.org/). The data used to calculate the statitics was wrangled from the [USGS](https://waterdata.usgs.gov/ca/nwis/water_use?format=html_table&rdb_compression=file&wu_area=County&wu_year=2015&wu_county=ALL&wu_category=ALL&wu_county_nms=--ALL%2BCounties--&wu_category_nms=--ALL%2BCategories--) and [DataPile](https://www.counties.org/post/datapile), which is a collection of data. Data taken from the compiled data set include information from the [California Secretary of State](https://www.sos.ca.gov/elections/voter-registration/voter-registration-statistics/) webpage and the [The US Census](https://www.census.gov/data/datasets/2016/demo/saipe/2016-state-and-county.html). There is more data in the `.rds` file all_coords_data, but the only data used is from the previously mentioned sources. The `.csv` and `.xlxs` files in the **raw_data** folder are the data used to create `all_coords_data.rds` along with the coordinates provided from using the *maps* package in R.

### Requirements
 
R version 3.5.1 (2018-07-02) -- "Feather Spray"

GIMP (if you want to recreate the image exactly)

##### R Packages 
* ggplot2
* maps

##### Getting coordinates from maps
To get the coordinates used to make the maps, use [map_data()](https://ggplot2.tidyverse.org/reference/map_data.html). 
```
CA <- map_data('state', region = "ca")
CA_county <- map_data('county', region = 'ca')
```
To create a map of California, with counties outlined, follow this example code
```
ggplot() +
  geom_polygon(data = CA, aes(x=long, y=lat), group = group, fill = "white", color = "black") + 
  geom_polygon(data = CA_county, aes(x = long, y=lat, group = group, fill = "white", color = "black")) +
  coord_quickmap()
```
#### Making The Image
You can simply use `make_map_parts.R` to create the parts of the image, as long as you have `all_coords_data.rds` and ggplot2.
After saving the respective images, the rest is accomplished using GIMP. Slice and dice the images. Crop, rotate, and move the bits around. Add some color,text (and anything else), and *BAM!* An OK looking visual.

**NOTE:** I messed up the legends in the code, so they had to be fixed in GIMP (was a bit rushed). I plan to update `make_map_parts.R` for clarity and ease of use at some point.


## Visualization
![](https://github.com/sitaber/DataFest-Visualization-Challenge/blob/master/datafestviz.png)
