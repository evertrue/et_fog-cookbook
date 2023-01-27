#
# Cookbook Name:: et_fog
# Recipe:: default
#
# Copyright (C) 2013 EverTrue, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if Chef::VersionConstraint.new('< 12.10.0').include? Chef::VERSION
  raise 'This recipe requires Chef version 12.10 or greater'
end

apt_update 'et_fog' do
  action :nothing
end.run_action(:periodic)

include_recipe 'build-essential'

# Dependencies required by nokogiri (for fog)
node['et_fog']['dependencies'].each do |pkg|
  c_pkg = package(pkg)
  c_pkg.run_action(:install)
end

%w(unf rest-client).each do |gem_pkg|
  chef_gem gem_pkg do
    compile_time true if Chef::Resource::ChefGem.method_defined? :compile_time
  end
end

# TODO: Remove this once the gem_hell cookbook is ready to roll

# install dry-inflector with a specific version before installing fog because the fog-brightbox gem is not specifying a specific version of this gem
# and the latest version of dry-inflector requires ruby 2.4 as a minimum
chef_gem 'dry-inflector' do
  compile_time true if Chef::Resource::ChefGem.method_defined? :compile_time
  version node['et_fog']['dry_inflector_version']
end

chef_gem 'fog-aliyun' do
  compile_time true if Chef::Resource::ChefGem.method_defined? :compile_time
  version node['et_fog']['fog_aliyun_version']
end

chef_gem 'fog-vsphere' do
  compile_time true if Chef::Resource::ChefGem.method_defined? :compile_time
  version node['et_fog']['fog_vsphere_version']
end

chef_gem 'webrick' do
  compile_time true if Chef::Resource::ChefGem.method_defined? :compile_time
  version node['et_fog']['webrick_version']
end

chef_gem 'fog' do
  compile_time true if Chef::Resource::ChefGem.method_defined? :compile_time
  version node['et_fog']['version']
end
