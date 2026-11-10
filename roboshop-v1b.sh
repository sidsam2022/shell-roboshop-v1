#!/bin/bash

ami_id="ami-0055977a6e828a4f4"
instance_type="t3.micro"
domain_name="sidsam.space"
hosted_zone_id="Z06888013STZLT6KB0E37"

for instance in $@ 
do
    echo "creating instance: $instance"
    instance_id=$(aws ec2 run-instances --image-id ami-0055977a6e828a4f4 --instance-type t3.micro --security-groups "roboshop-common" "roboshop-$instance" --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=roboshop-common}]' --query 'Instances[0].{ID:InstanceId,Type:InstanceType,State:State.Name,Image:ImageId}' --output text)

echo "$instance is created"

done


