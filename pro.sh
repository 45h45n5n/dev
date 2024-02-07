git config --global alias.s "status -s"
git config --global alias.co "checkout"
git config --global alias.lg "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.lg2 "lg -n2"
alias l="ls -lh"
alias la="ls -lah"
alias ll="ls -lh"
alias lla="ls -lah"
alias m="micro"
alias b="bat"
alias f='find . -name'
alias a='ag'

echo 'alias l="ls -lh"' > /root/.bashrc
echo 'alias la="ls -lah"' >> /root/.bashrc
echo 'alias ll="ls -lh"' >> /root/.bashrc
echo 'alias lla="ls -lah"' >> /root/.bashrc
echo 'alias m="micro"' >> /root/.bashrc
echo 'alias b="bat"' >> /root/.bashrc
echo 'alias wh="cat /etc/motd"' >> /root/.bashrc
