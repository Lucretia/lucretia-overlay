# Lucretia's Gentoo overlay

Add the overlay to Gentoo with the following:

```bash
# eselect repository add lucretia git https://github.com/Lucretia/lucretia-overlay.git
# emaint sync -r lucretia
```

I list here where I got the original ebuild's from, they may have change significantly since I grabbed them.

* app-emulation/
  * [wineasio](https://gpo.zugaina.org/AJAX/Ebuild/13005980/View)
    * [1.2.0](./app-emulation/wineasio/wineasio-1.2.0.ebuild)
* dev-ada/
  * gprbuild
    * [gprbuild-25.0.0-r3](./dev-ada/gprbuild/gprbuild-25.0.0-r3.ebuild)
      * Patches the ::gentoo build with the correct version number.
* dev-libs/
  * cudnn
    * [9.8.0.87](./dev-libs/cudnn/cudnn-9.8.0.87.ebuild)
  * libenet
    * [1.3.18](./dev-libs/libenet/libenet-1.3.18.ebuild) [untested]
    * [9999](./dev-libs/libenet/libenet-9999.ebuild)
* media-gfx/
  * [stl-thumb](https://github.com/unlimitedbacon/stl-thumb)
    * [0.5.0](./media-gfx/stl-thumb/stl-thumb-0.5.0.ebuild)
      * This does not work, if you can fix it, please send a PR and I'll upload to gentoo bugs.
      * See the end of this [gist](https://gist.github.com/Lucretia/74f58a92c5aab0e9f92a261be6f15edb).
  * [stl-thumb-bin](https://github.com/unlimitedbacon/stl-thumb)
    * [0.5.0](./media-gfx/stl-thumb-bin/stl-thumb-bin-0.5.0.ebuild)
      * This uses the prebuilt Ubuntu deb.
  * [kio-stl-thumbnailer](https://github.com/unlimitedbacon/stl-thumb-kde)
    * [0.5.0](./media-gfx/kio-stl-thumbnailer/kio-stl-thumbnailer-0.5.0.ebuild)
* media-libs/
  * [asiosdk](https://gpo.zugaina.org/AJAX/Ebuild/38403542/View)
    * [2.3.3](./media-libs/asiosdk/asiosdk-2.3.3.ebuild)
* media-plugins/
  * [distroav](https://data.gpo.zugaina.org/fem-overlay/media-plugins/distroav)
    * [6.0.0](./media-plugins/distroav/distroav-6.0.0.ebuild)
* media-sound/
  * ardour (+vst)
    * [8.6-r2](./media-sound/ardour/ardour-8.6-r2.ebuild)
    * [8.7-r1](./media-sound/ardour/ardour-8.7-r1.ebuild)
    * [8.9-r1](./media-sound/ardour/ardour-8.9-r1.ebuild)
    * [8.10-r5](./media-sound/ardour/ardour-8.10-r5.ebuild)
    * [8.11-r1](./media-sound/ardour/ardour-8.11-r1.ebuild)
    * [8.12-r1](./media-sound/ardour/ardour-8.12-r1.ebuild)
* media-video/
  * [davinci-resolve](https://bugs.gentoo.org/718070)
    * [19.1.2](./media-video/davinci-resolve/davinci-resolve-19.1.2.ebuild)
    * [19.1.3](./media-video/davinci-resolve/davinci-resolve-19.1.3.ebuild)
    * [20.0_beta1](./media-video/davinci-resolve/davinci-resolve-20.0_beta_rc1.ebuild)
      * See [Gentoo Bug](https://bugs.gentoo.org/718070).
  * [ndi-sdk](https://data.gpo.zugaina.org/fem-overlay/media-video/ndi-sdk)
    * [6.1.1](./media-video/ndi-sdk/ndi-sdk-6.1.1.ebuild)
* net-misc/
  * [megasync-bin](https://mega.io/desktop#download)
    * [5.6.1](./net-misc/megasync-bin/megasync-bin-5.6.1.ebuild)
      * I built this from the Ubuntu binary, because the gentoo source build isn't working properly.
* x11-drivers/
  * [OpenTabletDriver](https://wiki.gentoo.org/wiki/Project:GURU)
    * [0.6.5.0-r1](./x11-drivers/OpenTabletDriver/OpenTabletDriver-0.6.5.0-r1.ebuild)
* dev-qt/
  * qtvirtualkeyboard - From ::gentoo because it's masked and DaVinci needs it.
    * [5.15.16](./dev-qt/qtvirtualkeyboard/qtvirtualkeyboard-5.15.16.ebuild)
* sci-electronics/
  * [litex](https://data.gpo.zugaina.org/pentoo/sci-electronics/litex/)
    * [2024.12](./sci-electronics/litex/litex-2024.12.ebuild)
  * [migen](https://data.gpo.zugaina.org/pentoo/sci-electronics/migen/)
    * [0.9.2](./sci-electronics/migen/migen-0.9.2.ebuild)
* sci-physics/
  * [bullet](./sci-physics/bullet/bullet-3.25.ebuild)
    * See bug [#954779](https://bugs.gentoo.org/954779).

