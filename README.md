# PHP-FPM-ALPINE


## Support Version

* 7.4
* 7.3


## Getting images

```bash
docker push biyongyao/php-fpm-dev:tagname
```

## Running PHP Command

```bash
docker run --rm biyongyao/php-fpm-dev:7.4 php -v
```

## PHP Modules

```config
[PHP Modules]
Core
ctype
curl
date
dom
fileinfo
filter
ftp
hash
iconv
json
libxml
mbstring
mysqlnd
openssl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
readline
redis
Reflection
session
SimpleXML
sodium
SPL
sqlite3
standard
tokenizer
xdebug
xml
xmlreader
xmlwriter
zlib

[Zend Modules]
Xdebug
```

