add esp, FFFFFFD4h
push ebx
push esi
push edi
mov ebx, dword ptr [ebp+08h]
mov ebx, dword ptr [ebx]
mov eax, dword ptr [ebx+28h]
test eax, eax
jne label1
mov ecx, dword ptr [ebp+10h]
lea ecx, dword ptr [000001F0h+ecx*2]
push ecx
push 00000000h
mov ecx, dword ptr fs:[00000030h]
mov ecx, dword ptr [ecx+18h]
push ecx
mov edx, dword ptr [ebx+04h]
call edx
mov dword ptr [ebx+28h], eax
label1:
mov dword ptr [ebp-0Ch], eax
lea edx, dword ptr [eax+28h]
mov dword ptr [ebp-10h], edx
lea edx, dword ptr [edx+000000F0h]
mov dword ptr [ebp-14h], edx
mov edi, eax
mov esi, eax
mov eax, dword ptr [ebp+0Ch]
mov eax, dword ptr [eax]
mov edx, dword ptr [eax+04h]
mov dword ptr [ebp-08h], edx
mov ecx, dword ptr [ebp+10h]
mov edx, ecx
sar ecx, 02h
xor eax, eax
rep stosd 
mov edi, esi
mov eax, dword ptr [ebp+0Ch]
mov eax, dword ptr [eax]
mov ecx, dword ptr [eax+04h]
cmp ecx, edx
jle label2
mov ecx, edx
label2:
lea esi, dword ptr [eax+08h]
mov edx, ecx
and edx, 03h
shr ecx, 02h
rep movsd 
or ecx, edx
test ecx, ecx
je label3
rep movsb 
label3:
mov dword ptr [ebp-18h], esp
mov ebx, dword ptr [ebp+08h]
mov ebx, dword ptr [ebx]
mov esp, dword ptr [ebx+4Ch]
lea esp, dword ptr [esp+00001000h]
mov esi, dword ptr [ebp-0Ch]
mov edi, dword ptr [ebp-10h]
mov eax, dword ptr [esi]
mov ebx, dword ptr [esi+04h]
mov ecx, dword ptr [esi+08h]
mov edx, dword ptr [esi+0Ch]
bswap eax
bswap ebx
bswap ecx
bswap edx
mov dword ptr [edi], eax
mov dword ptr [edi+04h], ebx
mov dword ptr [edi+08h], ecx
mov dword ptr [edi+0Ch], edx
mov ecx, dword ptr [ebp+10h]
cmp ecx, 18h
jc label4
mov eax, dword ptr [esi+10h]
mov ebx, dword ptr [esi+14h]
bswap eax
bswap ebx
mov dword ptr [edi+10h], eax
mov dword ptr [edi+14h], ebx
cmp ecx, 20h
jc label4
mov ecx, dword ptr [esi+18h]
mov edx, dword ptr [esi+1Ch]
bswap ecx
bswap edx
mov dword ptr [edi+18h], ecx
mov dword ptr [edi+1Ch], edx
label4:
mov eax, dword ptr [ebp+10h]
xor esi, esi
cmp eax, 10h
jne label5
label7:
mov edx, dword ptr [edi+0Ch]
mov eax, edx
mov ebx, edx
mov ecx, edx
shr eax, 10h
shr ebx, 08h
shr edx, 18h
and eax, 000000FFh
and ebx, 000000FFh
and ecx, 000000FFh
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
lea ebx, dword ptr [esp+00001800h]
xor eax, dword ptr [ebx+esi*4]
xor eax, dword ptr [edi]
mov dword ptr [edi+10h], eax
xor eax, dword ptr [edi+04h]
mov dword ptr [edi+14h], eax
xor eax, dword ptr [edi+08h]
mov dword ptr [edi+18h], eax
xor eax, dword ptr [edi+0Ch]
mov dword ptr [edi+1Ch], eax
inc esi
cmp esi, 0Ah
je label6
add edi, 10h
jmp label7
jmp label6
label5:
cmp eax, 18h
jne label8
label10:
mov edx, dword ptr [edi+14h]
mov eax, edx
mov ebx, edx
mov ecx, edx
shr eax, 10h
shr ebx, 08h
shr edx, 18h
and eax, 000000FFh
and ebx, 000000FFh
and ecx, 000000FFh
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
lea ebx, dword ptr [esp+00001800h]
xor eax, dword ptr [ebx+esi*4]
xor eax, dword ptr [edi]
mov dword ptr [edi+18h], eax
xor eax, dword ptr [edi+04h]
mov dword ptr [edi+1Ch], eax
xor eax, dword ptr [edi+08h]
mov dword ptr [edi+20h], eax
xor eax, dword ptr [edi+0Ch]
mov dword ptr [edi+24h], eax
inc esi
cmp esi, 08h
je label9
xor eax, dword ptr [edi+10h]
mov dword ptr [edi+28h], eax
xor eax, dword ptr [edi+14h]
mov dword ptr [edi+2Ch], eax
add edi, 18h
jmp label10
label9:
mov esi, 0000000Ch
jmp label6
label8:
cmp eax, 20h
jne label6
label12:
mov edx, dword ptr [edi+1Ch]
mov eax, edx
mov ebx, edx
mov ecx, edx
shr eax, 10h
shr ebx, 08h
shr edx, 18h
and eax, 000000FFh
and ebx, 000000FFh
and ecx, 000000FFh
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
lea ebx, dword ptr [esp+00001800h]
xor eax, dword ptr [ebx+esi*4]
xor eax, dword ptr [edi]
mov dword ptr [edi+20h], eax
xor eax, dword ptr [edi+04h]
mov dword ptr [edi+24h], eax
xor eax, dword ptr [edi+08h]
mov dword ptr [edi+28h], eax
xor eax, dword ptr [edi+0Ch]
mov dword ptr [edi+2Ch], eax
inc esi
cmp esi, 07h
je label11
mov ebx, eax
mov ecx, eax
mov edx, eax
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
xor eax, dword ptr [edi+10h]
mov dword ptr [edi+30h], eax
xor eax, dword ptr [edi+14h]
mov dword ptr [edi+34h], eax
xor eax, dword ptr [edi+18h]
mov dword ptr [edi+38h], eax
xor eax, dword ptr [edi+1Ch]
mov dword ptr [edi+3Ch], eax
add edi, 20h
jmp label12
label11:
mov esi, 0000000Eh
label6:
mov ebx, esi
mov dword ptr [ebp-20h], esi
xor ecx, ecx
shl ebx, 02h
mov esi, dword ptr [ebp-10h]
mov edi, dword ptr [ebp-14h]
jmp label13
label14:
mov eax, dword ptr [esi+ecx*4]
mov edx, dword ptr [esi+ecx*4+04h]
mov dword ptr [edi+ebx*4], eax
mov dword ptr [edi+ebx*4+04h], edx
mov eax, dword ptr [esi+ecx*4+08h]
mov edx, dword ptr [esi+ecx*4+0Ch]
mov dword ptr [edi+ebx*4+08h], eax
mov dword ptr [edi+ebx*4+0Ch], edx
mov eax, dword ptr [esi+ebx*4]
mov edx, dword ptr [esi+ebx*4+04h]
mov dword ptr [edi+ecx*4], eax
mov dword ptr [edi+ecx*4+04h], edx
mov eax, dword ptr [esi+ebx*4+08h]
mov edx, dword ptr [esi+ebx*4+0Ch]
mov dword ptr [edi+ecx*4+08h], eax
mov dword ptr [edi+ecx*4+0Ch], edx
add ecx, 04h
sub ebx, 04h
label13:
cmp ecx, ebx
jbe label14
mov esi, dword ptr [ebp-20h]
dec esi
jmp label15
label16:
add edi, 10h
mov edx, dword ptr [edi]
mov eax, edx
mov ebx, edx
mov ecx, edx
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
and eax, 000000FFh
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4+00000400h]
mov ebx, dword ptr [esp+ebx*4+00000800h]
mov ecx, dword ptr [esp+ecx*4+00000C00h]
mov edx, dword ptr [esp+edx*4+00001000h]
xor eax, ebx
xor eax, ecx
xor eax, edx
mov dword ptr [edi], eax
mov edx, dword ptr [edi+04h]
mov eax, edx
mov ebx, edx
mov ecx, edx
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
and eax, 000000FFh
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4+00000400h]
mov ebx, dword ptr [esp+ebx*4+00000800h]
mov ecx, dword ptr [esp+ecx*4+00000C00h]
mov edx, dword ptr [esp+edx*4+00001000h]
xor eax, ebx
xor eax, ecx
xor eax, edx
mov dword ptr [edi+04h], eax
mov edx, dword ptr [edi+08h]
mov eax, edx
mov ebx, edx
mov ecx, edx
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
and eax, 000000FFh
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4+00000400h]
mov ebx, dword ptr [esp+ebx*4+00000800h]
mov ecx, dword ptr [esp+ecx*4+00000C00h]
mov edx, dword ptr [esp+edx*4+00001000h]
xor eax, ebx
xor eax, ecx
xor eax, edx
mov dword ptr [edi+08h], eax
mov edx, dword ptr [edi+0Ch]
mov eax, edx
mov ebx, edx
mov ecx, edx
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
and eax, 000000FFh
and ebx, 000000FFh
and ecx, 000000FFh
and edx, 000000FFh
mov eax, dword ptr [esp+eax*4+00000400h]
mov ebx, dword ptr [esp+ebx*4+00000800h]
mov ecx, dword ptr [esp+ecx*4+00000C00h]
mov edx, dword ptr [esp+edx*4+00001000h]
xor eax, ebx
xor eax, ecx
xor eax, edx
mov dword ptr [edi+0Ch], eax
dec esi
label15:
or esi, esi
jne label16
mov esp, dword ptr [ebp-18h]
mov ebx, dword ptr [ebp+08h]
mov ebx, dword ptr [ebx]
mov ecx, dword ptr [ebp-20h]
mov dword ptr [ebx+2Ch], ecx
pop edi
pop esi
pop ebx
leave 
retn 000Ch
