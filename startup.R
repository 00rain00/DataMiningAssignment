row_data <- read.csv("movie_metadata.csv",
                     col.names = c("type","director_name","critics","duration","director_factbook_likes","actor3_facebook_likes","actor2_name","actor1_facebook_likes","gross","category","actor1_name","title","votes_count","casts_facebook_likes","actor3_name","facenumber","keyworkds","link","review_count","language","country","content_rating","budget","year","actor2_facebook_likes","score","aspect_ratio","movie_facebook_likes")
)
data <- row_data[,c(12,4,23,19,20,21,22,9,26,1,10,17,16,2,5,3,13,18,25,15,6,7,24,11,8,14,27)]
str(data)
summary(data)
hist(data$gross)
#explore raw data in year country gross
movie_year_gross_country <- data[,c("year","gross","country")]
#to fix the duplicate error
movie_year_gross_country <- spread(movie_year_gross_country,year,gross)
#change the type of col
data$title <- as.character(data$title)
data$budget <- as.integer(data$budget)
data$title <- str_replace(data$title,"��","")
movie_data$language[movie_data$language == ""] <- NA
movie_data$duration[movie_data$duration == ""] <- NA
movie_data$year[movie_data$year == ""] <- NA
movie_data$content_rating[movie_data$content_rating == ""] <- NA
movie_data$bedget[movie_data$budget == ""] <- NA
movie_data$gross[movie_data$gross == ""] <- NA
movie_data$aspect_ratio[movie_data$aspect_ratio == ""] <- NA
movie_data$type[movie_data$type == ""] <- NA
movie_data$category[movie_data$category == ""] <- NA
movie_data$keyworkds[movie_data$keyworkds == ""] <- NA
movie_data$facenumber[movie_data$facenumber == ""] <- NA
movie_data$director_name[movie_data$director_name == ""] <- NA
movie_data$director_factbook_likes[movie_data$director_factbook_likes == ""] <- NA
movie_data$critics[movie_data$critics == ""] <- NA
movie_data$votes_count[movie_data$votes_count == ""] <- NA
movie_data$review_count[movie_data$review_count == ""] <- NA
movie_data$score[movie_data$score == ""] <- NA
movie_data$actor3_name[movie_data$actor3_name == ""] <- NA
movie_data$actor3_facebook_likes[movie_data$actor3_facebook_likes == ""] <- NA
movie_data$actor2_name[movie_data$actor2_name == ""] <- NA
movie_data$actor2_facebook_likes[movie_data$actor2_facebook_likes == ""] <- NA
movie_data$actor1_name[movie_data$actor1_name == ""] <- NA
movie_data$actor1_facebook_likes[movie_data$actor1_facebook_likes == ""] <- NA
movie_data$casts_facebook_likes[movie_data$casts_facebook_likes == ""] <- NA
movie_data$movie_facebook_likes[movie_data$movie_facebook_likes == ""] <- NA
#str_detect
#table(data$country)