% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/regionalDK.R
\name{regionalDK}
\alias{regionalDK}
\title{Creates dynamic chloropleth maps of danish regions}
\usage{
regionalDK(value = NULL, id = NULL, subplot = NULL, data = NULL,
  map = FALSE, legend = FALSE, pal = "YlOrRd", logcol = F,
  legendtitle = NULL)
}
\arguments{
\item{value}{is the name of the column in the data where the values are stored}

\item{id}{is the name of the column in the data where the ids are stored}

\item{subplot}{is a string of ids you want to keep - excludes all others}

\item{data}{is the data frame that contains the data to map}

\item{map}{is a TRUE / FALSE of wether a real map should be plotted underneath}

\item{legend}{is a TRUE / FALSE of wether the legend should be plotted}

\item{pal}{is the color palette for the chloropleth}

\item{logcol}{is a TRUE / FALSE of wether the chloropleth colors should be drawn against the log value}

\item{legendtitle}{provides an alternative title for the legend}
}
\value{
An interactive Leaflet map
}
\description{
Creates dynamic chloropleth maps of danish regions
}
\examples{
library(leafletDK)

folk1 <- readr::read_csv2("http://api.statbank.dk/v1/data/folk1a/CSV?OMR\%C3\%85DE=*")

regionalDK("INDHOLD", "OMRÅDE", subplot = c("Region Nordjylland","Region Syddanmark", "Region Sjælland"), data = folk1)

}

