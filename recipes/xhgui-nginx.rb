include_recipe "nginx"

include_recipe "chef-xhprof-gui::xhgui"

nginx_site do

end

log " You can now access XHGui at #{node['xhprof']['hostname']} #{node['fqdn']}"

# web_app node['xhprof']['hostname'] do
#   server_name node['xhprof']['hostname']
#   apache node['apache']
#   server_aliases [node['fqdn']]
#   docroot "#{node['xhprof']['install_path']}/xhprof_html"
# end