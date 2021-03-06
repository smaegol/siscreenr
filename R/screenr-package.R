#' @title siscreenr: High Throughput Data Analysis
#'
#' @description
#' A package for analyzing high throughput microscopy data produced by ScanR systems.
#' Provides tools for loading, normalizing and scoring data, and hit selection.
#' It is intended for interactive use so most of the functions leave a considerable amount of work to teh user.
#'
#' @details
#' The data is obtained with an automated fluorescence microscope and
#' preliminary image analysis is done with ScanR software.
#' Most experiments are done in 384 well plate format and usually involve dozens of plates.
#' However, it is compatible with other plate formats and some concepts can be transferred to slides as well.
#'
#' @author Aleksander Chlebowski
#'
#' @section Functions:
#' Data analysis:
#' \itemize{
#'   \item{
#'   \code{build_screen} collate all data into a single data frame, reaarrange and add layout
#'   }
#'   \item{
#'   \code{normalize} normalize data by one of the available methods:
#'   subtract mean/median of reference or Tukey's median polish (for matrices)
#'   }
#'   \item{
#'   \code{zscore} calculate (robust) z scores
#'   }
#'   \item{
#'   \code{hitscore} classify data point as hit or not based on a given treshold; usually used on z scores
#'   }
#   \item{
#   \code{sumscore} calculate summary hit score and assign hit status to data point
#   }
#   \item{
#   \code{fracscore} calculate fractional hit score and assign hit status to data point
#   }
#' }
#'
#' Data formatting:
#' \itemize{
#'  \item{
#'  \code{clean_column_names} clean up superfluous characters from column names
#'  }
#'  \item{
#'  \code{insert_zeros} inset zeros to elements of a character vector (e.g. well positions)
#'  }
#'  \item{
#'  \code{separate_flag} change character note on a plate into a logical flag on single wells
#'  }
#' }
#'
#' File preparation:
#' \itemize{
#'  \item{
#'  \code{layouts} prepare layout file from components
#'  }
#'  \item{
#'  \code{update_annotation} update library annotation
#'  }
#'  \item{
#'  \code{patch_annotation} fix errors in library annotation left by \code{update_annotation}
#'  }
#' }
#'
#' Visualization:
#' \itemize{
#'  \item{
#'  \code{plot_screen_progress} create a plot of material accummulation/processing over time
#'  }
#'  \item{
#'  \code{drawmeabarplot} plot mean green fraction z scores and highlight desired genes
#'  }
#'  \item{
#'  \code{color_sections} prepare plotting space for \code{highlight_genes}
#'  }
#'  \item{
#'  \code{highlight_genes} draw scatterplot of entire screen and highlight desired genes
#'  }
#' }
#'
#' Miscellaneous:
#' \itemize{
#'  \item{
#'  \code{attach_annotation} add annotation to screen object
#'  }
#'  \item{
#'  \code{plate.type.converter} internal function that translates plate type codes
#'  }
#'  \item{
#'  \code{show_conversion_key} print the key for plate type conversion by plate.type.converter
#'  }
#'  \item{
#'  \code{edit_conversion_key} edit the key for plate type conversion
#'  }
#'  \item{
#'  \code{recover_conversion_key} restore the original key for plate type conversion
#'  }
#' }
#'
#' @keywords internal
"_PACKAGE"
