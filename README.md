# gnudatalanguage.github.io

## How to build website locally

1. Install required packages
```
pip install sphinx recommonmark
```

2. Generate readme and wiki docs.
```
.ci/retrieve_readme.sh
.ci/retrieve_wiki.sh
```

3. Build website.
```
sphinx-build src build
```

## How to add a new page

1. Add a new document in `src/`. The file format can be either `rst` or `md`. 
2. Open `src/_template/layout.html`. Go to line 33. Append a new link there (put document file name without extension).
3. Add a link to `src/toctree.rst`.