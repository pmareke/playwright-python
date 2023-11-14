from mcr.microsoft.com/playwright/python

RUN pip3 install --no-cache-dir pytest pytest-playwright

WORKDIR /code

COPY tests .

CMD "pytest"


