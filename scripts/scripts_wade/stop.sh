
ps axu|grep qemu|grep -v grep|awk '{print $2}'|xargs kill -9
ps axu|grep qemu
echo "end stop"
