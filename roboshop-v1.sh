#!/bin/bash

ami_id="ami-0055977a6e828a4f4"
instance_type="t3.micro"
domain_name=""sidsam.space
hosted_zone_id="Z06888013STZLT6KB0E37"

for instance $@ 
do
    echo "creating instance: $instance" 
done


