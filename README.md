# esp-homekit-demo-builder

A small modification to the build instructions from [esp-homekit-demo](https://github.com/maximkulkin/esp-homekit-demo) which fixes the build failing due to old/missing expat.

You can "fix" the build yourself (as it is broken at time of writing (9-9-2021)) 
by adding the following between `git clone ...` and `make STANDALONE=n` in esp-sdk-dockerfile:

```
    cd /build/esp-open-sdk/crosstool-NG ; \
    ls ; \
    mkdir .build ; \
    cd .build ; \
    mkdir tarballs ; \
    cd tarballs ; \
    wget https://github.com/libexpat/libexpat/releases/download/R_2_1_0/expat-2.1.0.tar.gz ; \
```
