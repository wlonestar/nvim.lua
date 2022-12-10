# my nvim config

## steps

1. install [packer](https://github.com/wbthomason/packer.nvim)

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

2. install clangd

```
sudo apt-get install clangd -y
```

3. install pyright

```
pip install --user pyright
```

4. install rust-analyzer

```
rustup component add rust-analyzer
```
