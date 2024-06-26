# WARNING - Generated by {fusen} from dev/flat_first.Rmd: do not edit by hand

#' cargo_doc
#' 
#' check the doc of used rust package
#' @param project chr the project names with dirs
#' @param additional chr additional parameters in build 
#' @return web
#' 
#' @export 
cargo_doc <- function(project,additional = NULL){
   message(glue::glue("you are now building rust project in {project}"))
  
  dir_check <- dir.exists(project)
  
  if (!dir_check){
    stop("the project dir does not exist")
  }
  
  if (!is.null(additional)) {
   commandline <- glue::glue("cd {project} && cargo doc --open {additional}")
  } else {
    commandline <- glue::glue("cd {project} && cargo doc --open")
  }
  system(command = commandline)
  return(project)
    
}
