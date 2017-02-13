# ezflash

Open Source patcher of GBA roms to enabled save functionality on the EZ-Flash IV flash card.

Fork of: https://github.com/langest/ezgba

## Building

### Prerequisites

The project depends on [boost](http://www.boost.org/) and [tclap](http://tclap.sourceforge.net/). To install them use the following commands.

#### macOS / Homebrew
`brew install boost tclap`

#### Ubuntu/Debian / APT
`sudo apt-get install libboost-all-dev libtclap-dev`

### Compiling

Assuming you have some recent version of gcc or llvm install just run:
```
make
```
