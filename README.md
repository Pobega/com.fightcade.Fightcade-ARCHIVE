# com.fightcade.Fightcade

Files for building a Flatpak for [Fightcade](https://www.fightcade.com/) to ultimately be released on Flathub.

## Usage

Install the runtime dependencies:
```
flatpak install org.electronjs.Electron2.BaseApp//19.08 \
org.freedesktop.Platform//20.08 \
org.freedesktop.Platform.Compat.i386//20.08 \
org.freedesktop.Platform.GL32
```
<sup>(Please reference `com.fightcade.Fightcade.yml` if these dependencies change and open a PR against this README)</sup>

And kick off a build using the Makefile:
```
make build
```

If you'd like to install the Flatpak locally after building use `make install` instead.

## Install without building

If you'd like to test out the Flatpak, a (semi) live version can be accessed by adding my remote

```
flatpak remote-add --user --no-gpg-verify pobega http://pobega.github.io/repo/
flatpak install --user pobega com.fightcade.Fightcade
```

## Details
Unpacks the tar.gz bundles from Fightcade.com to `/app/fightcade/` and builds a very plain version of Wine to run the emulators with.
Uses Zypak to wrap the Fightcade Electron binary so that it can run in the Bwrap sandbox.

### ROMs
ROM folders can be found in `$HOME/.local/share/flatpak/app/com.fightcade.Fightcade/x86_64/master/<hash>/files/fightcade`

## Thanks
* Electron support is thanks to [Zypak](https://github.com/refi64/zypak)
* Lutris devs for [net.lutris.Lutris.Runner.Wine](https://github.com/flathub/net.lutris.Lutris.Runner.Wine) which helped me figure out how to get Wine building.
