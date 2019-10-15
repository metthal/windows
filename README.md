```
docker build --build-arg CMAKE_VERSION=3.15.4 -t metthal/windows:vs2019-cmake3.15.4 -f Dockerfile.vs-cmake .
docker build --build-arg PYTHON_VERSION=3.7.4 -t metthal/windows:vs2019-cmake3.15.4-python3.7.4 -f Dockerfile.vs-cmake-python .
docker build --build-arg PYTHON_VERSION=3.8.0 -t metthal/windows:vs2019-cmake3.15.4-python3.8.0 -f Dockerfile.vs-cmake-python .
docker build --build-arg PYTHON_VERSION=3.6.8 -t metthal/windows:vs2019-cmake3.15.4-python3.6.8 -f Dockerfile.vs-cmake-python .
```
