FROM gitpod/workspace-full

RUN docker-up && \
    git clone https://github.com/kdridi/vx.git /tmp/vx.git && \
    cd /tmp/vx.git && \
    make docker && \
    cd - && \
    rm -rf /tmp/vx.git
