# How to create a new chapter

To create a new chapter simply run:

```
./new-chapter.sh
```

If this does not work check that the path to bash is correct in the file
`new-chapter.sh` (the first line).

# Structure of the notes

- `contents.tex`: Here you can find the inputs to each of the chapters macros
  and files. Notice that the inputs are done so that each chapter can have its
  own set of macros. In this way we don't pollute the namespaces. If you want to
  define something very generic you can write the macro in the file named
  `macros.tex` that you can find in the root directory of the project.

- `macros.tex`: Shared macros. Only very generic things should go here.

- `chapter-name/macros.tex`: Chapter specific macros.

- `headers.tex`: Any headers and configurations should go here.