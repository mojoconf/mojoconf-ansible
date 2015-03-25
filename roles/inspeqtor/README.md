# inspeqtor [![Build Status](https://travis-ci.org/alv-ch-ansible-roles/inspeqtor.svg?branch=master)](https://travis-ci.org/alv-ch-ansible-roles/inspeqtor)

This [Ansible role](http://docs.ansible.com/playbooks_roles.html#roles) installs and configures [Inspeqtor](https://github.com/mperham/inspeqtor) monitoring tool.

**WARNING:** This development repository is still in Alpha phase (unstable and uncomplete).

## Requirements

* A GNU/Linux distribution with 64-bit linux kernel 3.0+ and support of [Upstart](http://en.wikipedia.org/wiki/Upstart).
* Support of [APT](http://en.wikipedia.org/wiki/Advanced_Packaging_Tool) or [YUM](http://en.wikipedia.org/wiki/Yellowdog_Updater,_Modified) package management.

## Role Variables

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

## Dependencies

No other Ansible roles are required to use `inspeqtor` role.

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: alv-ch.inspeqtor,
             inspeqtor_email_sender: inspeqtor@yourdomain.com,
             inspeqtor_email_recipient: yourguys@yourdomain.com
           }

## License

MIT

## Author Information

- [Gilles Cornu](https://github.com/gildegoma)

## Contributing

Of course, your help to improve this Ansible role is more than welcome!
Please follow the [the contribution guide](https://github.com/alv-ch-ansible-roles/inspeqtor/blob/master/CONTRIBUTING.md).

