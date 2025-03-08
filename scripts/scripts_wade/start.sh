
#!/bin/bash

if [ "$1" == "debug" ]; then
    echo "Debug mode enabled"
    qemu-system-x86_64 -s -S -m 4096  -boot c -drive format=raw,file=centos.img -smp cpus=4 -vnc :0,to=99,id=default  -enable-kvm &
    # 在这里添加调试模式下要执行的命令
    echo "Executing debug commands..."
else
    echo "Normal mode"
    # 在这里添加正常模式下要执行的命令
    qemu-system-x86_64 -monitor tcp:127.0.0.1:4444,server,nowait  -m 4096  -boot c -drive format=raw,file=centos.img -smp cpus=4 -vnc :0,to=99,id=default  -enable-kvm  -netdev tap,id=tap0,script=no,downscript=no -device e1000,netdev=tap0 &
    echo "Executing normal commands..."
fi
