package "memcached"

template "/etc/sysconfig/memcached" do
    source "memcached.erb"
    owner "root"
    mode 0644
    variables ({
        :max_conn => node[:cloudflare_railgun][:memcached_max_conn],
		:max_mem => node[:cloudflare_railgun][:memcached_max_mem],
		:socket => node[:cloudflare_railgun][:memcached_socket]
    })
end

service "memcached" do
    action [ :enable, :start ]
end