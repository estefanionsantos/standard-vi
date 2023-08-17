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
