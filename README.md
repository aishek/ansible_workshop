## Setup

Need to run only once to eliminate access under root account.

`make setup`
## Run

`make provision`

## Security

`ansible-vault encrypt_string 'secret' --name 'db_password'`

[Full reference](https://docs.ansible.com/ansible/latest/user_guide/vault.html)
## Debug

### Use debugger

```yaml
- name: Execute a command
  apt:
    name: "nano1"
  debugger: on_failed
  tags: test
```

[Debugger Commands](https://docs.ansible.com/ansible/latest/user_guide/playbooks_debugger.html#available-debug-commands)

### Use debug module to output

```yaml
- shell: /usr/bin/uptime
  register: result

- debug:
    var: result

- debug:
    msg:
    - What is this?
    - System {{ inventory_hostname }} has gateway {{ ansible_default_ipv4.gateway }}
```

### Verbose output

`ansible-playbook -i inventory.ini site.yml -v`
`ansible-playbook -i inventory.ini site.yml -vv`
`ansible-playbook -i inventory.ini site.yml -vvv`
`ansible-playbook -i inventory.ini site.yml -vvvv`

### Start at specific task

`ansible-playbook -i inventory.ini site.yml --start-at-task="install packages"`

### Step by Step execution

`ansible-playbook -i inventory.ini site.yml --step`

Follow prompts, or cancel execution via Ctrl+C.
