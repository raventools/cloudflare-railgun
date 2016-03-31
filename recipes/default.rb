
include_recipe "cloudflare_railgun::install"
include_recipe "cloudflare_railgun::configure"

service "railgun" do
	action [ :enable, :start ]
end
