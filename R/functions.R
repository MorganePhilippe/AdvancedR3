#' Calculate descriptive statistics of each metabolite in the dataset.
#'
#' @param data The lipidomics dataset.
#'
#' @return A data.frame/tibble.
#'
create_table_descriptive_stats <- function(data) {
  data |>
    dplyr::group_by(metabolite) |>
    dplyr::summarise(across(value, list(mean = mean, sd = sd))) |>
    dplyr::mutate(dplyr::across(
      tidyselect::where(is.numeric),
      \(x) round(x, digits = 1)
    )) |>
    dplyr::mutate(MeanSD = glue::glue("{value_mean} ({value_sd})")) |>
    dplyr::select(Metabolite = metabolite, "Mean SD" = MeanSD)
}
# create_table_descriptive_stats(lipidomics)


#' Plot distribution of each metabolite in the dataset.
#'
#' @param data The lipidomics dataset.
#'
#' @return A plot object.

create_plot_distributions <- function(data) {
  ggplot2::ggplot(data, ggplot2::aes(x = value)) +
    ggplot2::geom_histogram() +
    ggplot2::facet_wrap(ggplot2::vars(metabolite), scales = "free") +
    ggplot2::theme_minimal()
}
# create_plot_distributions(lipidomics)
