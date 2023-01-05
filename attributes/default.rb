default['et_fog']['version'] = '1.37.0'
default['et_fog']['dry_inflector_version'] = '0.1.2'
default['et_fog']['faraday_version'] = '1.0.1'
default['et_fog']['fog_aliyun_version'] = '0.3.19'
default['et_fog']['fog_vsphere_version'] = '3.5.1'
default['et_fog']['dependencies'] =
  if platform_family? 'debian'
    %w(libxslt-dev libxml2-dev libghc-zlib-dev)
  elsif platform_family? 'rhel'
    %w(libxslt-devel libxml2-devel)
  end

set['build-essential']['compile_time'] = true
set['apt']['compile_time_update'] = true
