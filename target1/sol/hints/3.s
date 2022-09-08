sub $0x30, %rsp
push $0x00
push $0x39623935
mov $0x61663739, 4(%rsp)
mov %rsp, %rdi
add $0x40, %rsp
push $0x004018fa
ret