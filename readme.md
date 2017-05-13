Build
-----
```
docker build -t factorio --build-arg FACTORIO_VERSION=<version> .
```

Versions
--------
stable: https://www.factorio.com/download-headless/stable

experimental: https://www.factorio.com/download-headless/experimental

Run
---
**Unix**
```
docker run -d --name factorio -v $(pwd)/saves:/opt/factorio/saves factorio
```

**Windows**
```
docker run -d --name factorio -v $PWD/saves:/opt/factorio/saves factorio
```
