# Mojoconf ansible playbook

## How to run it

To check for changes:

    $ ansible-playbook -s -i inventory mojoconf.yml -C

To deploy:

    $ ansible-playbook -s -i inventory mojoconf.yml

To deploy parts of the playbook:

    $ ansible-playbook -s -i inventory mojoconf.yml -t nginx
    $ ansible-playbook -s -i inventory mojoconf.yml -t webapp

## Set private variables

    $ $EDITOR .vault_pass # add the vault password
    $ ansible-vault edit group_vars/mojoconf

## Author

Marcus Ramberg

Jan Henning Thorsen
