% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/conflicts.R
\name{fastverse_conflicts}
\alias{fastverse_conflicts}
\title{Conflicts between the fastverse and other packages}
\usage{
fastverse_conflicts(pkg = fastverse_packages())
}
\arguments{
\item{pkg}{character. A vector of packages to check conflicts for. The default is all \emph{fastverse} packages.}
}
\value{
An object of class 'fastverse_conflicts': A named list of character vectors where the names are the conflicted objects, and the 
content are the names of the package namespaces containing the object, in the order they appear on the \code{\link{search}} path.
}
\description{
This function lists all the conflicts among \emph{fastverse} packages and between \emph{fastverse} packages and other attached packages.
It can also be used to check conflicts for any other attached packages.
}
\details{
There are 2 internal conflict in the core \emph{fastverse} which are not displayed by \code{fastverse_conflicts()}:
\itemize{
\item \code{collapse::funique} masks \code{kit::funique}. If both packages are detached, \emph{collapse} is attached after \emph{kit}. In general, the 
\emph{collapse} version is faster and supports unique rows on selected columns, as well as sorted unique values with option \code{sort = TRUE}. The \emph{kit} version is also very fast and additionally supports matrices.    
% \item \code{matrixStats::count} masks \code{kit::count}. The \emph{matrixStats} version is more flexible, supporting restricted search and missing value removal. The \emph{kit} version is nearly twice as fast. 
\item{collapse::fdroplevels} masks \code{data.table::fdroplevels}. The former is faster and supports arbitrary data structures, whereas the latter has options to exclude certain levels from being dropped. 
}
}
\examples{
# Check conflicts between fastverse packages and all attached packages
fastverse_conflicts()

# Check conflicts among all attached packages
fastverse_conflicts(rm_stub(search()[-1], "package:"))
}
\seealso{
\code{\link{fastverse}}
}
