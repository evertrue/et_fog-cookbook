# CHANGELOG for et_fog

## 4.0.4 (2023-01-05)

* Pin fog-aliyun and fog-vsphere

## 4.0.2 (2019-10-21)

* Pin dry-inflector to 0.1.2 to fix fog gem install

## 4.0.1 (2016-07-15)

* Relax build-essential version constraint to 2.0

## 4.0.0 (2016-06-08)

* Use Chef's built-in apt resource
* Do all testing on EC2

## 3.0.1

* Relax version constraints for `apt` and `build-essential`

## 3.0.0

* Bump apt to ~> 3.0

## 2.0.0

* Bump apt to ~> 3.0
* Bump build-essential to ~> 4.0

## 1.4.0

* Bump Fog gem to 1.37.0
* Add rest-client list of chef_gem dependencies

## 1.3.2

* Add backwards compatibility for Chef < 12.1.0

## 1.3.1

* s/getchef.com/chef.io/
* Remove superfluous dependency on git

## 1.3.0

* Add dependencies for nokogiri on CentOS/RHEL systems
* Attribute-ize nokogiri dependencies to allow wrapper cookbooks more flexibility

## 1.2.2

* Use compile_time property to make gems install at compile_time

## 1.2.1

* Oops. Only Fog can have its version number set.

## 1.2.0

* Add support for a version attribute

## 1.1.3

* Add libghc-zlib-dev to list of pre-installed packages.

## 1.1.2

* Update ec2 ami
* Eliminate resource cloning

## 1.1.1

* Pin dependencies to avoid surprises
* Ensure `apt-get update` runs before all else
    - The `build-essential` cookbook was failing on new Ubuntu 12.04 instances

## 1.1.0

* Clean up Test Kitchen config
* Clean up Berksfile
* Add Travis CI testing

## 1.0.7

* Clean up docs

## 1.0.6

* Functionally identical to v1.0.6, just adds Stove publishing to ease shipping to Supermarket

## 1.0.5

* Install Git, as nokogiri (and thus fog) depend upon it for building native extensions

## 1.0.4

* Give up on apt compile time and do the update ourselves--the cookbook is not actually handling it

## 1.0.3

* Install the 'unf' Gem.

## 1.0.2

* Include the apt cookbook (to make sure update runs)
* Set compile time attributes in attributes instead

## 1.0.1

* First rev!
