# Ansinble Jenkins

* Pada tasks install plugin jenkins perlu di bagi beberapa part agar tidak menunggu terlalu lama.

File **hosts**

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


## Aplikasi Yang Terinstall

* docker
* docker-compose
* portainer
* jenkins

## List Presinstall Jenkins Plugin

* ant
* antisamy-markup-formatter
* abuild-timeout
* acloudbees-folder
* aconfiguration-as-code
* acredentials-binding
* aemail-ext
* agit
* agithub-branch-source
* agradle
* aldap
* amailer
* amatrix-auth
* apam-auth
* apipeline-github-lib
* apipeline-stage-view
* assh-slaves
* atimestamper
* aworkflow-aggregator
* aws-cleanup
* agitea
* adocker-plugin
* ablueocean

## Jenkins Config

* URL : IP_Server:8080
* User : admin
* Pass : admin

### Selanjutnya perlu di tambah Nginx sebagai Reserved Proxy agar dapat issue ssl dengan mudah.