add esp, FFFFFFE0h
push ebx
push esi
push edi
mov ebx, dword ptr [ebp+08h]
mov ebx, dword ptr [ebx]
mov eax, dword ptr [ebx+28h]
test eax, eax
jne label1
mov eax, dword ptr [ebx+24h]
pop edi
pop esi
pop ebx
leave 
retn 0010h
label1:
mov edx, dword ptr [ebp+0Ch]
mov edx, dword ptr [edx]
mov ecx, dword ptr [edx+04h]
mov dword ptr [ebp-10h], ecx
mov eax, ecx
xor ecx, ecx
inc ecx
shl ecx, 04h
xor edx, edx
div ecx
test edx, edx
je label2
inc eax
label2:
shl eax, 04h
mov dword ptr [ebp-14h], eax
lea ecx, dword ptr [eax+10h]
push ecx
push 00000000h
mov ecx, dword ptr fs:[00000030h]
mov ecx, dword ptr [ecx+18h]
push ecx
mov edx, dword ptr [ebx+04h]
call edx
mov dword ptr [ebp-18h], eax
xor ecx, ecx
mov dword ptr [eax], ecx
mov dword ptr [eax+0Ch], ecx
inc byte ptr [eax]
mov ecx, dword ptr [ebp-14h]
lea ecx, dword ptr [ecx+08h]
mov dword ptr [eax+04h], ecx
mov ecx, dword ptr [ebp-10h]
mov dword ptr [eax+08h], ecx
lea eax, dword ptr [eax+10h]
mov dword ptr [ebp-14h], eax
lea edi, dword ptr [ebp-2Ch]
mov dword ptr [ebp-1Ch], edi
mov ecx, 00000004h
xor eax, eax
rep stosd 
mov eax, dword ptr [ebp+0Ch]
mov eax, dword ptr [eax]
lea esi, dword ptr [eax+08h]
mov edi, dword ptr [ebp-14h]
label8:
mov eax, dword ptr [ebp-1Ch]
mov ecx, 00000010h
label4:
dec dword ptr [ebp-10h]
jle label3
mov dl, byte ptr [esi]
mov byte ptr [eax], dl
inc esi
inc eax
dec ecx
jne label4
jmp label5
label3:
mov dl, byte ptr [esi]
mov byte ptr [eax], dl
inc eax
dec ecx
xor edx, edx
label6:
mov byte ptr [eax], dl
inc eax
dec ecx
jne label6
label5:
push ebx
mov eax, dword ptr [ebp-1Ch]
push eax
push edi
call label7
add edi, 10h
cmp dword ptr [ebp-10h], 00000000h
jnle label8
mov eax, dword ptr [ebx+28h]
mov ecx, dword ptr fs:[00000030h]
mov ecx, dword ptr [ecx+18h]
mov edx, dword ptr [ebx+08h]
push eax
push 00000000h
push ecx
call edx
xor eax, eax
mov dword ptr [ebx+28h], eax
mov eax, dword ptr [ebp-18h]
pop edi
pop esi
pop ebx
leave 
retn 0010h
label7:
push ebp
mov ebp, esp
add esp, FFFFFFD8h
push ebx
push esi
push edi
mov esi, dword ptr [ebp+0Ch]
mov ebx, dword ptr [ebp+10h]
mov eax, dword ptr [ebx+28h]
lea edi, dword ptr [eax+28h]
mov dword ptr [ebp-24h], esp
mov ecx, dword ptr [ebx+2Ch]
mov dword ptr [ebp-28h], ecx
mov esp, dword ptr [ebx+4Ch]
mov eax, dword ptr [esi]
mov ebx, dword ptr [esi+04h]
mov ecx, dword ptr [esi+08h]
mov edx, dword ptr [esi+0Ch]
bswap eax
bswap ebx
bswap ecx
bswap edx
xor eax, dword ptr [edi]
xor ebx, dword ptr [edi+04h]
xor ecx, dword ptr [edi+08h]
xor edx, dword ptr [edi+0Ch]
mov dword ptr [ebp-04h], eax
mov dword ptr [ebp-08h], ebx
mov dword ptr [ebp-0Ch], ecx
mov dword ptr [ebp-10h], edx
mov esi, dword ptr [ebp-28h]
shr esi, 1 
label10:
mov eax, dword ptr [ebp-04h]
mov ebx, dword ptr [ebp-08h]
mov ecx, dword ptr [ebp-0Ch]
mov edx, dword ptr [ebp-10h]
shr eax, 18h
shr ebx, 10h
shr ecx, 08h
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4]
mov ebx, dword ptr [esp+ebx*4+00000400h]
mov ecx, dword ptr [esp+ecx*4+00000800h]
mov edx, dword ptr [esp+edx*4+00000C00h]
xor eax, ebx
xor eax, ecx
xor eax, edx
xor eax, dword ptr [edi+10h]
mov dword ptr [ebp-14h], eax
mov eax, dword ptr [ebp-08h]
mov ebx, dword ptr [ebp-0Ch]
mov ecx, dword ptr [ebp-10h]
mov edx, dword ptr [ebp-04h]
shr eax, 18h
shr ebx, 10h
shr ecx, 08h
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4]
mov ebx, dword ptr [esp+ebx*4+00000400h]
mov ecx, dword ptr [esp+ecx*4+00000800h]
mov edx, dword ptr [esp+edx*4+00000C00h]
xor eax, ebx
xor eax, ecx
xor eax, edx
xor eax, dword ptr [edi+14h]
mov dword ptr [ebp-18h], eax
mov eax, dword ptr [ebp-0Ch]
mov ebx, dword ptr [ebp-10h]
mov ecx, dword ptr [ebp-04h]
mov edx, dword ptr [ebp-08h]
shr eax, 18h
shr ebx, 10h
shr ecx, 08h
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4]
mov ebx, dword ptr [esp+ebx*4+00000400h]
mov ecx, dword ptr [esp+ecx*4+00000800h]
mov edx, dword ptr [esp+edx*4+00000C00h]
xor eax, ebx
xor eax, ecx
xor eax, edx
xor eax, dword ptr [edi+18h]
mov dword ptr [ebp-1Ch], eax
mov eax, dword ptr [ebp-10h]
mov ebx, dword ptr [ebp-04h]
mov ecx, dword ptr [ebp-08h]
mov edx, dword ptr [ebp-0Ch]
shr eax, 18h
shr ebx, 10h
shr ecx, 08h
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4]
mov ebx, dword ptr [esp+ebx*4+00000400h]
mov ecx, dword ptr [esp+ecx*4+00000800h]
mov edx, dword ptr [esp+edx*4+00000C00h]
xor eax, ebx
xor eax, ecx
xor eax, edx
xor eax, dword ptr [edi+1Ch]
mov dword ptr [ebp-20h], eax
add edi, 20h
dec esi
je label9
mov eax, dword ptr [ebp-14h]
mov ebx, dword ptr [ebp-18h]
mov ecx, dword ptr [ebp-1Ch]
mov edx, dword ptr [ebp-20h]
shr eax, 18h
shr ebx, 10h
shr ecx, 08h
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4]
mov ebx, dword ptr [esp+ebx*4+00000400h]
mov ecx, dword ptr [esp+ecx*4+00000800h]
mov edx, dword ptr [esp+edx*4+00000C00h]
xor eax, ebx
xor eax, ecx
xor eax, edx
xor eax, dword ptr [edi]
mov dword ptr [ebp-04h], eax
mov eax, dword ptr [ebp-18h]
mov ebx, dword ptr [ebp-1Ch]
mov ecx, dword ptr [ebp-20h]
mov edx, dword ptr [ebp-14h]
shr eax, 18h
shr ebx, 10h
shr ecx, 08h
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4]
mov ebx, dword ptr [esp+ebx*4+00000400h]
mov ecx, dword ptr [esp+ecx*4+00000800h]
mov edx, dword ptr [esp+edx*4+00000C00h]
xor eax, ebx
xor eax, ecx
xor eax, edx
xor eax, dword ptr [edi+04h]
mov dword ptr [ebp-08h], eax
mov eax, dword ptr [ebp-1Ch]
mov ebx, dword ptr [ebp-20h]
mov ecx, dword ptr [ebp-14h]
mov edx, dword ptr [ebp-18h]
shr eax, 18h
shr ebx, 10h
shr ecx, 08h
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4]
mov ebx, dword ptr [esp+ebx*4+00000400h]
mov ecx, dword ptr [esp+ecx*4+00000800h]
mov edx, dword ptr [esp+edx*4+00000C00h]
xor eax, ebx
xor eax, ecx
xor eax, edx
xor eax, dword ptr [edi+08h]
mov dword ptr [ebp-0Ch], eax
mov eax, dword ptr [ebp-20h]
mov ebx, dword ptr [ebp-14h]
mov ecx, dword ptr [ebp-18h]
mov edx, dword ptr [ebp-1Ch]
shr eax, 18h
shr ebx, 10h
shr ecx, 08h
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4]
mov ebx, dword ptr [esp+ebx*4+00000400h]
mov ecx, dword ptr [esp+ecx*4+00000800h]
mov edx, dword ptr [esp+edx*4+00000C00h]
xor eax, ebx
xor eax, ecx
xor eax, edx
xor eax, dword ptr [edi+0Ch]
mov dword ptr [ebp-10h], eax
jmp label10
label9:
lea esp, dword ptr [esp+00001000h]
mov esi, dword ptr [ebp+08h]
mov eax, dword ptr [ebp-14h]
mov ebx, dword ptr [ebp-18h]
mov ecx, dword ptr [ebp-1Ch]
mov edx, dword ptr [ebp-20h]
shr eax, 18h
shr ebx, 10h
shr ecx, 08h
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4]
mov ebx, dword ptr [esp+ebx*4]
mov ecx, dword ptr [esp+ecx*4]
mov edx, dword ptr [esp+edx*4]
and eax, FF000000h
and ebx, 00FF0000h
and ecx, 0000FF00h
and edx, 000000FFh
xor eax, ebx
xor eax, ecx
xor eax, edx
xor eax, dword ptr [edi]
bswap eax
mov dword ptr [esi], eax
mov eax, dword ptr [ebp-18h]
mov ebx, dword ptr [ebp-1Ch]
mov ecx, dword ptr [ebp-20h]
mov edx, dword ptr [ebp-14h]
shr eax, 18h
shr ebx, 10h
shr ecx, 08h
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4]
mov ebx, dword ptr [esp+ebx*4]
mov ecx, dword ptr [esp+ecx*4]
mov edx, dword ptr [esp+edx*4]
and eax, FF000000h
and ebx, 00FF0000h
and ecx, 0000FF00h
and edx, 000000FFh
xor eax, ebx
xor eax, ecx
xor eax, edx
xor eax, dword ptr [edi+04h]
bswap eax
mov dword ptr [esi+04h], eax
mov eax, dword ptr [ebp-1Ch]
mov ebx, dword ptr [ebp-20h]
mov ecx, dword ptr [ebp-14h]
mov edx, dword ptr [ebp-18h]
shr eax, 18h
shr ebx, 10h
shr ecx, 08h
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4]
mov ebx, dword ptr [esp+ebx*4]
mov ecx, dword ptr [esp+ecx*4]
mov edx, dword ptr [esp+edx*4]
and eax, FF000000h
and ebx, 00FF0000h
and ecx, 0000FF00h
and edx, 000000FFh
xor eax, ebx
xor eax, ecx
xor eax, edx
xor eax, dword ptr [edi+08h]
bswap eax
mov dword ptr [esi+08h], eax
mov eax, dword ptr [ebp-20h]
mov ebx, dword ptr [ebp-14h]
mov ecx, dword ptr [ebp-18h]
mov edx, dword ptr [ebp-1Ch]
shr eax, 18h
shr ebx, 10h
shr ecx, 08h
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4]
mov ebx, dword ptr [esp+ebx*4]
mov ecx, dword ptr [esp+ecx*4]
mov edx, dword ptr [esp+edx*4]
and eax, FF000000h
and ebx, 00FF0000h
and ecx, 0000FF00h
and edx, 000000FFh
xor eax, ebx
xor eax, ecx
xor eax, edx
xor eax, dword ptr [edi+0Ch]
bswap eax
mov dword ptr [esi+0Ch], eax
mov esp, dword ptr [ebp-24h]
xor eax, eax
pop edi
pop esi
pop ebx
leave 
retn 000Ch
