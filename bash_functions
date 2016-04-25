#!/usr/bin/env bash

function alllocalmwtest {
	ongroup -h global-eventual-api-hosts \
		-c 'eventual --middleware ${HOST}:20082/services/EventUAL \
			--agent sikawat-test \
			--alert-handle sikawat-test \
			--alert-msg testing \
			--alert-severity 1 \
			--alert-class test'
}

function crt2pem {
	openssl x509 -in ${1} -inform DES -out $(echo ${1} | sed 's/crt/pem/') -outform PEM
}

function gen-gimme-cert {
	get-certificate ${1} --sans ${1} --format combined "gimme certificate for ${1}"
}

function hosts {
        for arg in ${@}
        do
                host ${arg}
        done
}

function lblookup {
        for record in ${@}
        do
                ssh lb1-query lookup ${record}
        done
}

#function netsh {
#	if [[ ${#} -eq 1 ]]; then
#		echo -ne ${E_ESC}${1}${E_BEL}
#	fi
#	args=""
#	for arg in "${@}"; do
#		[[ ! ${arg} =~ [[:space:]] ]] && args+=" ${arg}" && continue
#		args+=" '${arg}'"
#	done
#	/usr/sbin/netsh ${args}
#}

function up {
        if ! git status 2>&1 | grep -q "Not a git repository"; then
                git pull
        elif ! svn -v status 2>&1 | grep -q "is not a working copy"; then
                svn update
        elif ! cvs status 2>&1 | grep -q "No CVSROOT specified"; then
                cvs update -ACPdR
        else
                echo "Not a git/svn/cvs working directory"
        fi
}

function cidr2iprange {
	nmap -nsL $1 | grep 'Nmap scan report for' | awk 'NR==1 {print $5}; END {print $5}'
}

function set-title {
	PROMPT_COMMAND='echo -ne "\033]0;'$*'\007"'
}
