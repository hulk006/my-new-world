#!/bin/bash
##ssh -l yanghao 192.168.1.48
function myssh {
	expect -c "
	set user yanghao
	set passwd yanghao123
	set remote_ip 192.168.1.48
	spawn ssh \$user@\$remote_ip
	expect {
	"password:" {set timeout 10; send \"\$passwd\r\"}

	}
		interact
	"
}

myssh  
exit
