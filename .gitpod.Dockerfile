FROM gitpod/workspace-full

# ENV BREW_DIR "/home/linuxbrew/.linuxbrew"

# USER root
# RUN echo "${BREW_DIR}/lib" > /etc/ld.so.conf.d/brew.conf && \
#     ldconfig

# USER gitpod
# RUN brew install dwatch watchexec watchman && \
#     brew install snaipe/soft/criterion

RUN find / -name Dockerfile 2>/dev/null || echo OK
RUN find / -name Makefile 2>/dev/null || echo OK
RUN find / -name main.c 2>/dev/null || echo OK
RUN make docker
