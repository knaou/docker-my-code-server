FROM codercom/code-server

USER root
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y git jq make nkf tree silversearcher-ag \
     build-essential libbz2-dev libssl-dev zlib1g-dev libffi-dev \
     lzma-dev libxslt-dev libkrb5-dev libsqlite3-dev sqlite3 \
     libcurl4-openssl-dev libpng-dev libjpeg-dev libonig-dev libtidy-dev libzip-dev && \
     rm -rf /var/lib/apt/lists/*
USER coder

COPY scripts/* /usr/local/bin/

CMD ["--auth", "none"]
