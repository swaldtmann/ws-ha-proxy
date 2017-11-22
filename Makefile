# Makefile for pi-stack-ansible-tower-scripts


ev:
	ansible-vault edit group_vars/all/vault

dump:
	ansible -i inventory -m setup all

dumpvars:
	ansible -i inventory -m debug -a 'var=hostvars[inventory_hostname]' all

ping:
	ansible -i inventory all -m ping -u pi

bal:
	ansible-playbook -i inventory balancer.yml -u pi -k
