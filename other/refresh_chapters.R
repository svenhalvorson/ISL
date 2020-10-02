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
  output_dir = here::here('outputs')
)
