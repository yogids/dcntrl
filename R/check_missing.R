#' Figure out the variables having missing values
#'
#' \code{check_missing} identifies the variables in the data frame with missing values and
#' returns their variable names.
#' @param  The input to the function is a data frame which is mandatory. The optional parameter is spaces. The code by default takes spaces as FALSE but you can override it to convert spaces to NAs and return the missing value results.
#' @return Returns a vector of column names in the data frame which have missing values.
#' If spaces parameter is over-ridden it returns the variables with single spaces and also treats and returns them as NAs as well.
#' @examples
#' zero_var_index <- zero_var(df)
#' df_without_zerovariance <- df[,-zero_var_index]


check_missing <- function(df, spaces=FALSE){
  if (spaces == F){
    names(which(sapply(df, anyNA)))
  }else{
    df[df==""] <- NA
    names(which(sapply(df, anyNA)))
  }
}
