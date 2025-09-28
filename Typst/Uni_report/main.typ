#import "config.typ": capa_semFotos, report_conf
#import "Chapters/introducao.typ"
// #import "Chapters/conclusao.typ"

// Variaveis

#let unidadeCurricular = ""
#let siglaCurso = "MEI"
#let anoCurso = "1"
#let semestreCurso = "2"

// Document Show configurations

// Legendas de tabelas por cima
// #show figure.where(kind: table): set figure.caption(position: top)


// Configuração do estilo do indice
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
}


// Geração da capa
#show: doc => capa_semFotos(
  unidadeCurricular: unidadeCurricular,
  titulo: "",
  tipoDocumento: "TP",
  grupoPratico: "00",
  siglaCurso: siglaCurso,
  anoCurso: anoCurso,
  semestre: semestreCurso,
  autores: (
    /*("Nome do aluno", "Número do aluno"),*/
    ("Afonso Silva", "PG55920"),
    // ("...", "..."),
  ),
  data: true, // Mostrar data no documento
  doc,
)

// Geração das indices, header e footer
#show: doc => report_conf(
  table_of_contens: true, // Índice
  table_of_figures: true, // Lista de figuras
  table_of_tables: false, // Lista de tabelas
  header: true, // Cabeçalho com nome da UC
  unidadeCurricular: unidadeCurricular,
  siglaCurso: siglaCurso,
  anoCurso: anoCurso,
  semestreCurso: semestreCurso,
  doc,
)

// Capitulos do documento
#introducao
// #conclusao

#pagebreak()
#bibliography("references.bib")
