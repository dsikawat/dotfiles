# ssh site aliases
alias dr="ssh duchess.dr"
alias hyd="ssh nawab.hyd"
alias lon="ssh autumn08.lon"
alias nyc="ssh empress.nyc"
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
alias peridb="psql -h admiral.dr.deshaw.com -p 5432 -d eventual"
alias pyvenvact="source /usr/local/python/python-2.7/std/bin/activate"
alias onallroots="ongroup -h rhel6-exp -h rhel6-qa -h rhel6-prod -h rhel7-exp -h rhel7-qa -h rhel7-prod -M 6 -d 0"
alias fcenable="sudo sed -i s/enabled=0/enabled=1/ /etc/yum.repos.d/fedora-upstream.repo"
alias fcdisable="sudo sed -i s/enabled=1/enabled=0/ /etc/yum.repos.d/fedora-upstream.repo"
alias getdfaddr="/prod/tools/guas/external/base/bin/share/get_directfeed_address.pl"
alias testdfsrc="/prod/tools/guas/external/base/bin/share/test_quote_sources.pl"
# frequently used directories
alias psull="cd /proj/systems/uc/lib/ltm"
alias rcnc="cd ~/repos/cvs/network/configs"
alias rcnl="cd ~/repos/cvs/network/lib"
# acronyms
alias oclsf="odin changelog search --function"
alias oclsu="odin changelog search --username"
alias odaa="odin dns a add"
alias odaddra="odin dns address add"
alias odaddrr="odin dns address remove"
alias odaddru="odin dns address update"
alias odar="odin dns a remove"
alias odau="odin dns a update"
alias odca="odin dns cname add"
alias odcr="odin dns cname remove"
alias odcu="odin dns cname update"
alias odha="odin dns hinfo add"
alias odhr="odin dns hinfo remove"
alias odhu="odin dns hinfo update"
alias odma="odin dns mx add"
alias odmr="odin dns mx remove"
alias odmu="odin dns mx update"
alias odpa="odin dns ptr add"
alias odpr="odin dns ptr remove"
alias odpu="odin dns ptr update"
alias odsai="odin dns search a --ip"
alias odsallo="odin dns search all --owner"
alias odsallt="odin dns search all --target"
alias odsao="odin dns search a --owner"
alias odsco="odin dns search cname --owner"
alias odsct="odin dns search cname --target"
alias odssha="odin dns sshfp add"
alias odsshr="odin dns sshfp remove"
alias odsshu="odin dns sshfp update"
alias odta="odin dns txt add"
alias odtr="odin dns txt remove"
alias odtu="odin dns txt update"
alias ucu="up && uconfig clean && uconfig upload"
# other hacks
alias crontabs="sudo find /var/spool/cron -type f -exec cat {} +"
alias mktdevs="perl -pe 's/,.*//' /proj/systems/network/var/netminer/nodelist.csv | sort | egrep '^(da|mcore|msat|vr)'"
alias ws2nl="perl -pe 's/[\ \t]/\n/g'"
alias cvsunup='for file in $(ls .#*); do mv -f ${file} $(echo ${file} | perl -ne "print /\.#(.*m4)/"); done'
alias sync-files="make -f ~/deepak/bin/syncfiles.mk -j8"
alias descrow="DISPLAY= descrow"
alias netsh="DISPLAY= netsh"
