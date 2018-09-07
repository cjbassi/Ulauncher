# Maintainer: Aleksandr Gornostal <ulauncher.app@gmail.com>

# To install, run `makepkg -is`

pkgname=ulauncher
pkgver=1.0
pkgrel=1
pkgdesc='Application launcher for Linux'
arch=('any')
url="http://ulauncher.io"
license=('GPL3')
depends=('gobject-introspection-runtime' 'libappindicator-gtk3' 'libkeybinder3' 'webkit2gtk'
         "python-"{dbus,gobject,pyinotify,levenshtein,xdg,websocket-client})
makedepends=('python-distutils-extra')
provides=("ulauncher")
conflicts=("ulauncher")
source=("git+https://github.com/cjbassi/Ulauncher#branch=improvements")
sha256sums=('SKIP')

build() {
  cd Ulauncher
  python setup.py build
}

package() {
  cd Ulauncher
  install -Dm644 build/share/applications/ulauncher.desktop "$pkgdir/usr/share/applications/ulauncher.desktop"
  python setup.py install --root="$pkgdir" --optimize=1 --skip-build
  rm -rf "$pkgdir"/usr/share/ulauncher/preferences/{no*,src,bow*,gul*,pack*}
}
