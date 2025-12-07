void sub_D36E9()
{
  MEMORY[0xDD29000000090000] = v0;
  __asm { iret }
}

void sub_D9129()
{
  MEMORY[0x82E900000070FFF3] = v0;
  __asm { iret }
}

void sub_1345AC(uint64_t a1, uint64_t a2, uint64_t _RDX)
{
  *(_RDX + 114) ^= v3;
  __asm { insb }
}

void sub_134C5D(_BYTE *a1, uint64_t a2, unsigned __int16 a3)
{
  _disable();
  *v3 += v3;
  BYTE1(v3) += *a1;
  __outbyte(a3, v3);
  LODWORD(v3) = v3;
  *(v3 + 77) += a2;
  BYTE1(v3) += HIBYTE(a3);
  LODWORD(v3) = v3;
  *(2 * v3) += v3;
  __asm { retn }
}

void sub_1365E2(uint64_t a1, uint64_t a2, uint64_t _RDX)
{
  v5 = _RDX;
  *(_RDX + 114) ^= v3;
  __asm
  {
    insb
    retf
  }
}

void sub_139D2B(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *a4 -= v4 + a4;
  __asm { rcr     bl, 34h }

  *(2 * a4) += a4;
  __halt();
}

void sub_13D235(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *v3 -= v3;
  *a3 += v3;
  __asm { retf }
}

__int16 sub_13DF25(int *a1, uint64_t a2, __int16 _DX)
{
  __asm { insb }

  v4 = 67171528;
  BYTE1(v4) = HIBYTE(_DX) - 12;
  *a1 = v4;
  return v4;
}