// Definir secções
= Definir uma secção
== Definir uma subsecção
=== Definir uma subsubsecção

// // Definir uma figura
// #figure(caption: "Legenda da figura",
//   image("<caminho para a figura",
//       width: auto
//     )
// )

// // Alinhar conteudo, o exemplo them uma imagem, mas poderia ser qualquer outro objeto
// #align(center, [
//   #figure(caption: "Legenda da figura",
//   image("<caminho para a figura",
//       width: auto
//     )
//   )
// ])

// Ver https://typst.app/docs/reference/model/table/
#align(
  center,
  [
    #figure(
      caption: "Legenda da figura",
      table(
        columns: (auto, auto),
        table.header(
          [*header1*],
          [*header2*],
        ),

        [cont 1], [cont 2],
        [cont 3], [cont 4],
      ),
    )
  ],
)
