FROM debian:trixie

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	wget \
	curl \
	git \
	clang \
	libc++-dev \
	libc++abi-dev \
	tree \
	cmake 




RUN mkdir -p /root/.config
COPY ./conf/nvim /root/.config/nvim
RUN mkdir /vimbat
RUN wget https://github.com/neovim/neovim/releases/download/v0.12.5/nvim-linux-x86_64.tar.gz
RUN tar xvzf nvim-linux-x86_64.tar.gz

# tree-sitter
RUN wget https://github.com/tree-sitter/tree-sitter/releases/download/v0.27.0/tree-sitter-linux-x64.gz
RUN gunzip tree-sitter-linux-x64.gz
RUN install -m755 tree-sitter-linux-x64 /usr/local/bin/tree-sitter

ENTRYPOINT ["/nvim-linux-x86_64/bin/nvim", "/vimbat"]
