#!/bin/bash 

ROLE_PATH=/home/ec2-user/ansible/roles
ROLE_NAME=$1

if [ -z "$ROLE_NAME" ];then
    echo "Role Name is required as argument"
    exit 1
fi

if [ -d "$ROLE_PATH/$ROLE_NAME" ]; then 
    echo "Role already exists"
    exit 
fi

mkdir -p $ROLE_PATH/$ROLE_NAME/{tasks,handlers,files,templates,vars,meta}
cd $ROLE_PATH/$ROLE_NAME/
touch tasks/main.yml handlers/main.yml vars/main.yml meta/main.yml
echo "Role created successfully"