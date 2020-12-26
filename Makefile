setup: install_deps setup_servers

install_deps:
	ansible-galaxy install -f -r requirements.yml

setup_servers:
	ansible-playbook -i inventory.ini setup.yml

provision:
	ansible-playbook -i inventory.ini --vault-password-file vault_password site.yml

list_tasks:
	ansible-playbook -i inventory.ini site.yml --list-tasks

list_tags:
	ansible-playbook -i inventory.ini site.yml --list-tags

gather_facts:
	ansible -i inventory.ini -m ansible.builtin.setup

inventory_inspect:
	ansible-inventory -i inventory.ini --vars --graph
