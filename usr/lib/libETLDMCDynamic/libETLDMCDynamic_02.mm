uint64_t APPLIB_DIAG_GetPmicTherm(_DWORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 64843;
    *(a1 + 2) = 22839;
    if (a2 >= 0xC)
    {
      *a1 = 64843;
      *(a1 + 2) = 22839;
      *(a1 + 6) = 126;
      return 7;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_FTM_SET_REVERSE_LINK_POWER(char *a1, unsigned int a2, int a3, int a4)
{
  v57 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 461643;
    *(a1 + 2) = 140;
    *(a1 + 11) = a4;
    a1[10] = a3;
    v9 = a1[6];
    v10 = crc_16_l_table[v9 ^ 0x25];
    v11 = crc_16_l_table[a1[7] ^ 0x12 ^ v10];
    v12 = crc_16_l_table[(a1[8] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[9] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(v13 ^ HIBYTE(v12)) ^ a3];
    v15 = crc_16_l_table[(a4 ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[12] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[13] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[14] ^ v17 ^ HIBYTE(v16))];
    v19 = v18 ^ ~(v17 >> 8);
    *(a1 + 15) = v18 ^ ~HIBYTE(crc_16_l_table[(a1[13] ^ v16 ^ HIBYTE(v15))]);
    if (a2 >= 34)
    {
      bzero(v56, 0x7FFuLL);
      v20 = *a1;
      if ((v20 - 125) > 1)
      {
        v21 = 1;
      }

      else
      {
        v56[0] = v20 & 0x5F;
        v21 = 2;
        LOBYTE(v20) = 125;
      }

      __src = v20;
      v22 = a1[1];
      v23 = v21 + 1;
      if ((v22 - 125) <= 1)
      {
        v56[v23 - 1] = v22 & 0x5F;
        LOBYTE(v22) = 125;
        LODWORD(v23) = v21 + 2;
      }

      v56[v21 - 1] = v22;
      v24 = a1[2];
      v25 = v23;
      v26 = v23 + 1;
      if ((v24 - 125) <= 1)
      {
        v56[v26 - 1] = v24 & 0x5F;
        LODWORD(v26) = v25 + 2;
        LOBYTE(v24) = 125;
      }

      v56[v25 - 1] = v24;
      v27 = a1[3];
      v28 = v26;
      v29 = v26 + 1;
      if ((v27 - 125) <= 1)
      {
        v56[v29 - 1] = v27 & 0x5F;
        LOBYTE(v27) = 125;
        LODWORD(v29) = v28 + 2;
      }

      v56[v28 - 1] = v27;
      v30 = a1[4];
      v31 = v29 + 1;
      if ((v30 - 125) <= 1)
      {
        v56[v31 - 1] = v30 & 0x5F;
        LODWORD(v31) = v29 + 2;
        LOBYTE(v30) = 125;
      }

      v56[v29 - 1] = v30;
      v56[v31 - 1] = 0;
      v32 = v31 + 2;
      if ((v9 - 125) <= 1)
      {
        v56[v32 - 1] = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v32) = v31 + 3;
      }

      v56[v31] = v9;
      v33 = a1[7];
      v34 = v32 + 1;
      if ((v33 - 125) <= 1)
      {
        v56[v34 - 1] = v33 & 0x5F;
        LOBYTE(v33) = 125;
        LODWORD(v34) = v32 + 2;
      }

      v56[v32 - 1] = v33;
      v35 = a1[8];
      v36 = v34 + 1;
      if ((v35 - 125) <= 1)
      {
        v56[v36 - 1] = v35 & 0x5F;
        LOBYTE(v35) = 125;
        LODWORD(v36) = v34 + 2;
      }

      v56[v34 - 1] = v35;
      v37 = a1[9];
      v38 = v36;
      v39 = v36 + 1;
      if ((v37 - 125) <= 1)
      {
        v56[v39 - 1] = v37 & 0x5F;
        LOBYTE(v37) = 125;
        LODWORD(v39) = v36 + 2;
      }

      v40 = a4;
      v56[v38 - 1] = v37;
      v41 = v39;
      v42 = v39 + 1;
      if ((a3 - 125) <= 1)
      {
        v56[v42 - 1] = a3 & 0x5F;
        LOBYTE(a3) = 125;
        LODWORD(v42) = v41 + 2;
      }

      v43 = BYTE1(a4);
      v56[v41 - 1] = a3;
      v44 = v42 + 1;
      if (a4 - 125 <= 1)
      {
        v56[v44 - 1] = a4 & 0x5F;
        v40 = 125;
        LODWORD(v44) = v42 + 2;
      }

      v45 = BYTE2(a4);
      v56[v42 - 1] = v40;
      v46 = v44 + 1;
      if (BYTE1(a4) - 125 <= 1)
      {
        v56[v46 - 1] = BYTE1(a4) & 0x5F;
        v43 = 125;
        LODWORD(v46) = v44 + 2;
      }

      v56[v44 - 1] = v43;
      v47 = v46;
      v48 = v46 + 1;
      if (BYTE2(a4) - 125 <= 1)
      {
        v56[v48 - 1] = BYTE2(a4) & 0x5F;
        v45 = 125;
        LODWORD(v48) = v47 + 2;
      }

      v56[v47 - 1] = v45;
      v49 = ~(v18 ^ BYTE1(v17));
      v50 = a1[14];
      v51 = v48 + 1;
      if ((v50 - 125) <= 1)
      {
        v56[v51 - 1] = v50 & 0x5F;
        LOBYTE(v50) = 125;
        LODWORD(v51) = v48 + 2;
      }

      v52 = (v18 ^ ~(v17 >> 8)) >> 8;
      v56[v48 - 1] = v50;
      v53 = v51 + 1;
      if ((v49 - 125) <= 1)
      {
        v56[v53 - 1] = v49 & 0x5F;
        LODWORD(v53) = v51 + 2;
        LOBYTE(v49) = 125;
      }

      v56[v51 - 1] = v49;
      v54 = v53 + 1;
      if (BYTE1(v19) - 125 <= 1)
      {
        v56[v54 - 1] = BYTE1(v19) & 0x5F;
        v52 = 125;
        LODWORD(v54) = v53 + 2;
      }

      v56[v53 - 1] = v52;
      memcpy(a1, &__src, v54);
      result = (v54 + 1);
      a1[v54] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t ETLDMCParserInit(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  return 1;
}

uint64_t ETLDMCParserGetToken(uint64_t *a1, unsigned __int8 a2, char *__dst, unsigned int a4)
{
  v5 = *(a1 + 2);
  v6 = *a1;
  v7 = *(*a1 + v5);
  v8 = *(a1 + 2);
  if (v7 == a2)
  {
LABEL_5:
    LODWORD(v10) = ++v8 - v5;
    if (v8 == v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = -1;
    v8 = *(a1 + 2);
    while (v7)
    {
      v7 = *(v6 + ++v8);
      --v9;
      if (v7 == a2)
      {
        goto LABEL_5;
      }
    }

    if (v9 == -1)
    {
      return 0;
    }

    LODWORD(v10) = -v9;
    if (!v9)
    {
      return 0;
    }
  }

  if (v10 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v10;
  }

  strlcpy(__dst, (v6 + v5), v10);
  *(a1 + 2) = v8;
  return 1;
}

uint64_t ETLDMCParserCountTokens(char **a1, int a2)
{
  v3 = strchr(*a1, a2);
  for (i = 1; v3; i = (i + 1))
  {
    v3 = strchr(v3 + 1, a2);
  }

  return i;
}

uint64_t ETLEVENTCreateSetMaskCommand(uint64_t a1, uint64_t a2, unsigned int a3)
{
  _ETLDebugPrint("ETLEVENTCreateSetMaskCommand", "Setting masks of %u bits\n", a3);
  if (a3 > 0x1000 || !ETLRequireFreeSpace())
  {
    return 0;
  }

  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInject();

  return HDLCFrameInjectUnsignedChar();
}

uint64_t ETLEVENTParseSetMaskResponse(unsigned __int8 **a1, _DWORD *a2, void *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  if (v4 <= 5)
  {
    _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Response has %u bytes, need %u\n", a3, a4);
    return 0;
  }

  v8 = *a1;
  result = ETLExpectResponseCode();
  if (!result)
  {
    return result;
  }

  v11 = *(v8 + 1);
  *a2 = v11;
  if (!v11)
  {
    v12 = *(v8 + 4);
    *a4 = v12;
    v13 = (v12 + 7) >> 3;
    if (v12 <= 0x1000 && v13 <= v4 - 6)
    {
      memcpy(a3, (v8 + 6), v13);
      return 1;
    }

    _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Need %u bytes for mask of %u bits, only have %u\n", v13, v10);
    return 0;
  }

  return 0;
}

uint64_t ETLEVENTCreateGetMaskCommand(uint64_t a1)
{
  result = ETLRequireFreeSpace();
  if (result)
  {
    HDLCFrameInjectUnsignedChar();
    HDLCFrameInjectUnsignedChar();

    return HDLCFrameInjectUnsignedShort();
  }

  return result;
}

uint64_t ETLEVENTParseGetMaskResponse(unsigned __int8 **a1, _DWORD *a2, void *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  if (v4 <= 5)
  {
    _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Response has %u bytes, need %u\n", a3, a4);
    return 0;
  }

  v8 = *a1;
  result = ETLExpectResponseCode();
  if (!result)
  {
    return result;
  }

  v11 = *(v8 + 1);
  *a2 = v11;
  if (!v11)
  {
    v12 = *(v8 + 4);
    *a4 = v12;
    v13 = (v12 + 7) >> 3;
    if (v12 <= 0x1000 && v13 <= v4 - 6)
    {
      memcpy(a3, (v8 + 6), v13);
      return 1;
    }

    _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Need %u bytes for mask of %u bits, only have %u\n", v13, v10);
    return 0;
  }

  return 0;
}

uint64_t ETLEVENTCreateEnableCommand(uint64_t a1, uint64_t a2)
{
  result = ETLRequireFreeSpace();
  if (result)
  {
    HDLCFrameInjectUnsignedChar();

    return HDLCFrameInjectUnsignedChar();
  }

  return result;
}

uint64_t ETLEVENTSetMask(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  v42 = *MEMORY[0x29EDCA608];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v6;
  v41 = v6;
  v38 = v6;
  v39 = v6;
  v36 = v6;
  v37 = v6;
  v34 = v6;
  v35 = v6;
  v32 = v6;
  v33 = v6;
  v30 = v6;
  v31 = v6;
  v28 = v6;
  v29 = v6;
  v26 = v6;
  v27 = v6;
  v24 = v6;
  v25 = v6;
  v22 = v6;
  v23 = v6;
  v20 = v6;
  v21 = v6;
  v18 = v6;
  v19 = v6;
  v16 = v6;
  v17 = v6;
  v14 = v6;
  v15 = v6;
  v12 = v6;
  v13 = v6;
  __s2 = v6;
  v11 = v6;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  if (ETLFrameCreateUplink())
  {
    if (ETLEVENTCreateSetMaskCommand(v8, a2, a3) && ETLSendCommand() && ETLFindMatchingResponse())
    {
      _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Response has %u bytes, need %u\n");
    }
  }

  else
  {
    _ETLDebugPrint("ETLEVENTSetMask", "Failed to create command frame\n");
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return 0;
}

uint64_t ETLEVENTGetMask(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4)
{
  if (ETLFrameCreateUplink())
  {
    if (ETLRequireFreeSpace())
    {
      HDLCFrameInjectUnsignedChar();
      HDLCFrameInjectUnsignedChar();
      if (HDLCFrameInjectUnsignedShort())
      {
        if (ETLSendCommand() && ETLFindMatchingResponse())
        {
          _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Response has %u bytes, need %u\n");
        }
      }
    }
  }

  else
  {
    _ETLDebugPrint("ETLEVENTGetMask", "Failed to create command frame\n");
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return 0;
}

uint64_t ETLEVENTEnable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _ETLDebugPrint("ETLEVENTEnable", "enable = %u\n", a2);
  if ((ETLFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLEVENTEnable", "Failed to create command frame\n");
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  if (!ETLRequireFreeSpace())
  {
    goto LABEL_7;
  }

  HDLCFrameInjectUnsignedChar();
  if (!HDLCFrameInjectUnsignedChar() || !ETLSendCommand())
  {
    goto LABEL_7;
  }

  v3 = ETLFindMatchingResponse();
LABEL_8:
  HDLCFrameFree();
  HDLCFrameFree();
  return v3;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}