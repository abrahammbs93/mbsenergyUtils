pkg_resource = function(...) {

  system.file("resources", ..., package = "mbsenergyUtils", mustWork = TRUE)

}

pkg_font = function(...) {

  system.file("resources", ..., package = "mbsenergyUtils", mustWork = TRUE)

}



pkg_shiny = function(...) {

  system.file("shinyfiles", ..., package = "mbsenergyUtils", mustWork = TRUE)

}


shiny_sys <- function(
  ...,
  lib.loc = NULL,
  mustWork = FALSE
) {
  system.file(
    ...,
    package = "mbsenergyUtils",
    lib.loc = lib.loc,
    mustWork = mustWork
  )
}
