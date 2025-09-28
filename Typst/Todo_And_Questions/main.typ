#import "utils.typ": *

#let title = "Title"
#let subtitle = "Subtitle"

#align(center)[
  #block(text(weight: 700, 1.75em, title))
  #block(text(weight: 500, 1.2em, subtitle))
]

#align(center, heading("Questions"))
#align(center, questions_table(
  caption: "Caption",
  //
  [Pergunta1],
  [Pessoa1],
  [Resposta1],
  //
  [Pergunta2],
  [Pessoa2],
  [Resposta2],
))

#align(center, heading("Todo"))
#align(center, todo_table(
  caption: "Caption",
  //
  [Todo1],
  [Pessoa1],
  [Yes],
  //
  [Todo2],
  [Pessoa2],
  [No],
))
