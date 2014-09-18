#!/usr/bin/env Rscript

inputfile <- commandArgs(TRUE)[1]
if (is.na(inputfile))
  inputfile <- 'input.Rmd'
rmarkdown::render(inputfile)
