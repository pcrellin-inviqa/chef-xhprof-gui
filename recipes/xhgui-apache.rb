include_recipe "apache2"
include_recipe "apache2::mod_php5"

include_recipe "chef-xhprof-gui::xhgui"

web_app node['xhprof']['hostname'] do
  server_name node['xhprof']['hostname']
  apache node['apache']
  server_aliases [node['fqdn']]
  docroot "#{node['xhprof']['install_path']}/xhprof_html"
end

log " You can now access XHGui at #{node['xhprof']['hostname']} #{node['fqdn']}"