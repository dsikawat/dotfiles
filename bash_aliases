# everytime options
alias grep="grep --color=auto --exclude-dir=.svn"
alias ls="ls -h --color=auto"
alias ll="ls -l"
alias la="ll -a"
alias mkdir="mkdir -p"
alias ps="ps f"
alias ssh="ssh -A"
# not everytime options
alias cert2text="openssl x509 -noout -text -in"
alias kurl="curl --negotiate -u :"
alias lgrep="la | grep -i"
alias untar="tar -vxzf"
# multi-piped utilities
alias leastfirst="sort | uniq -c | sort"
alias mostfirst="sort | uniq -c | sort -r"
alias mqbyrecp="mailq | grep @ | grep -v : | mostfirst"
alias mqbysend="mailq | grep @ | grep : | awk '{print \$7}' | mostfirst"
# too lazy to type type aliases
alias tpwd="basename `pwd`"
alias fcenable="sudo sed -i s/enabled=0/enabled=1/ /etc/yum.repos.d/fedora-upstream.repo"
alias fcdisable="sudo sed -i s/enabled=1/enabled=0/ /etc/yum.repos.d/fedora-upstream.repo"
# other hacks
alias crontabs="sudo find /var/spool/cron -type f -exec cat {} +"
alias ws2nl="perl -pe 's/[\ \t]/\n/g'"
