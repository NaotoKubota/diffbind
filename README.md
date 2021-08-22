# Docker container for DiffBind (v3.2)

Dockerfile for [DiffBind](http://bioconductor.org/packages/release/bioc/vignettes/DiffBind/inst/doc/DiffBind.pdf):Differential Binding Analysis of ChIP-Seq Peak Data

It's on [dockerhub](https://hub.docker.com/r/naotokubota/diffbind) and [github](https://github.com/NaotoKubota/diffbind).

## tags and links
- `3.2` [(master/Dockerfile)](https://github.com/NaotoKubota/diffbind/blob/master/Dockerfile)

## how to build

```sh
docker pull naotokubota/diffbind:3.2
```

or

```sh
git clone git@github.com:NaotoKubota/diffbind.git
cd diffbind
docker build --rm -t naotokubota/diffbind:3.2 .
```

## running

```sh
docker run --rm -it naotokubota/diffbind
```
