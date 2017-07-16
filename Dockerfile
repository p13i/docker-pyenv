FROM ubuntu

RUN apt-get update -y

RUN apt-get install -y sudo make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev

RUN apt-get install -y git
RUN apt-get install -y bash

RUN curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
ENV PATH="/root/.pyenv/bin:$PATH"
RUN eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)"
