#' MBS ggpolt2 Theme Light
#'
#' Contains the parameters and colour for a standarized plot theme.
#'
#' @inheritParams ggthemes::theme_fivethirtyeight
#'
#' @author Alejandro Abraham <a.abraham@mbsconsulting.it>
#'
#'
#' @export
#'
#' @importFrom ggthemes theme_fivethirtyeight
#' @import ggplot2
#'
#'
#'
theme_mbslight = function(base_size = 11) {

        ggthemes::theme_fivethirtyeight(base_size = base_size) +

            ggplot2::theme(
                plot.title = ggplot2::element_text(color = "#486966"),
                plot.subtitle = ggplot2::element_text(color = "#747E7E"),
                axis.title = ggplot2::element_text(color = "#889C9B", face = "bold"),
                axis.text = ggplot2::element_text(color = "#889C9B",  face = "bold"),

                panel.grid.major = ggplot2::element_line(linewidth = 0.125, color = '#B2BEBF'),
                panel.grid.minor = ggplot2::element_line(linewidth = 0.085, color = '#CCC7BE'),
                axis.line = element_blank(),
                panel.grid.major.y = element_blank(),

                legend.position = c(0.95, 0.95),
                legend.justification = c(1, 1),
                legend.title = ggplot2::element_blank(),
                legend.background = ggplot2::element_rect(fill = "transparent"),
                legend.direction = "vertical",
                legend.text = ggplot2::element_text(color = "#747E7E",  face = "bold")
            )
    }
