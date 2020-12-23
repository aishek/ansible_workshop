## Inspect the inventory

    ansible-inventory -i inventory.ini --vars --graph

## Predict playbook changes

    ansible-playbook -i inventory.ini -C site.yml

## Verbose output

    ansible-playbook -i inventory.ini -C -vvv site.yml

## Run

    ansible-playbook -i inventory.ini site.yml
