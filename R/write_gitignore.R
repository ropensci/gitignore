existing_lines <- readLines(".gitignore", warn = FALSE, encoding = "UTF-8")

new_lines <- gitignore_fetch_ignore_templates(c("R", "c"))
new_lines_splitted <- purrr::simplify(stringr::str_split(new_lines, "\n"))

new <- setdiff(new_lines_splitted, existing_lines)

setdiff(existing_lines, new_lines_splitted)

all <- c(existing_lines, new)

i <- grepl("^#", all)
all <- all[!i]
write_utf8(path, all)