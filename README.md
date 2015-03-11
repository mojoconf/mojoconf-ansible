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

## Deploy new version of MCT

1. Make changes
2. Push changes to github
3. Log into the server
4. Run `deploy development` to update development to master branch
5. Check https://test.mojoconf.com/
6. Run `deploy production` to update production to master branch
7. Check https://www.mojoconf.com/

See also [deploy source](https://github.com/mojoconf/mojoconf-ansible/blob/master/roles/mct/files/deploy)
or run `deploy` for more options.

Note: Any changes done directly on the mct server will be wiped.

## Clear cache from cloudflare

* [How do I purge my cache?](https://support.cloudflare.com/hc/en-us/articles/200169246-How-do-I-purge-my-cache-)
* [How do I purge a single file from cache?](https://support.cloudflare.com/hc/en-us/articles/200169386-How-do-I-purge-a-single-file-from-cache-)

## Make SSL key/cert

    openssl genrsa -out mojoconf.key 4096

    openssl req -new -sha256 -x509 -extensions v3_ca -days 365 \
      -key mojoconf.key -out mojoconf.crt \
      -subj /C=NO/ST=Oslo/L=Oslo/O=Mojoconf/CN=mojoconf.com

## Author

Marcus Ramberg

Jan Henning Thorsen
