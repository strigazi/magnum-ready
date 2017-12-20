openstack stack create \
--template kubemaster.yaml \
--parameter name=kube \
--parameter ssh_key_name=default \
--parameter master_flavor=m1.small \
--parameter fixed_network=5da20aea-16b2-4925-ba30-27e83e05f2a6 \
--parameter fixed_subnet=5f42bc8e-5bcc-49bd-a86a-884f969fa267 \
--parameter server_image=74818118-da3d-47fd-8b75-ff922d9436e3 \
--parameter external_network=public \
--parameter openstack_ca="$OPENSTACK_CA" \
kube
