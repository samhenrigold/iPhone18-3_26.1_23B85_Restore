void sub_1C9F9(uint64_t a1, uint64_t a2, int a3, char a4)
{
  __asm { fadd    dword ptr [rax] }

  *_RAX |= _RAX;
  __asm { fld     dword ptr [rax] }

  *_RAX |= v5;
  __asm { fild    dword ptr [rax] }

  *(8 * v5 - 583008256) += a3;
  *_RAX += a4;
  __halt();
}