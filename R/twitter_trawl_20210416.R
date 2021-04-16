# Load libraries ---------------------------------------------------------------

library(rtweet)
library(dplyr)

# Retrieve data ----------------------------------------------------------------

# Tweets retrieved on 2021-04-16 @ ~3:20 PM AEST

get_token()

retrieved_tweets_sport_data <- search_tweets(
  "sport data",
  n = 10000, include_rts = FALSE)

# Tidy data --------------------------------------------------------------------

retrieved_tweets_sport_data %>%
  filter(lang == "en") %>%
  arrange(desc(favorite_count)) %>%
  head(n = 10) -> top_10_favorites

retrieved_tweets_sport_data %>%
  filter(lang == "en") %>%
  arrange(desc(retweet_count)) %>%
  head(n = 10) -> top_10_retweets

# URLs of tweets to highlight --------------------------------------------------

# No. 1 most-favourited: https://twitter.com/lfctransferroom/status/1380642836413038595
# No. 4 most-favourited: https://twitter.com/SBI_Barcelona/status/1380220470595891204
# No. 6 most-favourited: https://twitter.com/Fenton_JC/status/1381391920530870272
# No. 7 most-favourited: https://twitter.com/tweetSP0RT/status/1382683591038136322
# No. 8 most-favourited: https://twitter.com/CheriBlauwetMD/status/1382671601959833605

# No. 3 most-retweeted: https://twitter.com/periodofperiod/status/1380436127572586496
# No. 6 most-retweeted: https://twitter.com/In_The_Slot/status/1382717496126496777
# No. 10 most-retweeted: https://twitter.com/SamMcGuire90/status/1380176016447053824