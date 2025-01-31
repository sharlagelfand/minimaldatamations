#' Parse functions from pipeline steps
#'
#' @param fittings List of pipeline steps
#' @noRd
parse_functions <- function(fittings) {
  functions <- fittings %>%
    # Splits expressions into the functions and arguments
    purrr::map(as.list) %>%
    # Keeping the functions only
    purrr::map(~ .x[[1]]) %>%
    purrr::map_chr(as.character)

  # Rename the first "function" to just be data
  functions[1] <- "data"

  functions
}
