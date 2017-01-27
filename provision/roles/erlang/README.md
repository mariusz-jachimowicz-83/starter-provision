# ansible-erlang

Ansible role to setup Erlang on Ubuntu/Debian using erlang-solutions packages.

You an also easily use this to install Elixir by adding it to the `erlang_extra_packages`.

## Roles Variables

```
# change this to install other packages
erlang_extra_packages: []

elrang_repo_package_url: https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
tmp_dir: /tmp
```
