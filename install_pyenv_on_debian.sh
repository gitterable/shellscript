#!/bin/bash

# pyenv 설치에 필요한 의존성 설치
sudo apt update && sudo apt install -y build-essential curl libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget llvm libncursesw5-dev \
xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev git

# pyenv 설치
curl https://pyenv.run | bash

# pyenv 초기화 설정 (스크립트 내부에서도 적용되도록 export)
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Python 3.12 설치
pyenv install 3.12.0

# local 설정
pyenv local 3.12.0

# 설치 확인용 출력
python --version
pyenv -v
