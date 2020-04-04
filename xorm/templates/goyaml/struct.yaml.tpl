{{range .Tables}}
{{$table := .}}
{{range .ColumnsSeq}}{{$col := $table.GetColumn .}}
- {name: {{$col.Name}},zname: {{$col.Comment}},cname: {{Mapper $col.Name}},ctype: {{$col.SQLType.Name}}}{{end}}
{{end}}