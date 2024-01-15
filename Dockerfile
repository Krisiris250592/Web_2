# Docker-команда FROM вказує базовий образ контейнера
# Наш базовий образ - це Linux з попередньо встановленим python-3.10
FROM python:3.10-slim

# Встановимо змінну середовища
ENV APP_HOME /app

# Встановимо робочу директорію всередині контейнера
WORKDIR $APP_HOME
# Встановимо залежності всередині контейнера
COPY ./requirements.txt .
RUN pip install -r requirements.txt
# Скопіюємо інші файли в робочу директорію контейнера
COPY . .
# Запустимо наш застосунок всередині контейнера
CMD ["python", "main.py"]