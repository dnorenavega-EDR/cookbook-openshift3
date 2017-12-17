name 'cookbook-openshift3'
maintainer 'ENC4U Ltd'
maintainer_email 'wburton@redhat.com'
license 'MIT'
source_url 'https://github.com/IshentRas/cookbook-openshift3'
issues_url 'https://github.com/IshentRas/cookbook-openshift3/issues'
description 'Installs/Configures Openshift 3.x (>= 3.2)'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
chef_version '>= 12.4' if respond_to?(:chef_version)
version '1.10.67'
supports 'redhat', '>= 7.1'
supports 'centos', '>= 7.1'

depends 'yum', '>= 3.6.1'
depends 'iptables', '>= 1.0.0'
depends 'selinux_policy'
depends 'docker', '~> 2.0'

recipe 'cookbook-openshift3::default', 'Default recipe'
recipe 'cookbook-openshift3::common', 'Apply common logic'
recipe 'cookbook-openshift3::master', 'Configure basic master logic'
recipe 'cookbook-openshift3::master_standalone', 'Configure standalone master logic'
recipe 'cookbook-openshift3::master_cluster', 'Configure HA cluster master (Only Native method)'
recipe 'cookbook-openshift3::master_config_post', 'Configure Post actions for masters'
recipe 'cookbook-openshift3::nodes_certificates', 'Configure certificates for nodes'
recipe 'cookbook-openshift3::node', 'Configure node'
recipe 'cookbook-openshift3::etcd_cluster', 'Configure HA ETCD cluster'
recipe 'cookbook-openshift3::adhoc_uninstall', 'Adhoc action for uninstalling Openshit from server'
