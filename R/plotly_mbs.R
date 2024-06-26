#' MBS Energy Plotly Theme
#'
#' @param plot plotly plot object
#' @param plot_title Main title
#' @param plot_subtitle Subtitle in default position
#' @param plot_caption Caption in default position
#' @param plot_xaxis x-axis text
#' @param plot_yaxis y-axis text
#' @param ... inherit arguments coming from the plotly's layout function
#' @importFrom plotly layout
#' @export
#' @examples
#' library(plotly)
#'
#'df = data.table(State = state.name,
#'                 LifeExp = state.x77[,4],
#'                 Population = state.x77[,1])
#'
#'df |>
#'  plot_ly(x = ~LifeExp, y = ~Population, type = "scatter", width = 900, height = 500) |>
#'    plotly_mbs(plot_title = 'This is my title',
#'                   plot_subtitle = 'Here we will see a subtitle',
#'                   plot_caption = 'Source: innteamUtils package',
#'                   plot_xaxis = 'LifeExp',
#'                   plot_yaxis = 'Population')
#'
plotly_mbs = function(plot, ...,
                          plot_title = "Insert Plot's Title",
                          plot_subtitle = "",
                          plot_caption = "",
                          plot_xaxis = "",
                          plot_yaxis = "") {

  plot |>

    plotly::layout(

        title = list(text = paste0(plot_title,
                                    '<br>',
                                    '<sup>',
                                    plot_subtitle,
                                    '</sup>'),
                      x = 0.07, y = 0.92, xref = 'container'),

         plot_bgcolor = '#f6f6f6',
         paper_bgcolor = '#f6f6f6',

         legend = list(font = list(size = 13)),
         font = list(family = "Open Sans", size = 15, color = '#889C9B'),
         margin = list(t = 75, b = 100),

         xaxis = list(title = list(text = plot_xaxis,
                                   font = list(size = 13)),
                      tickfont = list(family = "Open Sans", size = 13, color = '#889C9B'),
                      zeroline = F),

         yaxis = list(title = list(text = plot_yaxis,
                                   font = list(size = 13)),
                      tickfont = list(family = "Open Sans", size = 13, color = '#889C9B'),
                      zeroline = F),

         annotations =

           list(x = 1, y = -0.25,
                text = plot_caption,
                showarrow = F, xref = 'paper', yref = 'paper',
                xanchor = 'right', yanchor = 'auto',
                font = list(family = "Open Sans", size = 13, color = '#889C9B')),
          width = 900, height = 500.

         ) |>

    plotly::layout(...)

}
