#!/bin/bash
INSTANCE_ID="i-007050e336adcee88"
aws ec2 stop-instances --instance-ids $INSTANCE_ID
echo "Waiting for the instance to stop..."
aws ec2 wait instance-stopped --instance-ids $INSTANCE_ID
echo "Instance stopped."