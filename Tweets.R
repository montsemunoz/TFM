library(rtweet)
library(twitteR)
library(base64enc)
library(tidyverse)
library(ggplot2)
library(dplyr)
library(tidytext)
library(kulife)
library(readxl)
library(XML)
library(xml2)

# whatever name you assigned to your created app
appname <- "TFM_TECI"

## api key (example below is not a real key)
key <- "eYA8l6xvOXBTMNbfZ3YWFW9tp"

## api secret (example below is not a real key)
secret <- "Tyv5wncglc7gLyqVikgrWPxSshqqoNM4LJUvZTYCzbROdB9KSV"

access_token <- "1352194500186288128-MdzK70Flt9jo90zjh7BMZ22PM6dhvE"
access_secret <- "yMQa5bSBfoQWOwB5KN0NOmpgBkTMOQNyXYhrx4NoD6yEo"


# create token named "twitter_token"
twitter_token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret)

# create token named "twitter_token"
twitter_token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret)

options(httr_oauth_cache=TRUE)
setup_twitter_oauth(consumer_key = key, consumer_secret = secret,
                    access_token = access_token, access_secret = access_secret)


###### CUENTAS OFICIALES #######
################################

co <- get_timeline(user = c("vox_es","populares",'CiudadanosCs','PSOE','PODEMOS','Esquerra_ERC','JuntsXCat','eajpnv','ehbildu'),n = 3000)
co_var <- co %>% select(user_id, status_id, created_at, screen_name, text, retweet_count) %>% filter(created_at > "2021-02-01") %>% filter(created_at < "2021-02-15")
co_var$created_at <- as.character(co_var$created_at)
write.xml(co_var, "CuentasOficiales_02_14.xml")
write.csv(co_var,"CuentasOficiales_02_14.csv")
tweets <- read_excel("CuentasOficiales_02_14.xlsx")
tweetscsv <- read.csv("CuentasOficiales_02_14.csv")
View(tweets)


###### CUENTAS PERSONALES #######
################################

cp <- get_timeline(user = c("Santi_ABASCAL","pablocasado_",'InesArrimadas','sanchezcastejon','PabloIglesias','perearagones','LauraBorras','AITOR_ESTEBAN','ArnaldoOtegi'),n = 3000)
cp_var <- cp %>% select(user_id, status_id, created_at, screen_name, text,retweet_count) %>% filter(created_at > "2021-02-01") %>% filter(created_at < "2021-02-15")
cp_var$created_at <- as.character(cp_var$created_at)
write.xml(cp_var, "CuentasPersonales_02_14.xml")
write.csv(cp_var,"CuentasPersonales_02_14.csv")
tweetsp <- read_excel("CuentasPersonales_02_14.xlsx")
tweetscsvp <- read.csv("CuentasPersonales_02_14.csv")
View(tweetscsvp)

















