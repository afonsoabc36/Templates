#let todo = text.with(fill: red)

#let light_gray = gray.lighten(60%)

#let todo_table(
  caption: "",
  ..rest,
) = {
  let args = rest.pos()
  let rows = ()
  
  let row_count = calc.floor(args.len() / 3)
  
  for i in range(row_count) {
    let base_index = i * 3
    rows.push((
      str(i + 1),  // Auto-generated ID starting from 1
      args.at(base_index),      // Todo
      args.at(base_index + 1),  // Assignee
      args.at(base_index + 2),  // Done
    ))
  }
  
  let table_content = rows.flatten()
  
  block(breakable: true, figure(
    table(
      columns: (auto, auto, auto, auto),
      inset: 6pt,
      fill: (x, y) => if y == 0 or x == 0 { light_gray },
      align: center,
      [*ID*], [*Todo*], [*Assignee*], [*Done?*],
      ..table_content,
    ),
    caption: if caption != "" { caption } else { none },
  ))
}


#let questions_table(
  caption: "",
  ..rest,
) = {
  let args = rest.pos()
  let rows = ()
  
  let row_count = calc.floor(args.len() / 3)
  
  for i in range(row_count) {
    let base_index = i * 3
    rows.push((
      str(i + 1),  // Auto-generated ID starting from 1
      args.at(base_index),      // Question
      args.at(base_index + 1),  // To who
      args.at(base_index + 2),  // Answer
    ))
  }
  
  let table_content = rows.flatten()
  
  block(breakable: true, figure(
    table(
      columns: (auto, auto, auto, auto),
      inset: 6pt,
      fill: (x, y) => if y == 0 or x == 0 { light_gray },
      align: center,
      [*ID*], [*Question*], [*To who*], [*Answer*],
      ..table_content,
    ),
    caption: if caption != "" { caption } else { none },
  ))
}
