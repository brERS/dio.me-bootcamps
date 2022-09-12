#!/bin/bash
sudo docker swarm init --advertise-addr=172.18.0.100
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh