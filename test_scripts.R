test <- shots$CLOSEST_DEFENDER[1:10]
test <- str_split(test, ", ")
nms <- c("last_name", "first_name")
testdf <- data_frame(map_chr(test, 1),
                  map_chr(test, 2)) %>%
  setNames(nms) %>%
  mutate(f_l = str_c(first_name, last_name, sep = " "))

#defend_names <- str_split(shots$CLOSEST_DEFENDER, ", ") %>%
  transpose() %>% map( ~ unlist(.)) %>% setNames(nms) %>% as_tibble %>% mutate(player_name = str_c(first_name, last_name, sep = " "))
  shots$CLOSEST_DEFENDER <- str_replace(shots$CLOSEST_DEFENDER, "Nene", "Hilario, Nene")
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
  #already did this first part earlier with n distinct and can probably just use duplicated with the id_name version
  off_name <- shots %>% group_by(player_name) %>% nest() %>% select(player_name)
  off_id_name <- shots %>% group_by(player_name, player_id) %>% nest() %>% select(player_name, player_id)
  off_id_name$player_name[duplicated(off_id_name$player_name)]
  sum(duplicated(off_id_name$player_name))
  

  mutate_nas <- function(.data, condition) {
    condition <- eval(substitute(condition), .data, envir)
    .data[condition, ] <- .data[condition, ] %>% mutate(...)
    .data
  }
  data <- data %>% 
    mutate_nas( desc == "blank", x = NA, y = NA, z = NA)
  