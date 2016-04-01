name             'cloudflare_railgun'
maintainer       'RavenTools'
maintainer_email 'devops@raventools.com'
license          'All rights reserved'
description      'Installs/Configures  Cloudflare railgun'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'


recipe "cloudflare_railgun::default", "install and configure railgun"
recipe "cloudflare_railgun::install", "install railgun"
recipe "cloudflare_railgun::configure", "configure railgun"
recipe "cloudflare_railgun::memcached", "install and configure memcached"

attribute "coudflare_railgun",
	:display_name => "Cloudflare railgun",
	:type => "hash"

attribute "cloudflare_railgun/token",
	:display_name => "Cloudflare Token",
	:description => "Cloudflare railgun activation token",
	:required => "required",
	:type => "string",
	:recipes => ["cloudflare_railgun::default","cloudflare_railgun::configure"]

attribute "cloudflare_railgun/public_name",
	:display_name => "Public name",
	:description => "The public ip or host name of the instance/cluster",
	:required => "required",
	:type => "string",
	:recipes => ["cloudflare_railgun::default","cloudflare_railgun::configure"]

attribute "cloudflare_railgun/memcache",
	:display_name => "Memcache cloudflare config",
	:description => "Memcache configuration for cloudflare",
	:required => "required",
	:type => "string",
	:recipes => ["cloudflare_railgun::default","cloudflare_railgun::configure"]

attribute "cloudflare_railgun/memcached_port",
	:display_name => "Memcache port for memcached",
	:description => "Memcache port for memcached",
	:required => "recommended",
	:type => "string",
	:recipes => ["cloudflare_railgun::memcached"], 
	:default => "11211"

attribute "cloudflare_railgun/memcached_user",
	:display_name => "Memcache user for memcached",
	:description => "Memcache user for memcached",
	:required => "recommended",
	:type => "string",
	:recipes => ["cloudflare_railgun::memcached"], 
	:default => "memcached"

attribute "cloudflare_railgun/memcached_max_conn",
	:display_name => "max connectionsfor memcached",
	:description => "max connections for memcached",
	:required => "recommended",
	:type => "string",
	:recipes => ["cloudflare_railgun::memcached"], 
	:default => "4096"

attribute "cloudflare_railgun/memcached_max_mem",
	:display_name => "max memory in mb memcached",
	:description => "max memory in mb memcached",
	:required => "recommended",
	:type => "string",
	:recipes => ["cloudflare_railgun::memcached"], 
	:default => "900"

attribute "cloudflare_railgun/memcached_socket",
	:display_name => "memcached socket path",
	:description => "memcached socket path",
	:required => "recommended",
	:type => "string",
	:recipes => ["cloudflare_railgun::memcached"], 
	:default => ""

