#' Figure out the variables having zero variance
#'
#' \code{zero_var} identifies the variables in the data frame with zero variance and
#' returns their index values. The code has been by Gavin Simpson and taken from
#' stackoverflow.
#' @param The input to the function is a data frame.
#' @return Returns a vector of column names in the data frame which have zero variance
#' along with their index.
#' @examples
#' zero_var_index <- zero_var(df)
#' df_without_zerovariance <- df[,-zero_var_index]



zero_var <- function(df){
  zv_idx <- lapply(df, function(x) length(unique(x)))
  want   <- which(!zv_idx > 1)
  unlist(want)
}
