void sub_11DE68(uint64_t a1)
{
  *(a1 + 1) = v1;
  __asm { iret }
}

void sub_128D40()
{
  *(&unk_1 + __ES__) = v0;
  __asm { iret }
}

void sub_139D48()
{
  *(&unk_1 + __ES__) = v0;
  __asm { iret }
}

void sub_1E1005()
{
  *(v0 - 1610611197) = BYTE1(v0);
  __asm { iret }
}