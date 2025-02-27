FROM ghcr.io/parkervcp/yolks:debian

RUN         apt install -y lua5.3 liblua5.3-dev make postgresql-server-dev-all unixodbc unixodbc-dev

RUN         wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz \
            && tar zxpf luarocks-3.11.1.tar.gz \
            && cd luarocks-3.11.1 \
            && ./configure --lua-version=5.3 && make && make install \
            && luarocks install luasql-sqlite3 \
            && luarocks install luasql-mysql MYSQL_INCDIR=/usr/include/mysql \
            && luarocks install luasql-postgres PGSQL_INCDIR=/usr/include/postgresql \
            && luarocks install odbc \
            && luarocks install lua-resty-kafka \
            && cd .. \
            && rm luarocks-3.11.1.tar.gz

