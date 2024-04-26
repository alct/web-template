# Website template

Lightweight website template. It creates few directories, files and local copy of normalize.css (latest, minified).

## Installation

```bash
cd && git clone https://github.com/alct/web-template.git
sudo ln -s ~/web-template/init /usr/local/bin/web-template
```

## Utilisation

If `path` is empty, files will be copied in the current directory.

```bash
web-template [path]
```

## Overview

    src
    ├── css
    │   ├── main.css
    │   └── normalize-8.0.1.min.css
    ├── img
    ├── js
    │   ├── lib
    │   └── main.js
    ├── index.html
    └── robots.txt
    init
    LICENSE
    README.md

## License

[GPLv3](LICENSE)
