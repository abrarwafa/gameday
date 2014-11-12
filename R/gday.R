#' Is it Gameday?
#'
#' This function returns TRUE if your NHL team plays today
#' and FALSE otherwise
#'
#' You know then problem: You're in your office writing R code and
#' suddenly have the urge to check whether your NHL team has a game today.
#' Before you know it you just wasted 15 minutes browsing the lastest
#' news on your favorite hockey webpage.
#' Suffer no more! You can now ask R directly, without tempting yourself
#' by firing up your web browser.
#'
#' @param team
#' @param date
#' @return \code{TRUE} if \code{team} has an NHL game on \code{date},
#' \code{FALSE} otherwise
#' @keywords misc
#' @note case in \code{team} is ignored
#' @export
#' @examples
#' gday("canucks", date = "2014-11-10")
#' gday("Bruins", date = "2014-11-02")
#' @importFrom RCurl getURL

gday <- function(team="canucks", date=Sys.Date()) {
  url <- paste0("http://live.nhle.com/GameData/GCScoreboard/", date, ".jsonp")
  grepl(team, date, getURL(url), ignore.case=TRUE)
}
