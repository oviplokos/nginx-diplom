# Используем официальный образ Nginx
FROM nginx:alpine

# Копируем статические файлы в контейнер
COPY static /usr/share/nginx/html

# Копируем конфиг Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Открываем порт 80
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]