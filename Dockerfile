FROM mcr.microsoft.com/playwright/python

RUN pip3 install --no-cache-dir pytest pytest-playwright pytest-xdist

WORKDIR /code

COPY tests .

CMD pytest -n auto -ra


