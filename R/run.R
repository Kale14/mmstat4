#' run
#'
#' \code{source}s the example file. The parameter \code{echo} from \code{source} is set to \code{TRUE} by default.
#'
#' @param name character: name of example file
#' @param ... further parameters to [base::source()] or [shiny::runApp]
#'
#' @return nothing
#' @export
#'
#' @examples
#' run("mmstat/lottozahlen.R")
#' run("mmstat/lottozahlen.R", echo=FALSE)
run <- function(name, ...) {
  args <- list(...)
  prgname <- prg(name)
  if (length(prgname)>1) {
    warnmsg <- c("More than file found, taking first:\n",
                 paste0("  ", prgname, "\n"))
    warning(warnmsg)
  }
  prgname1 <- system.file("examples", prgname[1], package="mmstat4")
  if (endsWith(prgname[1], "/")) {
    args$appDir <- prgname1
    do.call(runApp, args)
  } else {
    if (is.null(args$echo)) args$echo <- TRUE
    args$file <- prgname1
    do.call(source, args)
  }
}
