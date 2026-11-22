FROM debian:trixie

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	wget

RUN mkdir /vimbat
RUN wget https://github.com/neovim/neovim/releases/download/v0.12.5/nvim-linux-x86_64.tar.gz
RUN tar xvzf nvim-linux-x86_64.tar.gz

# added comment

ENTRYPOINT ["/nvim-linux-x86_64/bin/nvim", "/vimbat"]
