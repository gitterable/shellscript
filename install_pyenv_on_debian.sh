#!/bin/bash

# root 권한에서 실행되므로 sudo는 제거
apt update && apt install -y build-essential curl libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget llvm libncursesw5-dev \
xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev git

# pyenv 설치
curl https://pyenv.run | bash

# pyenv 환경 설정
export PATH="/root/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Python 3.12 설치
pyenv install 3.12.0
pyenv local 3.12.0

# 설치 확인
python --version
pyenv -v
