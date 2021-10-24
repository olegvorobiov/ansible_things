FROM ubuntu
RUN apt-get update && \
    apt-get install software-properties-common -y && \
    add-apt-repository --yes --update ppa:ansible/ansible && \
    apt-get install ansible -y 
RUN sed -i 's/^#inventory .*/inventory = \/inventory\/hosts/g' /etc/ansible/ansible.cfg
RUN mkdir /inventory
