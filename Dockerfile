FROM python:3.7 as sphinx

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --no-cache-dir -r requirements.txt

COPY . .

CMD ['sphinx-build', '-nW', '-b', 'html', '-d', 'build/doctrees', '.', 'build/html']

FROM nginx:latest

COPY --from=sphinx /usr/src/app/build/html /usr/share/nginx/html/linux

CMD ["nginx", "-g", "daemon off;"]