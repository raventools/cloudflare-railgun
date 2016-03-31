
template "/etc/railgun/railgun.conf" do
    source "railgun.conf.erb"
    owner "root"
    mode 0644
    variables ({
        :token => node[:cloudflare_railgun][:token],
		:public_name => node[:cloudflare_railgun][:public_name],
		:memcache => node[:cloudflare_railgun][:memcache]
    })
end
