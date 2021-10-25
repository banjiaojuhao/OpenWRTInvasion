# run this command in nc server
mkdir /tmp/mtd

dd if=/dev/mtd0 of=/tmp/mtd/mtd0.bin
dd if=/dev/mtd1 of=/tmp/mtd/mtd1.bin
dd if=/dev/mtd2 of=/tmp/mtd/mtd2.bin
dd if=/dev/mtd3 of=/tmp/mtd/mtd3.bin
dd if=/dev/mtd4 of=/tmp/mtd/mtd4.bin
dd if=/dev/mtd5 of=/tmp/mtd/mtd5.bin
dd if=/dev/mtd6 of=/tmp/mtd/mtd6.bin
dd if=/dev/mtd7 of=/tmp/mtd/mtd7.bin
dd if=/dev/mtd8 of=/tmp/mtd/mtd8.bin
dd if=/dev/mtd9 of=/tmp/mtd/mtd9.bin
dd if=/dev/mtd10 of=/tmp/mtd/mtd10.bin
dd if=/dev/mtd11 of=/tmp/mtd/mtd11.bin

curl http://192.168.31.217/start_ftpd.sh | sh

# then download backup mtd

curl -L "http://192.168.31.217/breed.bin" --output /tmp/breed.bin
mtd write /tmp/breed.bin Bootloader