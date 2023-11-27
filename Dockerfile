# Из базового образа ubuntu:20.04 
FROM ubuntu:20.04
# Задаём переменную окружения, чтобы пользователь не участвовал в установке (выбор клавиатуры и прочее)
ENV DEBIAN_FRONTEND=noninteractive
# Установим необходимые пакеты
RUN apt update && apt install -y neofetch nano
# Создадим файл скрипта
RUN touch ver_and_date.sh
# Пропишем необходимые инструкции в файл скрипта
RUN echo "#!/bin/bash" >> ver_and_date.sh \ 
 && echo "neofetch" >> ver_and_date.sh \ 
 && echo "echo '"Now:"'" >> ver_and_date.sh \ 
 && echo "date +'"%H:%M %d.%m.%Y"'" >> ver_and_date.sh
# Дадим права для доступа
RUN chmod +x ver_and_date.sh
# Зададим стартовую команду для контейнера
CMD ["bash"]
