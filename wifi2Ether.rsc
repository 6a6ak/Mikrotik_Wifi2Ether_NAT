/interface wireless set wlan1 mode=station ssid="SSID" security-profile=default
/interface wireless security-profiles set default mode=dynamic-keys authentication-types=wpa2-psk wpa-pre-shared-key="PASSWORD" wpa2-pre-shared-key="PASSWORD"
/interface wireless enable wlan1
/ip dhcp-client add interface=wlan1 disabled=no
/ip address add address=192.168.88.1/24 interface=ether1
/ip pool add name=dhcp_pool ranges=192.168.88.2-192.168.88.254
/ip dhcp-server add name=dhcp1 interface=ether1 address-pool=dhcp_pool disabled=no
/ip dhcp-server network add address=192.168.88.0/24 gateway=192.168.88.1 dns-server=8.8.8.8,8.8.4.4
/ip firewall nat add chain=srcnat out-interface=wlan1 action=masquerade
/system script add name=save_config source="/system backup save name=router_backup"
/system script run save_config
