#!/bin/sh

EXCUSES=(
  'Locked out'
  'Pipes broke'
  'Food poisoning'
  'Not feeling well'
)
rand=$[ $RANDOM % ${#EXCUSES[@]} ]

# Dev random is being called and the % is a modulus that limits the randomness to the variables in Excuses
# The # retrieves elements from the array.:wq


RANDOM_EXCUSE=${EXCUSES[$rand]}
MESSAGE="Gonna work from home. "$RANDOM_EXCUSE


echo $MESSAGE
