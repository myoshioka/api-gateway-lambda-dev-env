FROM lambci/lambda:build-python3.7
ADD . /code
WORKDIR /code

RUN yum install -y gcc-c++ make
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum install -y nodejs
RUN npm install -g serverless
RUN npm install
RUN pip install -r requirements.txt

CMD /bin/bash

