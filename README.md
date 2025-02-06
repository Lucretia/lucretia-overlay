# Lucretia's Gentoo overlay

I list here where I got the original ebuild's from, they may have change significantly since I grabbed them.

* app-emulation/
  * [wineasio](https://gpo.zugaina.org/AJAX/Ebuild/13005980/View)
    * [1.2.0](./app-emulation/wineasio/wineasio-1.2.0.ebuild)
* dev-utils/
  * [nvidia-cuda-toolkit](https://github.com/gentoo/gentoo/pull/40389)
    * [12.8.0](./dev-util/nvidia-cuda-toolkit/nvidia-cuda-toolkit-12.8.0.ebuild)
* media-libs/
  * [asiosdk](https://gpo.zugaina.org/AJAX/Ebuild/38403542/View)
    * [2.3.3](./media-libs/asiosdk/asiosdk-2.3.3.ebuild)
* media-sound/
  * ardour (+vst)
    * [8.6-r2](./media-sound/ardour/ardour-8.6-r2.ebuild)
    * [8.7-r1](./media-sound/ardour/ardour-8.7-r1.ebuild)
    * [8.9-r1](./media-sound/ardour/ardour-8.9-r1.ebuild)
    * [8.10-r5](./media-sound/ardour/ardour-8.10-r5.ebuild)
* media-video/
  * [davinci-resolve](https://bugs.gentoo.org/718070)
    * [19.1.2](./media-video/davinci-resolve/davinci-resolve-19.1.2.ebuild)
    * [19.1.3](./media-video/davinci-resolve/davinci-resolve-19.1.3.ebuild)
      * See [Gentoo Bug](https://bugs.gentoo.org/718070).
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