test <- shots$CLOSEST_DEFENDER[1:10]
test <- str_split(test, ", ")
nms <- c("last_name", "first_name")
testdf <- data_frame(map_chr(test, 1),
                  map_chr(test, 2)) %>%
  setNames(nms) %>%
  mutate(f_l = str_c(first_name, last_name, sep = " "))

#defend_names <- str_split(shots$CLOSEST_DEFENDER, ", ") %>%
  transpose() %>% map( ~ unlist(.)) %>% setNames(nms) %>% as_tibble %>% mutate(player_name = str_c(first_name, last_name, sep = " "))
  
  defend <- str_split(shots$CLOSEST_DEFENDER[b], ", ")
  nms <- c("last_name", "first_name")
  defenddf <- data_frame(map_chr(defend, 1),
                       map_chr(defend, 2)) %>%
    setNames(nms) %>%
    mutate(f_l = str_c(first_name, last_name, sep = " "))
  
  y <- str_which(shots$CLOSEST_DEFENDER, ",")
  > m<- row_number(shots$CLOSEST_DEFENDER)
  > setdiff(m, y)
  shots[b, 12:21]
  unique(shots[b, 15])
  
  shot_defender <- shots %>% group_by(CLOSEST_DEFENDER) %>% nest() %>% select(CLOSEST_DEFENDER)