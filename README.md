# boosteg

boost is good

## 1 boost build

### 1.1 build b2

```bash
./bootstrap.sh
```

### 1.2 build boost

```bash
./b2 --prefix=OUTPUT --no-cmake-config --build-type=complete --build-dir=BUILD --layout=versioned link=static runtime-link=static threading=multi -q install
```

### 1.3 move OUTPUT to code dir

```bash
boosteg/OUTPUT
```
