% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/pod_analysis.R
\name{plot_metaregression_confidence_envelope}
\alias{plot_metaregression_confidence_envelope}
\title{Plot the metaregression confidence envelope and median results from the
bootstrap metaregression models.}
\usage{
plot_metaregression_confidence_envelope(bootstrap_metaregression_obj,
  graph_pod = FALSE, pod, pod_threshold, median_line_color = "orange",
  pod_and_threshold_color = "green")
}
\arguments{
\item{bootstrap_metaregression_obj}{the object that contains the bootstrap
metaregression models as a \code{bmr} object.}

\item{graph_pod}{a \code{boolean} that determines if the point of departure
will be displayed on the graph.}

\item{pod}{the chemical's point of departure as a \code{numeric} value}

\item{pod_threshold}{the threshold value used to calculate the chemical's
point of departure.}

\item{median_line_color}{the color for the median line, default is "orange".}

\item{pod_and_threshold_color}{the color of the POD and threshold
"crosshairs" on the plot. The default is "green".}
}
\description{
A function to plot the metaregression confidence envelope and median results from the
bootstrap metaregression models.
}
\examples{
bmr_obj <- bootstrap_metaregression(oxybenzone, 15, 100)
slope_pod <- slope_pod_analysis(bmr_obj, 0.0001, 10, 0.1)
pod_and_threshold <- pod_envelope_analysis(bmr_obj, slope_pod, 10,
  min(oxybenzone$Concentration), max(oxybenzone$Concentration), 0.1)
plot_metaregression_confidence_envelope(bmr_obj, graph_pod = TRUE,
  pod = pod_and_threshold$pod, pod_threshold=pod_and_threshold$threshold)
}

