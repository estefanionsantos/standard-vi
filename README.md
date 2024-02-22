# Standard VI Plugin

# Installing vim on Ubuntu  
if your UBUNTU does not have vim installed run the command below:
```
$ sudo apt-get install vim vim-gnome
```

Installing on DEBIAN:
```
$ sudo apt install vim vim-gtk3
```

## Now let's replace the vim directory
```
$ cd /etc
$ sudo mv vim vim-bkp
$ sudo git clone https://github.com/estefanionsantos/standard-vi.git vim
```
## Alternative 2 for vim 8+
```
$ cd /etc/vim
/etc/vim $ sudo mkdir -p pack/vendor/start
/etc/vim $ cd pack/vendor/start
/etc/vim/pack/vendor/start $ sudo git clone https://github.com/estefanionsantos/standard-vi.git
/etc/vim/pack/vendor/start $ cd /etc/vim
/etc/vim $ sudo cp -Rp pack/vendor/start/standard-vi/vimrc .
```
