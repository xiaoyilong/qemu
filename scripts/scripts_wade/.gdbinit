define cls
shell clear
end
document cls
Clears the screen with a simple command.
end

define sargs
set args -m 4096  -boot c -drive format=raw,file=centos.img -smp cpus=4 -vnc :0,to=99,id=default  -enable-kvm
end
document sargs
args: -m 4096  -boot c -drive format=raw,file=centos.img -smp cpus=4 -vnc :0,to=99,id=default  -enable-kvm
end

define args1
set args -monitor tcp:127.0.0.1:4444,server,nowait  -m 4096  -boot c -drive format=raw,file=centos.img -smp cpus=4 -vnc :0,to=99,id=default  -enable-kvm  -netdev tap,id=tap0,script=no,downscript=no -device e1000,netdev=tap0
end
document args1
args: -m 4096  -boot c -drive format=raw,file=centos.img -smp cpus=4 -vnc :0,to=99,id=default  -enable-kvm
end

define printok
set print pretty on
end

