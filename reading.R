source('data.R')

books_by_download <- books %>%
  arrange(desc(downloads))

books_refined <- books_by_download %>%
  select(author, title, words, syllables, sentences)

top_ten_authors <- head(books_refined, 10) %>% pull(author)

authors_books <- books_refined %>% filter(author %in% top_ten_authors) %>% arrange(author)