# boosteg

boost is good

## 1 boost build

### 1.1 build b2

```bash
./bootstrap.sh
```

### b2 configuration

```bash
content of user-config.jam:

# this options help to reduce memory consumption
using gcc : : g++ : <cxxflags>--param ggc-min-expand=10 <cxxflags>--param ggc-min-heapsize=4096 ;
```

### 1.2 build boost

```bash
./b2 --prefix=OUTPUT --no-cmake-config --build-type=minimal --build-dir=BUILD --without-python -j 2 -q install
```

### 1.3 move OUTPUT to code dir

```bash
boosteg/OUTPUT
```
