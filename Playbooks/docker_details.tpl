[docker_servers]
testserver01 ansible_port=22 ansible_host=${testserver01}  ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem 
testserver02 ansible_port=22 ansible_host=${testserver02}  ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem 
testserver03 ansible_port=22 ansible_host=${testserver03}  ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem 
testserver04 ansible_port=22 ansible_host=${testserver04}  ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem 
testserver05 ansible_port=22 ansible_host=${testserver05}  ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem 

[docker_master]
testserver01 ansible_port=22 ansible_host=${testserver01} ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem 

[docker_workers]
testserver04 ansible_port=22 ansible_host=${testserver04} ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem 
testserver05 ansible_port=22 ansible_host=${testserver05} ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem 

[docker_managers]
testserver02 ansible_port=22 ansible_host=${testserver02} ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem 
testserver03 ansible_port=22 ansible_host=${testserver03} ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem 