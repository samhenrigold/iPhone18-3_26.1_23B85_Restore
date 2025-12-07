double ETLDLFAddVersionReport(uint64_t a1, unsigned int a2, _DWORD *a3, __int16 a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, unsigned __int8 a11)
{
  *a3 = 0;
  if (a2 >= 0xA1)
  {
    memset(&v14[4], 0, 145);
    *v14 = a4;
    *&v14[2] = a5;
    __strlcpy_chk();
    __strlcpy_chk();
    __strlcpy_chk();
    *&v14[69] = a9;
    *&v14[73] = a10;
    *&v14[75] = a11;
    *a3 = 161;
    *(a1 + 108) = *&v14[96];
    *(a1 + 124) = *&v14[112];
    *(a1 + 140) = *&v14[128];
    *(a1 + 44) = *&v14[32];
    *(a1 + 60) = *&v14[48];
    *(a1 + 92) = *&v14[80];
    result = *v14;
    *(a1 + 12) = *v14;
    *(a1 + 28) = *&v14[16];
    *a1 = 536674465;
    *(a1 + 4) = 0;
    *(a1 + 153) = *&v14[141];
    *(a1 + 76) = *&v14[64];
  }

  return result;
}

uint64_t ETLDLFParse(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (a2 < 0xC)
  {
    return 0;
  }

  v4 = *a1;
  if (v4 > a2)
  {
    return 0;
  }

  v5 = a1[1];
  *a3 = v5;
  *(a3 + 24) = v4;
  *(a3 + 28) = v4 - 12;
  *(a3 + 8) = a1;
  *(a3 + 16) = a1 + 6;
  if (v5 > 8186)
  {
    if (v5 != 8187)
    {
      if (v5 == 8189)
      {
        return 4;
      }

      return 1;
    }

    return 3;
  }

  else
  {
    if (v5 != 8171)
    {
      return 1;
    }

    return 2;
  }
}