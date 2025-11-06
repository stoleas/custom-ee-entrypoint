#/usr/bin/env bash

source /root/ansible-builder/bin/activate

/usr/bin/git pull && \
    /root/ansible-builder/bin/ansible-builder build --tag stoleas-test-ee:latest && \
    /usr/bin/podman tag localhost/stoleas-test-ee:latest docker.io/stoleas/stoleas-test-ee:latest && \
    /usr/bin/podman push docker.io/stoleas/stoleas-test-ee:latest