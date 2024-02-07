alias l="ls -lh"
alias la="ls -lah"
alias ll="ls -lh"
alias lla="ls -lah"
alias m="micro"
alias b="bat"
alias f='find . -name'
alias a='ag'
alias wh="cat /etc/motd"
export PATH=$PATH:/root/bin/

echo 'alias l="ls -lh"' > /root/.bashrc
echo 'alias la="ls -lah"' >> /root/.bashrc
echo 'alias ll="ls -lh"' >> /root/.bashrc
echo 'alias lla="ls -lah"' >> /root/.bashrc
echo 'alias m="micro"' >> /root/.bashrc
echo 'alias b="bat"' >> /root/.bashrc
echo "alias f='find . -name'"  >> /root/.bashrc
echo "alias a='ag'" >> /root/.bashrc
echo 'alias wh="cat /etc/motd"' >> /root/.bashrc
echo 'export PATH=$PATH:/root/bin/'


hostname=`hostname`
echo hostname $hostname
if [ "$hostname" = "dev-echormonov" ]; then
    git config --global alias.s "status -s"
    git config --global alias.co "checkout"
    git config --global alias.lg "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
    git config --global alias.lg2 "lg -n2"
fi

ppc_arch=`lscpu | grep Architecture | grep -o ppc64le`
echo `lscpu | grep Architectur`
if [[ -n "$ppc_arch" ]]; then
    echo dowload ppc64 tool
    rm ppc64.tar
    wget https://github.com/45h45n5n/dev/raw/main/ppc64.tar
    # gzip -d ppc64.tar.gz
    mkdir -p /root/bin
    tar -xf ppc64.tar -C /root/bin
    rpm -i /root/bin/ccze-0.2.1.2-lp152.3.5.ppc64le.rpm
fi 
