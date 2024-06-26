# WARNING - Generated by {fusen} from dev/flat_first.Rmd: do not edit by hand

#' typst_compile
#' 
#' compile typst in cargo
#' @param ptyfiles chr the dir of ptyfiles
#' @param pdfdir chr the dir of output pdf file 
#' @param watch logit Watches source files and recompiles on changes when TRUE
#' @param font_path chr the diy font path
#' 
#' @return null
#'
#' @export
typst_compile <- function(ptyfiles,pdfdir = ".",watch = FALSE,font_path = ""){
   if (!file.exists(ptyfiles)){
    stop("pty file does not exist")
   }
   if (!dir.exists(pdfdir)){
    fs::dir_create(pdfdir)
   }
   pdfdir <- glue::glue("{pdfdir}/{stringr::str_replace(ptyfiles,'.pty','.pdf')}")
   pdfdir <- stringr::str_replace(pdfdir,"//","/")
   if (font_path != ""){
    if (dir.exists(font_path)) font_path <- glue::glue("--font-path {font_path}")
   } 
   commandline <- glue::glue("typst compile {font_path} {ptyfiles} {pdfdir}")
   if (watch) {
    commandline <- glue::glue("typst watch {font_path} {ptyfiles} {pdfdir}")
   }
   system(command = commandline)
   return(ptyfiles)
}
