FROM gitpod/workspace-full

# ENV BREW_DIR "/home/linuxbrew/.linuxbrew"

# USER root
# RUN echo "${BREW_DIR}/lib" > /etc/ld.so.conf.d/brew.conf && \
#     ldconfig

# USER gitpod
# RUN brew install dwatch watchexec watchman && \
#     brew install snaipe/soft/criterion

USER root
RUN docker-up & \
    docker build -t kdridi/vx .

USER gitpod