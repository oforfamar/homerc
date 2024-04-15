# homerc

my ~/.bashrc

also other usefull stuff for linux

Use the following bash command to download and install the script in a LInux machine of your choice:

```
curl -L https://github.com/oforfamar/homerc/raw/main/send_ip_ntfy.sh -o /usr/local/bin/send_ip_ntfy.sh && chmod +x /usr/local/bin/send_ip_ntfy.sh && echo -e "[Unit]\nDescription=Send IP and hostname notification via ntfy\nAfter=network.target\n\n[Service]\nType=oneshot\nExecStart=/usr/local/bin/send_ip_ntfy.sh\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/send_ip_ntfy.service && systemctl daemon-reload && systemctl enable send_ip_ntfy.service && systemctl start send_ip_ntfy.service
```
