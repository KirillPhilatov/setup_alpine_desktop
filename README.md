Role Name
=========

Customize alpine for convenient desktop usage.

Requirements
------------

Install Python.

Enable edge repositories (including testing).

Role Variables
--------------

doas_path: path to doas.conf

pkgs: packages to be installed

user: main user for setup

Dependencies
------------

Example Playbook
----------------

    - hosts: alpine
	  gather_facts: false
      roles:
         - setup_alpine_desktop

License
-------

BSD

Author Information
------------------

t.me/daily_sysadmin
