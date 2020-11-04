# See if we can just write a script that will reproduce all the 
# notes to one folder so it's easy to upload to the website
library('knitr')
library('rmarkdown')
file_list = list.files(
  path = here::here('chapters'),
  pattern = '\\.Rmd',
  full.names = TRUE
)

lapply(
  file_list,
  render,
  output_dir = here::here('ISL')
)

f = function(x){exp(x)/(1+exp(x))}
g = function(x){x/(1-x)}
x = seq(from = 0, to = 1, by = 0.01)
y = f(x)
y2 = g(x)
par(mfrow = c(1,1))
plot(x,y2)
