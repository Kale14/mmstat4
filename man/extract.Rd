% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract.R
\name{extract}
\alias{extract}
\alias{extract.default}
\alias{print.extract}
\alias{summary.extract}
\alias{do.extract}
\title{extract}
\usage{
extract(files, ...)

\method{extract}{default}(files, ..., quiet = TRUE)

\method{print}{extract}(x, ...)

\method{summary}{extract}(object, ...)

do.extract(
  what = c("parse", "eval", "diff", "write", "local"),
  x,
  verbose = FALSE
)
}
\arguments{
\item{files}{character: name of LaTeX files}

\item{...}{further parameters (unused)}

\item{quiet}{logical: should be \code{extract} be quiet? (default: \code{TRUE})}

\item{x}{extract object}

\item{object}{extract object}

\item{what}{character: what to do with the program codes (default: \code{"parse"})}

\item{verbose}{logical: should be \code{do.extract} give full output? (default: \code{FALSE})}
}
\value{
extract object
}
\description{
\code{extract} extract programs from a set of LaTeX files and returns them in a list.\if{html}{\out{<div class="r">}}\preformatted{\\begin\{comment\}\{helloworld.R\}
"Hello world!"
\\end\{comment\}
}\if{html}{\out{</div>}}

\code{print} and \code{summary} give an overview about the extracted programs.
\code{do.extract} will do the following:
\itemize{
\item \code{what="parse"} parses the codes extracted from \code{*.R} comments.
\item \code{what="diff"} diffs the codes extracted from \code{*.R} comments.
\item \code{what="eval"} parses and evaluates the codes in the directory of the LaTeX file.
\item \code{what="write"} writes the codes extracted from \code{*.R} comments to a file.
\item \code{what="local"} writes the codes extracted from \code{*.R} comments to a file in the directory of the LaTeX file.
}
}
\examples{
x <- 1
}
