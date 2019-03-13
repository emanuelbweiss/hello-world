---
  title: "Spotify - API calls"
purpose: get spotify ids
date: 20190305
---
  
  #####general settings#####
library(spotifyr)
Sys.setenv(SPOTIFY_CLIENT_ID = '94bb9354572d46a59dc295285386c13a')
Sys.setenv(SPOTIFY_CLIENT_SECRET = 'b9c64504cbf540f1ade71d906759f2b6')
access_token <- get_spotify_access_token()

#####read in and prepare artist names
df_singer <- read.csv(file = "~/Desktop/10000-MTV-Music-Artists-page-1.csv", stringsAsFactors = FALSE)
df_singer_2 <- read.csv(file = "~/Desktop/10000-MTV-Music-Artists-page-2.csv", stringsAsFactors = FALSE)
df_singer_3 <- read.csv(file = "~/Desktop/10000-MTV-Music-Artists-page-3.csv", stringsAsFactors = FALSE)
df_singer_4 <- read.csv(file = "~/Desktop/10000-MTV-Music-Artists-page-4.csv", stringsAsFactors = FALSE)
df_singer <- rbind(df_singer, df_singer_2, df_singer_3, df_singer_4)
rm(df_singer_2, df_singer_3, df_singer_4)

artist_list <- as.character(df_singer$name)
artist_list <- trimws(artist_list)
artist_list <- artist_list[artist_list != ""]
artist_id <- data.frame()


5+5
#####Ihr seid alle doof