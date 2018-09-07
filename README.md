Ansible Role: libressl(src)
================================================================================
Build and install LibreSSL from a source code

- Build LibreSSL from a source code at /usr/local/src
- Install LibreSSL into /opt/libressl

Requirements
--------------------------------------------------------------------------------
None.

Role Variables
--------------------------------------------------------------------------------
The following variables are defined in defaults/main.yml file.

```yaml
libressl:
  rebuild: false
  version: "2.7.4"
  install: "/opt/libressl"
  workingdir: "/usr/local/src"
```

Dependencies
--------------------------------------------------------------------------------
None.

Example Playbook
--------------------------------------------------------------------------------
```yaml
- hosts: all
  roles:
    - { role: azumakuniyuki.ar-libressl-src, libressl.version: "2.8.0" }
```

License
--------------------------------------------------------------------------------
BSD

Author Information
--------------------------------------------------------------------------------
[azumakuniyuki](https://nyaan.jp/)

