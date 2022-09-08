# Ansinble Jenkins

* Pada tasks install plugin jenkins perlu di bagi beberapa part agar tidak menunggu terlalu lama.


**Perintah** :
```
ansible-playbook playbook.yaml
```

File **hosts**

```
[linux]
103.30.xxx.xxx

[linux:vars]
domain=ansible2.domain.com
email=email@domain.com

ansible_connection=ssh  
ansible_user=ubuntu
ansible_ssh_private_key_file=~/.ssh/id_rsa

#ansible_user=root
#ansible_ssh_pass=xxxx
```

## Aplikasi Yang Terinstall

* docker
* docker-compose
* portainer
* jenkins
* nginx
* certbot

## List Presinstall Jenkins Plugin

* ant
* antisamy-markup-formatter
* build-timeout
* cloudbees-folder
* configuration-as-code
* credentials-binding
* email-ext
* git
* github-branch-source
* gradle
* ldap
* mailer
* matrix-auth
* pam-auth
* pipeline-github-lib
* pipeline-stage-view
* ssh-slaves
* timestamper
* workflow-aggregator
* ws-cleanup
* gitea
* docker-plugin
* blueocean

## Jenkins Config

* URL : https://domain.com
* User : admin
* Pass : admin
