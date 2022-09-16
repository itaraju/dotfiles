.width <- function(howWide=Sys.getenv("COLUMNS")) {
  options(width=as.integer(howWide))
}
.cls <- function() {rm(list=ls(envir=.GlobalEnv), envir=.GlobalEnv)}
.cp <- function(x) {system2("nc",c("localhost","2000"),input=capture.output(print(x)))}
