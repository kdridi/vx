FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

RUN brew install dwatch watchexec watchman
RUN brew install snaipe/soft/criterion
RUN echo "/home/linuxbrew/.linuxbrew/lib" > /etc/ld.so.conf.d/brew.conf && \
    ldconfig