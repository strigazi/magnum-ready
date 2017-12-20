#!/bin/sh -ux

if [ -n "$OPENSTACK_CA" ] ; then
    cat >> /etc/pki/ca-trust/source/anchors/openstack-ca.pem <<EOF
$OPENSTACK_CA
EOF
    chmod 444 /etc/pki/ca-trust/source/anchors/openstack-ca.pem
    chown root:root /etc/pki/ca-trust/source/anchors/openstack-ca.pem
    update-ca-trust extract
fi
