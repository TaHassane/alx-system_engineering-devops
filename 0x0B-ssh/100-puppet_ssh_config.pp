#!/usr/bin/env bash
# Make changes to the configuration file

file {' ect/ssh/ssh_config':
	ensure => present,
content =>"
	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentification no
	",

}
