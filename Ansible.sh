# Ansible Cheat Sheet

# SSH install
    apt-get install openssh-server

# SSH Key generation
    ssh-keygen

# SSH Key copy 
    ssh-copy-id <server-ip>

# install ansible
    sudo apt-add-repository ppa:ansible/‐ansible
    sudo apt-get update
    sudo apt-get install ansible
    ansible --version

# Ansible ad-hoc command 
# Ping
    ansible –m ping <hosts>

# coping the file 
    ansible <host> -m copy -a 'src=./dosya/ dest=/‐tmp/dosya'

# For creating of deteting the file 
    ansible <hosts> -m file -a'dest=/silinecek/dosyastate=absent
# Playbook file 

    - hosts: all
    become: yes
    tasks:
    - name: edit host file
    lineinfile:
    path: /etc/hosts
    line: "169.168.0.1 ansible.xyzcorp.com"
    - name: install elinks
    package:
    name: elinks
    state: latest
    - name: create audit user
    user:
    name: xyzcorp_audit
    state: present
    - name: update motd
    copy:
    src: /home/ansible/app
    dest: /etc/app

    
# Install Apache
    ansible <host> -m apt -a 'name=apache2 state=present'

# Install Nginx
    ansible <host> -m apt -a 'name=nginx state=present'

# Install mysql
    ansible <host> -m apt -a 'name=mysql-server state=present'

# To install PHP
    ansible <host> -m apt -a 'name=php7.0 state=present'