# docker-java - a Docker container having Oracle Java JDK

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-java/

# EXAMPLE

```
$ make
docker run --rm mcandre/docker-java:2 sh -c 'strace javac -version 2>&1'
execve("/jdk1.2.2/bin/i386/green_threads/javac", ["javac", "-version"], [/* 10 vars */]) = 0
[ Process PID=8 runs in 32 bit mode. ]
brk(0)                                  = 0x8e4a000
access("/etc/ld.so.nohwcap", F_OK)      = -1 ENOENT (No such file or directory)
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0xfffffffff7752000
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/tls/i686/sse2/cmov/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/tls/i686/sse2/cmov", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/tls/i686/sse2/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/tls/i686/sse2", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/tls/i686/cmov/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/tls/i686/cmov", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/tls/i686/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/tls/i686", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/tls/sse2/cmov/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/tls/sse2/cmov", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/tls/sse2/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/tls/sse2", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/tls/cmov/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/tls/cmov", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/tls/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/tls", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/i686/sse2/cmov/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/i686/sse2/cmov", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/i686/sse2/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/i686/sse2", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/i686/cmov/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/i686/cmov", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/i686/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/i686", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/sse2/cmov/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/sse2/cmov", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/sse2/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/sse2", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/cmov/libhpi.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/green_threads/cmov", 0xffa340d0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/green_threads/libhpi.so", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\240\203\0\0004\0\0\0"..., 512) = 512
fstat64(3, {st_mode=S_IFREG|0644, st_size=98600, ...}) = 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0xfffffffff7751000
mmap2(NULL, 87792, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0xfffffffff773b000
mmap2(0xf774f000, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x13000) = 0xfffffffff774f000
mmap2(0xf7750000, 1776, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0xfffffffff7750000
close(3)                                = 0
open("/jdk1.2.2/jre/lib/i386/green_threads/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/tls/i686/sse2/cmov/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/tls/i686/sse2/cmov", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/tls/i686/sse2/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/tls/i686/sse2", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/tls/i686/cmov/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/tls/i686/cmov", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/tls/i686/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/tls/i686", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/tls/sse2/cmov/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/tls/sse2/cmov", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/tls/sse2/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/tls/sse2", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/tls/cmov/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/tls/cmov", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/tls/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/tls", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/i686/sse2/cmov/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/i686/sse2/cmov", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/i686/sse2/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/i686/sse2", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/i686/cmov/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/i686/cmov", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/i686/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/i686", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/sse2/cmov/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/sse2/cmov", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/sse2/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/sse2", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/cmov/libjvm.so", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/jdk1.2.2/jre/lib/i386/classic/cmov", 0xffa340b0) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/libjvm.so", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\20@\2\0004\0\0\0"..., 512) = 512
fstat64(3, {st_mode=S_IFREG|0644, st_size=648729, ...}) = 0
mmap2(NULL, 532204, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0xfffffffff76b9000
mmap2(0xf7737000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x7d000) = 0xfffffffff7737000
mmap2(0xf7739000, 7916, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0xfffffffff7739000
close(3)                                = 0
open("/jdk1.2.2/jre/lib/i386/green_threads/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/lib32/tls/i686/sse2/cmov/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/tls/i686/sse2/cmov", 0xffa34090) = -1 ENOENT (No such file or directory)
open("/lib32/tls/i686/sse2/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/tls/i686/sse2", 0xffa34090) = -1 ENOENT (No such file or directory)
open("/lib32/tls/i686/cmov/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/tls/i686/cmov", 0xffa34090) = -1 ENOENT (No such file or directory)
open("/lib32/tls/i686/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/tls/i686", 0xffa34090)   = -1 ENOENT (No such file or directory)
open("/lib32/tls/sse2/cmov/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/tls/sse2/cmov", 0xffa34090) = -1 ENOENT (No such file or directory)
open("/lib32/tls/sse2/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/tls/sse2", 0xffa34090)   = -1 ENOENT (No such file or directory)
open("/lib32/tls/cmov/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/tls/cmov", 0xffa34090)   = -1 ENOENT (No such file or directory)
open("/lib32/tls/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/tls", 0xffa34090)        = -1 ENOENT (No such file or directory)
open("/lib32/i686/sse2/cmov/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/i686/sse2/cmov", 0xffa34090) = -1 ENOENT (No such file or directory)
open("/lib32/i686/sse2/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/i686/sse2", 0xffa34090)  = -1 ENOENT (No such file or directory)
open("/lib32/i686/cmov/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/i686/cmov", 0xffa34090)  = -1 ENOENT (No such file or directory)
open("/lib32/i686/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/i686", 0xffa34090)       = -1 ENOENT (No such file or directory)
open("/lib32/sse2/cmov/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/sse2/cmov", 0xffa34090)  = -1 ENOENT (No such file or directory)
open("/lib32/sse2/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/sse2", 0xffa34090)       = -1 ENOENT (No such file or directory)
open("/lib32/cmov/libdl.so.2", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
stat64("/lib32/cmov", 0xffa34090)       = -1 ENOENT (No such file or directory)
open("/lib32/libdl.so.2", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\320\n\0\0004\0\0\0"..., 512) = 512
fstat64(3, {st_mode=S_IFREG|0644, st_size=13856, ...}) = 0
mmap2(NULL, 16512, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0xfffffffff76b4000
mmap2(0xf76b7000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x2000) = 0xfffffffff76b7000
close(3)                                = 0
open("/jdk1.2.2/jre/lib/i386/green_threads/libc.so.6", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/libc.so.6", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/lib32/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\300\233\1\0004\0\0\0"..., 512) = 512
fstat64(3, {st_mode=S_IFREG|0755, st_size=1742588, ...}) = 0
mmap2(NULL, 1747580, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0xfffffffff7509000
mmap2(0xf76ae000, 12288, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1a5000) = 0xfffffffff76ae000
mmap2(0xf76b1000, 10876, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0xfffffffff76b1000
close(3)                                = 0
open("/jdk1.2.2/jre/lib/i386/green_threads/libBrokenLocale.so.1", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/libBrokenLocale.so.1", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/lib32/libBrokenLocale.so.1", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0P\4\0\0004\0\0\0"..., 512) = 512
fstat64(3, {st_mode=S_IFREG|0644, st_size=5572, ...}) = 0
mmap2(NULL, 8224, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0xfffffffff7506000
mmap2(0xf7507000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0) = 0xfffffffff7507000
close(3)                                = 0
open("/jdk1.2.2/jre/lib/i386/green_threads/libnsl.so.1", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/libnsl.so.1", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/lib32/libnsl.so.1", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\3201\0\0004\0\0\0"..., 512) = 512
fstat64(3, {st_mode=S_IFREG|0644, st_size=92036, ...}) = 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0xfffffffff7505000
mmap2(NULL, 100328, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0xfffffffff74ec000
mmap2(0xf7501000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x15000) = 0xfffffffff7501000
mmap2(0xf7503000, 6120, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0xfffffffff7503000
close(3)                                = 0
open("/jdk1.2.2/jre/lib/i386/green_threads/libm.so.6", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/libm.so.6", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/lib32/libm.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\0F\0\0004\0\0\0"..., 512) = 512
fstat64(3, {st_mode=S_IFREG|0644, st_size=280108, ...}) = 0
mmap2(NULL, 282784, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0xfffffffff74a6000
mmap2(0xf74ea000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x43000) = 0xfffffffff74ea000
close(3)                                = 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0xfffffffff74a5000
set_thread_area(0xffa34590)             = 0
mprotect(0xf76ae000, 8192, PROT_READ)   = 0
mprotect(0xf74ea000, 4096, PROT_READ)   = 0
mprotect(0xf7501000, 4096, PROT_READ)   = 0
mprotect(0xf7507000, 4096, PROT_READ)   = 0
mprotect(0xf76b7000, 4096, PROT_READ)   = 0
mprotect(0xf773b000, 81920, PROT_READ|PROT_WRITE) = 0
mprotect(0xf773b000, 81920, PROT_READ|PROT_EXEC) = 0
mprotect(0xf76b9000, 516096, PROT_READ|PROT_WRITE) = 0
mprotect(0xf76b9000, 516096, PROT_READ|PROT_EXEC) = 0
mprotect(0xf7776000, 4096, PROT_READ)   = 0
brk(0)                                  = 0x8e4a000
brk(0x8e4a020)                          = 0x8e4a020
brk(0x8e4b000)                          = 0x8e4b000
open("/jdk1.2.2/jre/lib/i386/native_threads/libhpi.so", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\220F\0\0004\0\0\0"..., 512) = 512
fstat64(3, {st_mode=S_IFREG|0644, st_size=50392, ...}) = 0
mmap2(NULL, 41816, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0xfffffffff749a000
mmap2(0xf74a3000, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x8000) = 0xfffffffff74a3000
mmap2(0xf74a4000, 856, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0xfffffffff74a4000
close(3)                                = 0
open("/jdk1.2.2/jre/lib/i386/green_threads/libpthread.so.0", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/jdk1.2.2/jre/lib/i386/classic/libpthread.so.0", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/lib32/libpthread.so.0", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\320]\0\0004\0\0\0"..., 512) = 512
fstat64(3, {st_mode=S_IFREG|0755, st_size=704375, ...}) = 0
mmap2(NULL, 111276, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0xfffffffff747e000
mmap2(0xf7496000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x17000) = 0xfffffffff7496000
mmap2(0xf7498000, 4780, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0xfffffffff7498000
close(3)                                = 0
brk(0x8e4c000)                          = 0x8e4c000
mprotect(0xf7496000, 4096, PROT_READ)   = 0
mprotect(0xf749a000, 36864, PROT_READ|PROT_WRITE) = 0
mprotect(0xf749a000, 36864, PROT_READ|PROT_EXEC) = 0
set_tid_address(0xf74a5768)             = 8
set_robust_list(0xf74a5770, 12)         = 0
futex(0xffa32de4, FUTEX_WAIT_BITSET_PRIVATE|FUTEX_CLOCK_REALTIME, 1, NULL, f74a5700) = -1 EAGAIN (Resource temporarily unavailable)
rt_sigaction(SIGRTMIN, {0xf74837d0, [], SA_SIGINFO}, NULL, 8) = 0
rt_sigaction(SIGRT_1, {0xf7483850, [], SA_RESTART|SA_SIGINFO}, NULL, 8) = 0
rt_sigprocmask(SIG_UNBLOCK, [RTMIN RT_1], NULL, 8) = 0
getrlimit(RLIMIT_STACK, {rlim_cur=8192*1024, rlim_max=RLIM_INFINITY}) = 0
uname({sys="Linux", node="473a31d08543", ...}) = 0
lstat64("/jdk1.2.2", {st_mode=S_IFDIR|0755, st_size=4096, ...}) = 0
lstat64("/jdk1.2.2/jre", {st_mode=S_IFDIR|0755, st_size=4096, ...}) = 0
lstat64("/jdk1.2.2/jre/lib", {st_mode=S_IFDIR|0755, st_size=4096, ...}) = 0
lstat64("/jdk1.2.2/jre/lib/i386", {st_mode=S_IFDIR|0755, st_size=4096, ...}) = 0
lstat64("/jdk1.2.2/jre/lib/i386/classic", {st_mode=S_IFDIR|0755, st_size=4096, ...}) = 0
lstat64("/jdk1.2.2/jre/lib/i386/classic/libjvm.so", {st_mode=S_IFREG|0644, st_size=648729, ...}) = 0
rt_sigprocmask(SIG_SETMASK, NULL, [], 8) = 0
rt_sigprocmask(SIG_BLOCK, NULL, [], 8)  = 0
old_getrlimit(RLIMIT_STACK, {rlim_cur=8192*1024, rlim_max=2147483647}) = 0
rt_sigaction(SIGPIPE, {SIG_IGN, [PIPE], SA_RESTART}, {SIG_DFL, [], 0}, 8) = 0
old_getrlimit(RLIMIT_NOFILE, {rlim_cur=1024*1024, rlim_max=1024*1024}) = 0
setrlimit(RLIMIT_NOFILE, {rlim_cur=1024*1024, rlim_max=1024*1024}) = 0
mmap2(NULL, 8392704, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0xfffffffff6c7d000
mmap2(NULL, 2101248, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0xfffffffff6a7c000
mmap2(NULL, 8392704, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0xfffffffff627b000
rt_sigprocmask(SIG_BLOCK, ~[RTMIN RT_1], [], 8) = 0
rt_sigaction(SIGIO, {0xf7743df8, ~[RTMIN RT_1], SA_RESTART|SA_SIGINFO}, {SIG_DFL, [], 0}, 8) = 0
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
rt_sigprocmask(SIG_BLOCK, ~[RTMIN RT_1], [], 8) = 0
rt_sigaction(SIGCHLD, {0xf7743df8, ~[RTMIN RT_1], SA_RESTART|SA_SIGINFO}, {SIG_DFL, [], 0}, 8) = 0
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
mmap2(NULL, 4198400, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0xfffffffff5e7a000
mmap2(NULL, 16781312, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0xfffffffff4e79000
ioctl(0, SNDCTL_TMR_TIMEBASE or SNDRV_TIMER_IOCTL_NEXT_DEVICE or TCGETS, 0xffa343a8) = -1 ENOTTY (Inappropriate ioctl for device)
brk(0x8e4d000)                          = 0x8e4d000
mmap2(NULL, 135168, PROT_READ|PROT_WRITE|PROT_EXEC, MAP_PRIVATE|MAP_ANONYMOUS|MAP_NORESERVE, -1, 0) = 0xfffffffff4e58000
mprotect(0xf4e58000, 4096, PROT_NONE)   = 0
rt_sigprocmask(SIG_SETMASK, NULL, [], 8) = 0
rt_sigprocmask(SIG_BLOCK, NULL, [], 8)  = 0
rt_sigprocmask(SIG_BLOCK, NULL, [], 8)  = 0
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_MAPERR, si_addr=0x2b0149e7} ---
+++ killed by SIGSEGV +++
Segmentation fault
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker
```
