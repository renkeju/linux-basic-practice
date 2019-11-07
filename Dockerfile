FROM python:3.7

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --no-cache-dir -r requirements.txt

COPY . .

CMD ['/bin/bash', 'entrypoint.sh']