#!/bin/bash

#Docker hub pessoal
sudo docker build . -t romariodevsecops/testdockerks:v1

#Docker Registry na GCP
sudo docker build . -t gcr.io/rosana-devops-iac/testdockerks:1.0
sudo docker build . -t gcr.io/rosana-devops-iac/testdockerks:blue
sudo docker push gcr.io/rosana-devops-iac/testdockerks:blue

#Uma nova TAG
sudo docker build . -t gcr.io/rosana-devops-iac/testdockerks:green
sudo docker push gcr.io/rosana-devops-iac/testdockerks:green
