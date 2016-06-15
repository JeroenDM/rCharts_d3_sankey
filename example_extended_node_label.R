# Set working directory to source file location!!
# Simple sankey diagram to show the effect of the changed chart.html

if(!require(rCharts)){
  library(devtools)
  install_github('ramnathv/rCharts')
}
library(rCharts)

sankeyPlot <- rCharts$new()

sankeyPlot$setLib('libraries/widgets/d3_sankey')

# use the changed chart.html as a template
sankeyPlot$setTemplate(script = "layouts/chart.html")

sankeyPlot$set(
  data = data.frame(source=c('Cold','Warm','Total'),target=c('Total','Total','End'),value=c(20,80,100)),
  nodeWidth = 15,
  nodePadding = 10,
  layout = 32,
  width = 500,
  height = 300,
  units = "TWh",
  labelFormat = ".1%"
)

# In the labels on this diagram you should now have to see the value and its unit
sankeyPlot