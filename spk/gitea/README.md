# References

- https://github.com/go-gitea/gitea
- https://github.com/SynoCommunity/spksrc

# Building

1. Clone this repo
2. Run
    ```
    docker run --rm -it -v $(pwd):/spksrc ghcr.io/synocommunity/spksrc make -C /spksrc/spk/gitea arch-${TC}
    ```
   Where TC is one of the supported architecture / toolchain combinations in directory **toolchain/** (without the **syno-** prefix), for example `armada375-7.0`. See also https://github.com/SynoCommunity/spksrc/wiki/Architecture-per-Synology-model.
3. When running **docker** within a VM where no hard links can be created on a mounted volume:
    ```
    docker run --rm -it -v $(pwd):/spksrc ghcr.io/synocommunity/spksrc bash -c "cp -rp /spksrc/* /tmp; make -C /tmp/spk/gitea arch-armada375-7.0; mv -v /tmp/packages/*.spk /spksrc/"
    ```
# Upgrading

Caveat: this is untested

1. Update version in **cross/gitea/Makefile** and **spk/gitea/Makefile**
2. Run `make -C cross/gitea digests`
