# Використовуємо легкий образ nginx на базі Alpine Linux
FROM nginx:alpine

# Видаляємо стандартну сторінку nginx
RUN rm -rf /usr/share/nginx/html/*

# Копіюємо всі твої файли (index.html, styles.css тощо) в папку, з якої nginx віддає статику
COPY . /usr/share/nginx/html

# Порт 80 вже відкритий у базовому образі nginx
# EXPOSE 80