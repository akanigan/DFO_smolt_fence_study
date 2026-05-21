# This file is only used to create a custom ggplot theme for manuscript figures


library(ggtext)
#remotes::install_github("wilkelab/ggtext")
library(glue)
library(ggplot2)
library(tidyverse)

manuscript_theme <- ggplot2::theme(panel.grid.major = element_blank(), 
                                   panel.grid.minor = element_blank(), 
                                   #axis.text = element_text(colour = "black", family = "Helvetica", size = 12),
                                   axis.text = ggtext::element_markdown(size = 12, family = "Helvetica", colour = "black"),
                                   #axis.title.x = element_text(colour = "black", family = "Helvetica", size = 12),
                                   #axis.title.y = element_text(colour = "black", family = "Helvetica", size = 12),
                                   axis.title.x = ggtext::element_markdown(size = 12, family = "Helvetica", margin = unit(c(10,0,0,0), "pt")),
                                   axis.title.y = ggtext::element_markdown(size = 12, family = "Helvetica", margin = unit(c(0,10,0,0), "pt")),
                                   axis.ticks = element_line(linewidth = 0.5, colour = "black", linetype = "solid"),
                                   axis.ticks.length = unit(0.2, "cm"),
                                   #axis.line.x = element_line(linewidth = 0.5, colour = "black", linetype = "solid"),
                                   #axis.line.y = element_line(linewidth = 0.5, colour = "black", linetype = "solid"),
                                
                                   panel.background = element_rect(fill = "transparent", colour = NA),
                                   plot.background = element_rect(fill = "transparent", colour = NA, linewidth = 1),
                                   plot.margin = margin(0.5, 0.5, 0.5, 0.5, "cm"),
                                   plot.title = element_text(size = 20, family = "Arial", margin = margin(t = 0, b = 0, l = 0, r = 0)),
                                   panel.border = element_rect(colour = "black", fill = NA, linewidth = 1),
                                   legend.position = "top",
                                   legend.text = element_text(family = "Arial", size = 10),
                                   legend.title = element_text(family = "Arial", size = 10),
                                   legend.key = element_rect(fill = NA),
                                   legend.background = element_blank(),
                                   strip.background = element_rect(colour = "black", fill = "lightgrey", linewidth = 0.5, linetype = "solid"),
                                   strip.text = element_text(family = "Arial", size = 10))
