
execute 'Reload the systemd daemon' do
    command 'sudo systemctl daemon-reload'
    action :run
    not_if { ::File.exist?('/home/ubuntu/tomstart') }
end


execute 'start the Tomcat service' do
    command 'sudo systemctl start tomcat'
    action :run
    not_if { ::File.exist?('/home/ubuntu/tomstart') }
end

execute 'To enable Tomcat starting up with the system' do
    command 'sudo systemctl enable tomcat'
    action :run
    not_if { ::File.exist?('/home/ubuntu/tomstart') }
end

file '/home/ubuntu/tomstart' do
    content 'content'
    mode '0755'
    action :create
end
