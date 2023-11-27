Для подробного изучения работы и выполнения команд  (скрины к файлу необходимо разместить в той же папке)  файл:

**complete-description.md**

При выполнении последующий действий, **Docker** и **Docker Compose**, должны быть предварительно установлены (как это сделать описано в файле **complete-description.md** )

Сборка и запуск образа при помощи файла **Dockerfile** (показан запуск из папки, где размещён этот файл, можно задать путь):

```bash
docker build -t ubuntu-20-04:test-script .
docker run -it ubuntu-20-04:test-script /bin/bash
```

 Запуск срипта происходит в запущенном контейнере:
```bash
./ver_and_date.sh
```

Запуск образа и затем скрипта при помощи файла **docker-compose.yaml** (образ предварительно необходимо собрать см. выше команду **build**)
```bash
docker-compose up
```
---

