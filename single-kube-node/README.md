openstack stack create \
--template kubemaster.yaml \
--parameter name=kube \
--parameter ssh_key_name=default \
--parameter master_flavor=m1.small \
--parameter fixed_network=357dfedc-7e58-4e15-b169-96d89ef5b160 \
--parameter fixed_subnet=d1d057a8-f91c-4f3c-803f-4e4ad2201008 \
--parameter server_image=c51afe4f-8a52-4fc7-b798-0830e327dfd5 \
kube
