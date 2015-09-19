xor ebx, ebx
mov edx, dword ptr [ebp+08h]
mov ecx, dword ptr [edx]
jecxz label1
mov edx, ecx
add edx, 07h
mov ecx, dword ptr [ecx+04h]
jecxz label1
xor eax, eax
label2:
imul ebx, ebx, 1Fh
mov al, byte ptr [ecx+edx]
add ebx, eax
inc ebx
loop label2
label1:
mov eax, ebx
leave 
retn 0004h
