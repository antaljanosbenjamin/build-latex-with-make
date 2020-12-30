# Build latex with make
This action can be used to build latex documents with make. The `texlive-latex-extra texlive-fonts-extra texlive-bibtex-extra biber make git` packages are installed on the base ubuntu image, so everything can be used that is available in the ubuntu base image or installed by these packages. My focus is on `pdflatex` and `biber` as I am using these tools.

Basically it calls `make` in the root directory of the repository, so the build process can be configured within the `Makefile`. An example makefile is the 

## Inputs

### `directory`
Path of the directory that contains the makefile relative to the root of the repository.

## Example usage


```
name: test
on: [push]
jobs:
  test-example:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: antaljanosbenjamin/build-latex-with-make@master
```

For further examples check the [test workflow](.github/workflows/test.yaml).