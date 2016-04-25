#!/usr/bin/env bash

function cidr2iprange {
	nmap -nsL $1 | grep 'Nmap scan report for' | awk 'NR==1 {print $5}; END {print $5}'
}

function crt2pem {
	openssl x509 -in ${1} -inform DES -out $(echo ${1} | sed 's/crt/pem/') -outform PEM
}

function hosts {
        for arg in ${@}
        do
                host ${arg}
        done
}

function set-title {
	PROMPT_COMMAND='echo -ne "\033]0;'$*'\007"'
}

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
