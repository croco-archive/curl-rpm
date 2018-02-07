rm -rf /root/rpmbuild

rpm -ivh https://mirror.city-fan.org/ftp/contrib/yum-repo/city-fan.org-release-2-1.rhel7.noarch.rpm
yum -y install rpm-build gcc zlib-devel openldap-devel krb5-devel libidn-devel libmetalink-devel libnghttp2-devel nghttp2 libpsl-devel libssh2-devel openssl-devel groff gnutls-utils openssh-clients openssh-server perl-interpreter perl-Digest-MD5 stunnel --enablerepo=city-fan.org
curl -s https://mirror.city-fan.org/ftp/contrib/sysutils/Mirroring/curl-7.58.0-3.0.cf.rhel7.src.rpm -o /tmp/a.rpm
rpmbuild --rebuild /tmp/a.rpm --without nss

cp /root/rpmbuild/RPMS/x86_64/curl-7.58.0-3.0.cf.rhel7.x86_64.rpm /opt/app
cp /root/rpmbuild/RPMS/x86_64/libcurl-7.58.0-3.0.cf.rhel7.x86_64.rpm /opt/app
