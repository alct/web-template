# Website template

Lightweight website template. It creates few directories, files and local copies of jQuery (latest, minified) and normalize.css (latest, minified).

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
    │   └── normalize-3.0.3.min.css
    ├── img
    ├── js
    │   ├── lib
    │   │   └── jquery-2.1.4.min.js
    │   └── main.js
    ├── index.html
    └── robots.txt
    init
    LICENSE
    README.md

## License

[GPLv3](LICENSE)
