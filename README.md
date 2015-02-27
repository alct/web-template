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

    init
    LICENSE
    README.md
    src
    ├── css
    │   ├── main.css
    │   ├── normalize-3.0.2.min.css
    │   └── print.css
    ├── img
    ├── index.html
    ├── js
    │   ├── lib
    │   │   └── jquery-2.1.3.min.js
    │   └── main.js
    └── robots.txt

## License

[GPLv3](LICENSE)
