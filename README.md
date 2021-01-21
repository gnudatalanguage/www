# gnudatalanguage.github.io

## How to build website locally

1. Install required packages
```
pip install Sphinx travis-sphinx recommonmark
```

2. Generate readme and wiki docs.
```
.ci/retrieve_readme.sh
.ci/retrieve_wiki.sh
```

3. Build website.
```
travis-sphinx build
```

## How to add a new page

1. Add a new document in `docs/source`. The file format can be either `rst` or `md`. 
2. Open `docs/source/_template/layout.html`. Go to line 33. Append a new link there (put document file name without extension).
3. Add a link to `docs/source/toctree.rst`.