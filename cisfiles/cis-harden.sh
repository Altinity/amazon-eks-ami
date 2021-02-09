cp -p /tmp/cisfiles/profile /etc/
cp -p /tmp/cisfiles/bashrc /etc/
cp -p /tmp/cisfiles/login.defs /etc/
cp -p /tmp/cisfiles/system-auth /etc/pam.d
cp -p /tmp/cisfiles/password-auth /etc/pam.d
cp -p /tmp/cisfiles/su /etc/pam.d
cp -p /tmp/cisfiles/sshd_config /etc/ssh/
#
echo "* hard core 0" >>/etc/security/limits.conf
echo "fs.suid_dumpable = 0">>/etc/sysctl.conf 
echo "net.ipv4.ip_forward = 0" >> /etc/sysctl.conf 
echo "net.ipv6.conf.all.forwarding = 0" >> /etc/sysctl.conf 
echo "net.ipv4.conf.all.send_redirects = 0" >>/etc/sysctl.conf 
echo "net.ipv4.conf.default.send_redirects = 0" >>/etc/sysctl.conf
echo "net.ipv4.icmp_echo_ignore_broadcasts = 1" >>/etc/sysctl.conf
echo "net.ipv4.conf.all.accept_source_route = 0">>/etc/sysctl.conf
echo "net.ipv4.conf.default.accept_source_route = 0" >>/etc/sysctl.conf
echo "net.ipv6.conf.all.accept_source_route = 0" >>/etc/sysctl.conf
echo "net.ipv6.conf.default.accept_source_route = 0" >>/etc/sysctl.conf
echo "kernel.randomize_va_space = 2" >>/etc/sysctl.conf
echo "net.ipv4.conf.all.log_martians = 1"  >>/etc/sysctl.conf
echo "net.ipv4.conf.default.log_martians = 1" >>/etc/sysctl.conf
echo "net.ipv4.conf.all.secure_redirects = 0" >>/etc/sysctl.conf
echo "net.ipv4.conf.default.secure_redirects = 0"  >>/etc/sysctl.conf
echo "net.ipv4.conf.all.rp_filter = 1" >>/etc/sysctl.conf
echo "net.ipv4.conf.default.rp_filter = 1">>/etc/sysctl.conf
echo "net.ipv6.conf.all.accept_ra = 0" >>/etc/sysctl.conf
echo "net.ipv6.conf.default.accept_ra = 0">>/etc/sysctl.conf
echo "net.ipv4.icmp_ignore_bogus_error_responses = 1">>/etc/sysctl.conf
echo "net.ipv4.tcp_syncookies = 1">>/etc/sysctl.conf 
echo "net.ipv4.conf.all.accept_redirects = 0" >>/etc/sysctl.conf
echo "net.ipv4.conf.default.accept_redirects = 0" >>/etc/sysctl.conf
echo "net.ipv6.conf.all.accept_redirects = 0" >>/etc/sysctl.conf
echo "net.ipv6.conf.default.accept_redirects = 0">>/etc/sysctl.conf
# 
chown root:root /etc/cron.daily ;  chmod og-rwx /etc/cron.daily ; chown root:root /etc/cron.weekly ;  chmod og-rwx /etc/cron.weekly ; update-motd --disable
chown root:root /etc/cron.d; chmod og-rwx /etc/cron.d
chown root:root /etc/crontab; chmod og-rwx /etc/crontab ; chown root:root /etc/cron.hourly;  chmod og-rwx /etc/cron.hourly
chown root:root /etc/cron.monthly; chmod og-rwx /etc/cron.monthly
rm -f /etc/cron.deny ; rm -f /etc/at.deny ; touch /etc/cron.allow ; touch /etc/at.allow; chmod og-rwx /etc/cron.allow ; chmod og-rwx /etc/at.allow ; chown root:root /etc/cron.allow ; chown root:root /etc/at.allow 
chown root:root /boot/grub2/grub.cfg; chmod og-rwx /boot/grub2/grub.cfg 
#
echo "-w /etc/localtime -p wa -k time-change">>/etc/audit/rules.d/audit.rules
echo "-w /etc/group -p wa -k identity" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/passwd -p wa -k identity" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/gshadow -p wa -k identity" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/shadow -p wa -k identity" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/security/opasswd -p wa -k identity" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/issue -p wa -k system-locale" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/issue.net -p wa -k system-locale" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/hosts -p wa -k system-locale" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/sysconfig/network -p wa -k system-locale" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/sysconfig/network-scripts/ -p wa -k system-locale" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/sudoers -p wa -k scope" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/sudoers.d/ -p wa -k scope">>/etc/audit/rules.d/audit.rules
echo "-w /var/log/sudo.log -p wa -k actions">>/etc/audit/rules.d/audit.rules
echo "-w /var/log/lastlog -p wa -k logins" >>/etc/audit/rules.d/audit.rules
echo "-w /var/run/faillock/ -p wa -k logins" >>/etc/audit/rules.d/audit.rules
echo "-e 2">>/etc/audit/rules.d/audit.rules
#
echo "Property of Altinity ; only proceed with a legitimate business need" > /etc/motd
