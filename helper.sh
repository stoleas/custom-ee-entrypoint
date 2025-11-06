#/usr/bin/env bash

source /root/ansible-buillder/bin/activate

git pull && \
    ansible-builder build --tag stoleas-test-ee:latest && \
    podman tag localhost/stoleas-test-ee:latest docker.io/stoleas/stoleas-test-ee:latest && \
    podman push docker.io/stoleas/stoleas-test-ee:latest