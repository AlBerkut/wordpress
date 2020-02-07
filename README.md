# WordPress

### !AHTUNG!
WordPress работает без proxy_pass в Nginx.
Nginx конфликтует с Apache установленным в стеке LAMP вместе с WordPress.
При обратном проксировании слетают все стили и скрипты WordPress.
Сейчас WordPress запускается на 80 порту.
Чтобы это изменить, нужно прописать свой порт в docker-compose.yml
```
services:
  wordpress:
    ...
    ports:
      - "80:80" # <-- Тут пишем порт который нам нужен. Example: "8080:80"
```

##### Installation
1. Клонировать репозиторий на хост.
2. Запустить script.sh для установки docker и docker-compose.
3. Перезайти в систему.
4. Запустить ```docker-compose up -d``` 
5. В браузере перейти на IP адресс хоста и настроить WordPress.

