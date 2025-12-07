void sub_2E784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v5 += v4;
  *(a4 + 48) ^= v4;
  __asm { iret }
}

void sub_316AC(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  BYTE1(a4) = -83;
  LOBYTE(v4) = *(2 * v4) + v4;
  LOBYTE(v4) = *v4 + v4;
  LODWORD(v4) = v4;
  __asm { fiadd   word ptr [rdx] }

  *(2 * v4) += v4;
  MK_FP(*retaddr, *retaddr)(__DS__, a2, a3, a4);
}