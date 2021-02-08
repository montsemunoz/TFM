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

#### VOX ####

vox <- get_timeline(user = "vox_es",n = 100)
vox_var <- vox %>% select(user_id, status_id, screen_name, text)
write.xml(vox_var, "vox.xml")
vox_tweets <- read_excel("vox.xlsx")
View(vox_tweets)


#### PP ####

pp <- get_timeline(user = "populares",n = 100)
pp_var <- pp %>% select(user_id, status_id, screen_name, text)
write.xml(pp_var, "pp.xml")
pp_tweets <- read_excel("pp.xlsx")
View(pp_tweets)

#### C's ####

cs <- get_timeline(user = "CiudadanosCs",n = 100)
cs_var <- cs%>% select(user_id, status_id, screen_name, text)
write.xml(cs_var, "cs.xml")
cs_tweets <- read_excel("cs.xlsx")
View(cs_tweets)

#### PSOE ####

psoe <- get_timeline(user = "PSOE",n = 100)
psoe_var <- psoe%>% select(user_id, status_id, screen_name, text)
write.xml(psoe_var, "psoe.xml")
psoe_tweets <- read_excel("psoe.xlsx")
View(psoe_tweets)

#### Podemos ####

podemos <- get_timeline(user = "PODEMOS",n = 100)
podemos_var <- podemos%>% select(user_id, status_id, screen_name, text)
write.xml(podemos_var, "podemos.xml")
podemos_tweets <- read_excel("podemos.xlsx")
View(podemos_tweets)

#### ERC ####

erc <- get_timeline(user = "Esquerra_ERC",n = 100)
erc_var <- erc%>% select(user_id, status_id, screen_name, text)
write.xml(erc_var, "erc.xml")
erc_tweets <- read_excel("erc.xlsx")
View(erc_tweets)

#### JuntsXCat ####

jpc <- get_timeline(user = "JuntsXCat",n = 100)
jpc_var <- jpc%>% select(user_id, status_id, screen_name, text)
write.xml(jpc_var, "jpc.xml")
jpc_tweets <- read_excel("jpc.xlsx")
View(jpc_tweets)






