#Post a tweet

is_tweet_length <- function(.x, n = 280) {
  .x <- gsub("https?://[[:graph:]]+\\s?", "", .x)
  while (grepl("^@\\S+\\s+", .x)) {
    .x <- sub("^@\\S+\\s+", "", .x)
  }
  !(nchar(.x) <= n)   # here's the fix
}


assignInNamespace("is_tweet_length", is_tweet_length, ns = "rtweet")

post_tweet("Look, I'm tweeting from R! #rstats")
