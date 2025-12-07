BOOL ETLEVENTReportFree(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    v3 = 0;
    v5 = *(a1 + 4);
    if (v5)
    {
      return v3 == v5;
    }

    goto LABEL_5;
  }

  v3 = 0;
  do
  {
    v4 = *(v2 + 32);
    free(*(v2 + 16));
    free(v2);
    ++v3;
    v2 = v4;
  }

  while (v4);
  v5 = *(a1 + 4);
  if (v3 == v5)
  {
LABEL_5:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return v3 == v5;
}

uint64_t ETLPRLReadStatusIsSuccess(int a1)
{
  v1 = 1;
  if (a1 && a1 != 2)
  {
    if (a1 == 1)
    {
      _ETLDebugPrint("ETLPRLReadStatusIsSuccess", "PRL Read status kStatusPRLNVReadFail [%u]\n");
    }

    else
    {
      _ETLDebugPrint("ETLPRLReadStatusIsSuccess", "PRL Read status Invalid [%u]\n");
    }

    return 0;
  }

  return v1;
}

uint64_t ETLPRLWriteStatusIsSuccess(unsigned int a1)
{
  if (a1 < 2)
  {
    return 1;
  }

  if (a1 == 3)
  {
    _ETLDebugPrint("ETLPRLWriteStatusIsSuccess", "PRL Write status kStatusPRLWriteOverflow [%u]\n", 3);
    return 0;
  }

  else
  {
    if (a1 == 2)
    {
      _ETLDebugPrint("ETLPRLWriteStatusIsSuccess", "PRL Write status kStatusPRLWriteOutOfSeq [%u]\n", 2);
    }

    else
    {
      _ETLDebugPrint("ETLPRLWriteStatusIsSuccess", "PRL Write status Invalid [%u]\n", a1);
    }

    return 0;
  }
}

uint64_t ETLPRLCreateReadCommand(uint64_t a1, uint64_t a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace <= 2)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 3, FreeSpace);
  }

  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();

  return HDLCFrameInjectUnsignedChar();
}

uint64_t ETLPRLParseReadResponse(uint64_t *a1, int a2, void *__dst, uint64_t a4, unsigned int *a5, _BYTE *a6)
{
  *a5 = 0;
  *a6 = 0;
  if (*(a1 + 2) <= 7u)
  {
    _ETLDebugPrint("ETLPRLParseReadResponse", "PRL Read Response size [%u] bytes not enough, need atleast [%u] bytes\n", *(a1 + 2), 8);
    return 0;
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v7 = *(v6 + 1);
      if (*(v6 + 1))
      {
        v8 = v7 == 2;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        v9 = *(v6 + 4);
        if (v9 == a2)
        {
          *a6 = *(v6 + 5);
          v10 = *(v6 + 6);
          if (*(v6 + 6))
          {
            v11 = v10 >> 3;
            if (v10 >> 3 > a4)
            {
              _ETLDebugPrint("ETLPRLParseReadResponse", "PRL Read Destination Buffer not sufficient. Passed[%u] Required[%u]\n", a4, v10 >> 3);
              return 0;
            }

            v13 = (v6 + 8);
            memcpy(__dst, v13, v10 >> 3);
            *a5 = v11;
          }

          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLPRLParseReadResponse", "Sequence number out of order Expected[%u] Received[%u]\n", a2, v9);
          return 0;
        }
      }

      else
      {
        if (v7 == 1)
        {
          _ETLDebugPrint("ETLPRLReadStatusIsSuccess", "PRL Read status kStatusPRLNVReadFail [%u]\n", __dst, a4);
        }

        else
        {
          _ETLDebugPrint("ETLPRLReadStatusIsSuccess", "PRL Read status Invalid [%u]\n", __dst, a4);
        }

        _ETLDebugPrint("ETLPRLParseReadResponse", "PRL NV Read Status [%u]\n", *(v6 + 2));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLPRLParseReadResponse", "PRL Get payload failed\n", __dst, a4);
      return 0;
    }
  }
}

uint64_t ETLPRLCreateWriteCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 + 6;
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < v5)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v5, FreeSpace);
  }

  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedShort();

  return HDLCFrameInject();
}

uint64_t ETLPRLParseWriteResponse(uint64_t *a1)
{
  if (*(a1 + 2) <= 3u)
  {
    _ETLDebugPrint("ETLPRLParseWriteResponse", "PRL Write Response size [%u] bytes not enough, need atleast [%u] bytes\n", *(a1 + 2), 4);
    return 0;
  }

  else
  {
    v1 = *a1;
    if (*a1)
    {
      v2 = *(v1 + 1);
      if (v2 < 2)
      {
        return 1;
      }

      else
      {
        if (v2 == 3)
        {
          _ETLDebugPrint("ETLPRLWriteStatusIsSuccess", "PRL Write status kStatusPRLWriteOverflow [%u]\n");
        }

        else if (v2 == 2)
        {
          _ETLDebugPrint("ETLPRLWriteStatusIsSuccess", "PRL Write status kStatusPRLWriteOutOfSeq [%u]\n");
        }

        else
        {
          _ETLDebugPrint("ETLPRLWriteStatusIsSuccess", "PRL Write status Invalid [%u]\n");
        }

        _ETLDebugPrint("ETLPRLParseWriteResponse", "PRL NV Write Status [%u]\n", *(v1 + 2));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLPRLParseWriteResponse", "PRL Get payload failed\n");
      return 0;
    }
  }
}

uint64_t ETLPRLRead(uint64_t (**a1)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), char *a2, unsigned int a3, _DWORD *a4, uint64_t a5)
{
  v5 = 0;
  if (a1 && a2 && a3 && a4)
  {
    __dst = a2;
    v20 = a3;
    v21 = 0;
    v8 = 0;
    v28 = 1;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v9;
    v23 = v9;
    *a4 = 0;
    v10 = 0uLL;
    while (1)
    {
      v27 = 0;
      v25 = v10;
      v26 = v10;
      if ((HDLCFrameCreateUplink() & 1) == 0)
      {
        _ETLDebugPrint("ETLPRLRead", "Failed to create command frame\n");
        HDLCFrameFree();
        return 0;
      }

      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace <= 2)
      {
        _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 3, FreeSpace);
      }

      HDLCFrameInjectUnsignedChar();
      HDLCFrameInjectUnsignedChar();
      if (HDLCFrameInjectUnsignedChar())
      {
        v5 = malloc((2 * DWORD2(v25) + 32));
        if (!v5)
        {
          goto LABEL_24;
        }

        v12 = HDLCFrameEncode();
        if (!v12)
        {
          goto LABEL_22;
        }

        v13 = v12;
        v29 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v5, v12);
        }

        if (*a1)
        {
          v14 = (*a1)(a1, v5, v13, &v29, 1, a5, 0);
          v15 = v29;
          free(v5);
          v5 = 0;
          if (!v14 || v15 != v13)
          {
            goto LABEL_24;
          }

          LOBYTE(v29) = 73;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          if (ETLFindMatchingResponseUsingBuffer(a1, &v22, &_ETLResponseRingBuffer, &v29, a5) && ETLPRLParseReadResponse(&v22, v8, __dst, v20, &v21, &v28))
          {
            __dst += v21;
            v20 -= v21;
            *a4 += v21;
            ++v8;
            v5 = 1;
            goto LABEL_24;
          }
        }

        else
        {
LABEL_22:
          free(v5);
        }
      }

      v5 = 0;
LABEL_24:
      HDLCFrameFree();
      v16 = v28;
      HDLCFrameFree();
      if (v5)
      {
        v10 = 0uLL;
        if (v16)
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

void *ETLPRLWrite(uint64_t (**a1)(void, void, void, void, void, void, void), uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a3;
      if (a3)
      {
        v8 = a1;
        v9 = 0;
        v28 = 0xAAAAAAAAAAAAAAAALL;
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v26 = v10;
        v27 = v10;
        v11 = 0uLL;
        while (1)
        {
          v31 = 0;
          v29 = v11;
          v30 = v11;
          if ((HDLCFrameCreateUplink() & 1) == 0)
          {
            break;
          }

          v28 = 0;
          v26 = 0u;
          v27 = 0u;
          if (v6 >= 0x78)
          {
            v12 = 120;
          }

          else
          {
            v12 = v6;
          }

          if (v6 <= 0x78)
          {
            v13 = v6;
          }

          else
          {
            v13 = v6 - 120;
          }

          FreeSpace = HDLCFrameGetFreeSpace();
          if (FreeSpace < v12 + 6)
          {
            _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v12 + 6, FreeSpace);
          }

          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedShort();
          if (!HDLCFrameInject())
          {
            goto LABEL_29;
          }

          v4 = malloc((2 * DWORD2(v29) + 32));
          if (!v4)
          {
            goto LABEL_30;
          }

          v15 = HDLCFrameEncode();
          if (!v15)
          {
            goto LABEL_28;
          }

          v16 = v15;
          v32 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v4, v15);
          }

          v17 = *v8;
          if (!*v8)
          {
LABEL_28:
            free(v4);
LABEL_29:
            v4 = 0;
LABEL_30:
            HDLCFrameFree();
            HDLCFrameFree();
            return v4;
          }

          v18 = v8;
          v19 = a4;
          v20 = v17(v18, v4, v16, &v32, 1, a4, 0);
          v21 = v32;
          free(v4);
          v4 = 0;
          if (!v20)
          {
            goto LABEL_30;
          }

          v22 = v21 == v16;
          a4 = v19;
          v8 = a1;
          if (!v22)
          {
            goto LABEL_30;
          }

          LOBYTE(v32) = 72;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          if (!ETLFindMatchingResponseUsingBuffer(a1, &v26, &_ETLResponseRingBuffer, &v32, a4))
          {
            goto LABEL_29;
          }

          v4 = ETLPRLParseWriteResponse(&v26);
          HDLCFrameFree();
          HDLCFrameFree();
          if (v4)
          {
            ++v9;
            v5 += v12;
            v23 = v6 > 0x78;
            v6 = v13;
            v11 = 0uLL;
            if (v23)
            {
              continue;
            }
          }

          return v4;
        }

        _ETLDebugPrint("ETLPRLWrite", "Failed to create command frame\n");
        HDLCFrameFree();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t ETLFusingCreateReadQfpromFuseCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  memset(v4, 0, sizeof(v4));
  return ETLFusingCreateQfpromFusingCommand(a1, a2, 0, a3, v4);
}

uint64_t ETLFusingCreateQfpromFusingCommand(uint64_t a1, unsigned __int16 a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 0x23)
  {
    _ETLDebugPrint("ETLFusingCreateQfpromFusingCommand", "Remaining %u not enough %u\n");
    return 0;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar())
  {
    return 0;
  }

  return HDLCFrameInject();
}

uint64_t ETLFusingParseReadQfpromFuseResponse(int **a1, uint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 2);
  v4 = v3 - 4;
  if (v3 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v5 = *a1;
    v6 = **a1;
    if (v6 == 75)
    {
      if (BYTE1(v6) == 253)
      {
        v7 = HIWORD(v6);
        if (v7 == 11)
        {
          if (v4 <= 0x21)
          {
            _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Payload length %u less than needed %u\n", v4, 34);
            return 0;
          }

          else
          {
            v8 = v5[1];
            v9 = *(v5 + 6);
            *a3 = *(v5 + 2);
            a3[1] = v9;
            if (v8)
            {
              _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Status returned was %u, expected %u\n", v8, 0);
              return 0;
            }

            else
            {
              return 1;
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v7, 11);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v6), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLFusingParseWriteQfpromFuseResponse(unsigned int *a1)
{
  v1 = a1[2];
  v2 = v1 - 4;
  if (v1 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a1[2], 4uLL);
    return 0;
  }

  else
  {
    v3 = **a1;
    if (v3 == 75)
    {
      if (BYTE1(v3) == 253)
      {
        v4 = HIWORD(v3);
        if (v4 == 11)
        {
          if (v2 <= 0x21)
          {
            _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Payload length %u less than needed %u\n", v2, 34);
            return 0;
          }

          else if (*(*a1 + 4))
          {
            _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Status returned was %u, expected %u\n", *(*a1 + 4), 0);
            return 0;
          }

          else
          {
            return 1;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v4, 11);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v3), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLFusingParseVerifyQfpromFuseResponse(unsigned int *a1)
{
  v1 = a1[2];
  v2 = v1 - 4;
  if (v1 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a1[2], 4uLL);
    return 0;
  }

  else
  {
    v3 = **a1;
    if (v3 == 75)
    {
      if (BYTE1(v3) == 253)
      {
        v4 = HIWORD(v3);
        if (v4 == 11)
        {
          if (v2 <= 0x21)
          {
            _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Payload length %u less than needed %u\n", v2, 34);
            return 0;
          }

          else if (*(*a1 + 4))
          {
            _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Status returned was %u, expected %u\n", *(*a1 + 4), 0);
            return 0;
          }

          else
          {
            return 1;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v4, 11);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v3), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLFusingProgramQfpromFuse(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, unsigned int a5, uint64_t a6)
{
  v9 = a2;
  v23 = *MEMORY[0x29EDCA608];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __dst = v11;
  v21 = v11;
  v19[0] = v11;
  v19[1] = v11;
  v18[3] = 0xAAAAAAAAAAAAAAAALL;
  memset(v18 + 1, 170, 24);
  if (a5 > 0x1F)
  {
    v13 = a4[1];
    __dst = *a4;
    v21 = v13;
  }

  else
  {
    _ETLDebugPrint("ETLFusingProgramQfpromFuse", "Data length needed %u  provided %u - padding the rest with zeroes\n", 32, a5);
    memcpy(&__dst, a4, a5);
    bzero(&__dst + a5, 32 - a5);
  }

  memset(__b, 170, sizeof(__b));
  TelephonyUtilLogBinaryToBuffer();
  _ETLDebugPrint("ETLFusingShowQfpromFuse", "%s fuse %u, value: \t%s\n", "Programming", v9, __b);
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v14;
  v17 = v14;
  if (ETLFusingPerformQfpromFusingOperation(a1, v9, 0, 0, v19, &v16, a6))
  {
    memset(__b, 170, sizeof(__b));
    TelephonyUtilLogBinaryToBuffer();
    _ETLDebugPrint("ETLFusingShowQfpromFuse", "%s fuse %u, value: \t%s\n", "Read back", v9, __b);
    LOBYTE(v18[0]) = __dst & ~v16;
    if ((v16 | __dst) == __dst)
    {
      BYTE1(v18[0]) = BYTE1(__dst) & ~BYTE1(v16);
      if ((BYTE1(v16) | BYTE1(__dst)) == BYTE1(__dst))
      {
        BYTE2(v18[0]) = BYTE2(__dst) & ~BYTE2(v16);
        if ((BYTE2(v16) | BYTE2(__dst)) == BYTE2(__dst))
        {
          BYTE3(v18[0]) = BYTE3(__dst) & ~BYTE3(v16);
          if ((BYTE3(v16) | BYTE3(__dst)) == BYTE3(__dst))
          {
            BYTE4(v18[0]) = BYTE4(__dst) & ~BYTE4(v16);
            if ((BYTE4(v16) | BYTE4(__dst)) == BYTE4(__dst))
            {
              BYTE5(v18[0]) = BYTE5(__dst) & ~BYTE5(v16);
              if ((BYTE5(v16) | BYTE5(__dst)) == BYTE5(__dst))
              {
                BYTE6(v18[0]) = BYTE6(__dst) & ~BYTE6(v16);
                if ((BYTE6(v16) | BYTE6(__dst)) == BYTE6(__dst))
                {
                  HIBYTE(v18[0]) = BYTE7(__dst) & ~BYTE7(v16);
                  if ((BYTE7(v16) | BYTE7(__dst)) == BYTE7(__dst))
                  {
                    LOBYTE(v18[1]) = BYTE8(__dst) & ~BYTE8(v16);
                    if ((BYTE8(v16) | BYTE8(__dst)) == BYTE8(__dst))
                    {
                      BYTE1(v18[1]) = BYTE9(__dst) & ~BYTE9(v16);
                      if ((BYTE9(v16) | BYTE9(__dst)) == BYTE9(__dst))
                      {
                        BYTE2(v18[1]) = BYTE10(__dst) & ~BYTE10(v16);
                        if ((BYTE10(v16) | BYTE10(__dst)) == BYTE10(__dst))
                        {
                          BYTE3(v18[1]) = BYTE11(__dst) & ~BYTE11(v16);
                          if ((BYTE11(v16) | BYTE11(__dst)) == BYTE11(__dst))
                          {
                            BYTE4(v18[1]) = BYTE12(__dst) & ~BYTE12(v16);
                            if ((BYTE12(v16) | BYTE12(__dst)) == BYTE12(__dst))
                            {
                              BYTE5(v18[1]) = BYTE13(__dst) & ~BYTE13(v16);
                              if ((BYTE13(v16) | BYTE13(__dst)) == BYTE13(__dst))
                              {
                                BYTE6(v18[1]) = BYTE14(__dst) & ~BYTE14(v16);
                                if ((BYTE14(v16) | BYTE14(__dst)) == BYTE14(__dst))
                                {
                                  HIBYTE(v18[1]) = HIBYTE(__dst) & ~HIBYTE(v16);
                                  if ((HIBYTE(v16) | HIBYTE(__dst)) == HIBYTE(__dst))
                                  {
                                    LOBYTE(v18[2]) = v21 & ~v17;
                                    if ((v17 | v21) == v21)
                                    {
                                      BYTE1(v18[2]) = BYTE1(v21) & ~BYTE1(v17);
                                      if ((BYTE1(v17) | BYTE1(v21)) == BYTE1(v21))
                                      {
                                        BYTE2(v18[2]) = BYTE2(v21) & ~BYTE2(v17);
                                        if ((BYTE2(v17) | BYTE2(v21)) == BYTE2(v21))
                                        {
                                          BYTE3(v18[2]) = BYTE3(v21) & ~BYTE3(v17);
                                          if ((BYTE3(v17) | BYTE3(v21)) == BYTE3(v21))
                                          {
                                            BYTE4(v18[2]) = BYTE4(v21) & ~BYTE4(v17);
                                            if ((BYTE4(v17) | BYTE4(v21)) == BYTE4(v21))
                                            {
                                              BYTE5(v18[2]) = BYTE5(v21) & ~BYTE5(v17);
                                              if ((BYTE5(v17) | BYTE5(v21)) == BYTE5(v21))
                                              {
                                                BYTE6(v18[2]) = BYTE6(v21) & ~BYTE6(v17);
                                                if ((BYTE6(v17) | BYTE6(v21)) == BYTE6(v21))
                                                {
                                                  HIBYTE(v18[2]) = BYTE7(v21) & ~BYTE7(v17);
                                                  if ((BYTE7(v17) | BYTE7(v21)) == BYTE7(v21))
                                                  {
                                                    LOBYTE(v18[3]) = BYTE8(v21) & ~BYTE8(v17);
                                                    if ((BYTE8(v17) | BYTE8(v21)) == BYTE8(v21))
                                                    {
                                                      BYTE1(v18[3]) = BYTE9(v21) & ~BYTE9(v17);
                                                      if ((BYTE9(v17) | BYTE9(v21)) == BYTE9(v21))
                                                      {
                                                        BYTE2(v18[3]) = BYTE10(v21) & ~BYTE10(v17);
                                                        if ((BYTE10(v17) | BYTE10(v21)) == BYTE10(v21))
                                                        {
                                                          BYTE3(v18[3]) = BYTE11(v21) & ~BYTE11(v17);
                                                          if ((BYTE11(v17) | BYTE11(v21)) == BYTE11(v21))
                                                          {
                                                            BYTE4(v18[3]) = BYTE12(v21) & ~BYTE12(v17);
                                                            if ((BYTE12(v17) | BYTE12(v21)) == BYTE12(v21))
                                                            {
                                                              BYTE5(v18[3]) = BYTE13(v21) & ~BYTE13(v17);
                                                              if ((BYTE13(v17) | BYTE13(v21)) == BYTE13(v21))
                                                              {
                                                                BYTE6(v18[3]) = BYTE14(v21) & ~BYTE14(v17);
                                                                if ((BYTE14(v17) | BYTE14(v21)) == BYTE14(v21))
                                                                {
                                                                  HIBYTE(v18[3]) = HIBYTE(v21) & ~HIBYTE(v17);
                                                                  if ((HIBYTE(v17) | HIBYTE(v21)) == HIBYTE(v21))
                                                                  {
                                                                    memset(__b, 170, sizeof(__b));
                                                                    TelephonyUtilLogBinaryToBuffer();
                                                                    _ETLDebugPrint("ETLFusingShowQfpromFuse", "%s fuse %u, value: \t%s\n", "Final write value for Programming", v9, __b);
                                                                    return ETLFusingPerformQfpromFusingOperation(a1, v9, 1, a3, v18, v19, a6);
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    _ETLDebugPrint("ETLFusingProgramQfpromFuse", "Mismatch, expected to write %02x, final value on device will be %02x\n");
  }

  else
  {
    _ETLDebugPrint("ETLFusingProgramQfpromFuse", "Failed to read the fuse %u\n");
  }

  return 0;
}

uint64_t ETLFusingPerformQfpromFusingOperation(void *a1, unsigned __int16 a2, int a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  v31 = *MEMORY[0x29EDCA608];
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLFusingPerformQfpromFusingOperation", "Faild to create uplink frame\n");
    goto LABEL_7;
  }

  if (a3)
  {
    if (a3 == 2)
    {
      if (ETLFusingCreateQfpromFusingCommand(v28, a2, 2u, a4, a5))
      {
        goto LABEL_12;
      }
    }

    else if (ETLFusingCreateQfpromFusingCommand(v28, a2, 1u, a4, a5))
    {
      goto LABEL_12;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  memset(v30, 0, sizeof(v30));
  if (!ETLFusingCreateQfpromFusingCommand(v28, a2, 0, a4, v30))
  {
    goto LABEL_7;
  }

LABEL_12:
  v14 = malloc((2 * DWORD2(v28[0]) + 32));
  if (!v14)
  {
    goto LABEL_8;
  }

  v16 = HDLCFrameEncode();
  if (!v16)
  {
    goto LABEL_31;
  }

  v17 = v16;
  LODWORD(v30[0]) = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v14, v16);
  }

  if (!*a1)
  {
LABEL_31:
    free(v14);
    goto LABEL_7;
  }

  v18 = (*a1)(a1, v14, v17, v30, 1, a7, 0);
  v19 = v30[0];
  free(v14);
  v14 = 0;
  if (v18 && v19 == v17)
  {
    LOBYTE(v30[0]) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v14 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v26, &_ETLResponseRingBuffer, v30, a7) && LOBYTE(v30[0]) == 75)
    {
      if (a3 == 2)
      {
        if (DWORD2(v26[0]) >= 4)
        {
          v20 = *&v26[0];
          v22 = **&v26[0];
          if (**&v26[0] == 75)
          {
            if (BYTE1(v22) == 253)
            {
              if (HIWORD(v22) == 11)
              {
                if ((DWORD2(v26[0]) - 4) > 0x21)
                {
                  goto LABEL_37;
                }

                goto LABEL_50;
              }

LABEL_49:
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
              goto LABEL_7;
            }

LABEL_48:
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
            goto LABEL_7;
          }

LABEL_47:
          _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
          goto LABEL_7;
        }
      }

      else if (a3 == 1)
      {
        if (DWORD2(v26[0]) >= 4)
        {
          v20 = *&v26[0];
          v21 = **&v26[0];
          if (**&v26[0] == 75)
          {
            if (BYTE1(v21) == 253)
            {
              if (HIWORD(v21) == 11)
              {
                if ((DWORD2(v26[0]) - 4) > 0x21)
                {
LABEL_37:
                  if (*(v20 + 4))
                  {
LABEL_38:
                    _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Status returned was %u, expected %u\n");
                    goto LABEL_7;
                  }

LABEL_45:
                  v14 = 1;
                  goto LABEL_8;
                }

LABEL_50:
                _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Payload length %u less than needed %u\n");
                goto LABEL_7;
              }

              goto LABEL_49;
            }

            goto LABEL_48;
          }

          goto LABEL_47;
        }
      }

      else if (DWORD2(v26[0]) >= 4)
      {
        v23 = **&v26[0];
        if (**&v26[0] == 75)
        {
          if (BYTE1(v23) == 253)
          {
            if (HIWORD(v23) == 11)
            {
              if ((DWORD2(v26[0]) - 4) > 0x21)
              {
                v24 = *(*&v26[0] + 4);
                v25 = *(*&v26[0] + 24);
                *a6 = *(*&v26[0] + 8);
                a6[1] = v25;
                if (v24)
                {
                  goto LABEL_38;
                }

                goto LABEL_45;
              }

              goto LABEL_50;
            }

            goto LABEL_49;
          }

          goto LABEL_48;
        }

        goto LABEL_47;
      }

      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
      goto LABEL_7;
    }
  }

LABEL_8:
  HDLCFrameFree();
  HDLCFrameFree();
  return v14;
}

uint64_t ETLFusingReadQfpromFuse(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, _DWORD *a5)
{
  v20 = *MEMORY[0x29EDCA608];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v5;
  v18[1] = v5;
  *a5 = 0;
  if (a4 > 0x1F)
  {
    v9 = a2;
    *&v10 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4);
    v16 = v10;
    v17 = v10;
    result = ETLFusingPerformQfpromFusingOperation(v11, v12, 0, 0, v18, &v16, v13);
    if (result)
    {
      *a5 = 32;
      v14 = v17;
      *a3 = v16;
      a3[1] = v14;
      v15 = result;
      memset(v19, 170, sizeof(v19));
      TelephonyUtilLogBinaryToBuffer();
      _ETLDebugPrint("ETLFusingShowQfpromFuse", "%s fuse %u, value: \t%s\n", "Read back", v9, v19);
      return v15;
    }
  }

  else
  {
    _ETLDebugPrint("ETLFusingReadQfpromFuse", "Data capacity %u less than required %u\n", a4, 32);
    return 0;
  }

  return result;
}

uint64_t ETLFusingVerifyQfpromFuse(void *a1, int a2, uint64_t a3, __int128 *a4, unsigned int a5, uint64_t a6)
{
  v18 = *MEMORY[0x29EDCA608];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __dst = v11;
  v16 = v11;
  if (a5 > 0x1F)
  {
    v13 = a4[1];
    __dst = *a4;
    v16 = v13;
  }

  else
  {
    _ETLDebugPrint("ETLFusingVerifyQfpromFuse", "Data length needed %u  provided %u - padding the rest with zeroes\n", 32, a5);
    memcpy(&__dst, a4, a5);
    bzero(&__dst + a5, 32 - a5);
  }

  memset(__b, 170, sizeof(__b));
  TelephonyUtilLogBinaryToBuffer();
  _ETLDebugPrint("ETLFusingShowQfpromFuse", "%s fuse %u, value: \t%s\n", "Verifying", a2, __b);
  return ETLFusingPerformQfpromFusingOperation(a1, a2, 2, a3, &__dst, __b, a6);
}

uint64_t ETLProvisionAddSecurityCommandHeader(uint64_t a1, uint64_t a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v3 = HDLCFrameGetFreeSpace();
    if (v3 <= 1)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 2, v3);
      return 0;
    }

    else
    {

      return HDLCFrameInjectUnsignedShort();
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }
}

uint64_t ETLProvisionParseSecurityResponseHeader(uint64_t a1, int a2, _WORD *a3, _DWORD *a4)
{
  result = ETLMaverickParseFACTORYResponseHeader(a1, a4, 12);
  if (result)
  {
    v9 = *a4;
    if ((*(a1 + 8) - v9) <= 3)
    {
      _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Need %u bytes, but only have %u\n");
    }

    else
    {
      v10 = (*a1 + v9);
      if (*v10 == a2)
      {
        *a3 = v10[1];
        *a4 = v9 + 4;
        return 1;
      }

      _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n");
    }

    return 0;
  }

  return result;
}

const char *ETLProvisionGetStateAsString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EE6DF10[a1];
  }
}

uint64_t ETLProvisionParseStatus(uint64_t a1, uint64_t a2)
{
  _ETLDebugPrint("ETLProvisionParseStatus", "Provisioning manifest status %u\n", *(a1 + 8));
  v4 = *(a1 + 8);
  v5 = v4 - 28;
  if (v4 == 6)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (*(a1 + 8))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < 2)
  {
    v7 = 3;
  }

  *(a2 + 4) = v7;
  return 1;
}

uint64_t ETLProvisionCreateStartProvisionCommand(uint64_t a1, uint64_t *a2)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
LABEL_9:
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    return 0;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  v3 = *(a2 + 2) + 2;
  if (HDLCFrameGetFreeSpace() < v3)
  {
    goto LABEL_9;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInject();
}

uint64_t ETLProvisionCreateStartProvisionCommand64Bit(uint64_t a1, uint64_t *a2)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
LABEL_9:
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    return 0;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  v3 = *(a2 + 2) + 2;
  if (HDLCFrameGetFreeSpace() < v3)
  {
    goto LABEL_9;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInject();
}

uint64_t ETLProvisionParseStartProvisionResponse(unsigned int *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
    return 0;
  }

  v3 = *a1;
  v4 = **a1;
  if (v4 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    return 0;
  }

  if (BYTE1(v4) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    return 0;
  }

  if (HIWORD(v4) != 12)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    return 0;
  }

  if (v2 - 4 <= 3)
  {
    _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Need %u bytes, but only have %u\n");
    return 0;
  }

  v5 = *(v3 + 4);
  if (*(v3 + 4))
  {
    _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n");
    return 0;
  }

  if (v2 - 28 > 0xFFFFFFEB || *(v3 + 6))
  {
    return v5;
  }

  v7 = *(v3 + 24);
  *a2 = *(v3 + 8);
  *(a2 + 16) = v7;
  if (v7 > 0x100 || a1[2] - 28 < v7)
  {
    return 0;
  }

  memcpy((a2 + 20), (*a1 + 28), v7);
  return 1;
}

uint64_t ETLProvisionParseStartProvisionResponse64Bit(unsigned int *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
    return 0;
  }

  v3 = *a1;
  v4 = **a1;
  if (v4 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    return 0;
  }

  if (BYTE1(v4) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    return 0;
  }

  if (HIWORD(v4) != 12)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    return 0;
  }

  if (v2 - 4 <= 3)
  {
    _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Need %u bytes, but only have %u\n");
    return 0;
  }

  if (*(v3 + 4) != 36)
  {
    _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n");
    return 0;
  }

  if (v2 - 32 > 0xFFFFFFE7 || *(v3 + 6))
  {
    return 0;
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 24);
  *(a2 + 16) = v6;
  *a2 = v5;
  if (HIDWORD(v6) > 0x100 || a1[2] - 32 < HIDWORD(v6))
  {
    return 0;
  }

  memcpy((a2 + 24), (*a1 + 32), HIDWORD(v6));
  return 1;
}

uint64_t ETLProvisionCreateFinishProvisionCommand(uint64_t a1, uint64_t *a2)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
LABEL_9:
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    return 0;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  v3 = *(a2 + 2) + 2;
  if (HDLCFrameGetFreeSpace() < v3)
  {
    goto LABEL_9;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInject();
}

uint64_t ETLProvisionParseFinishProvisionResponse(int **a1, _DWORD *a2)
{
  v2 = *(a1 + 2);
  if (v2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
    return 0;
  }

  v3 = *a1;
  v4 = **a1;
  if (v4 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    return 0;
  }

  if (BYTE1(v4) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    return 0;
  }

  if (HIWORD(v4) != 12)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    return 0;
  }

  if (v2 - 4 <= 3)
  {
    _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Need %u bytes, but only have %u\n");
    return 0;
  }

  if (*(v3 + 2) != 1)
  {
    _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n");
    return 0;
  }

  result = 0;
  if (v2 - 15 <= 0xFFFFFFF8 && !*(v3 + 3))
  {
    v6 = v3[2];
    *(a2 + 3) = *(v3 + 11);
    *a2 = v6;
    return 1;
  }

  return result;
}

uint64_t ETLProvisionGetStatus(void *a1, uint64_t a2, uint64_t a3)
{
  memset(v11, 0, sizeof(v11));
  *a2 = 0;
  if (ETLMaverickGetManifestStatus(a1, v11, a3))
  {
    _ETLDebugPrint("ETLProvisionParseStatus", "Provisioning manifest status %u\n", WORD4(v11[0]));
    v4 = WORD4(v11[0]) - 28;
    if (WORD4(v11[0]) == 6)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    if (WORD4(v11[0]))
    {
      v6 = WORD4(v11[0]) != 6;
    }

    else
    {
      v6 = 0;
    }

    if (WORD4(v11[0]))
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v4 >= 2;
    v9 = v4 >= 2 && v6;
    if (!v8)
    {
      v7 = 3;
    }

    *(a2 + 4) = v7;
    *a2 = v9;
    return 1;
  }

  else
  {
    *(a2 + 4) = 4;
    return 1;
  }
}

uint64_t ETLProvisionStart(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_19;
  }

  if (!ETLProvisionCreateStartProvisionCommand(v20, a2))
  {
    goto LABEL_19;
  }

  v8 = malloc((2 * DWORD2(v20[0]) + 32));
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  v10 = HDLCFrameEncode();
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  v22 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v9, v10);
  }

  if (!*a1)
  {
LABEL_18:
    free(v9);
LABEL_19:
    started = 0;
    goto LABEL_20;
  }

  v12 = (*a1)(a1, v9, v11, &v22, 1, a4, 0);
  v13 = v22;
  free(v9);
  if (v12)
  {
    v14 = v13 == v11;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_19;
  }

  LOBYTE(v22) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v15 = ETLFindMatchingResponseUsingBuffer(a1, v18, &_ETLResponseRingBuffer, &v22, a4);
  started = 0;
  if (v15 && v22 == 75)
  {
    started = ETLProvisionParseStartProvisionResponse(v18, a3);
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return started;
}

uint64_t ETLProvisionStart64Bit(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_19;
  }

  if (!ETLProvisionCreateStartProvisionCommand64Bit(v21, a2))
  {
    goto LABEL_19;
  }

  v8 = malloc((2 * DWORD2(v21[0]) + 32));
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  v10 = HDLCFrameEncode();
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  v23 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v9, v10);
  }

  if (!*a1)
  {
LABEL_18:
    free(v9);
LABEL_19:
    started = 0;
    goto LABEL_20;
  }

  v12 = (*a1)(a1, v9, v11, &v23, 1, a4, 0);
  v13 = v23;
  free(v9);
  if (v12)
  {
    v14 = v13 == v11;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_19;
  }

  LOBYTE(v23) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v15 = ETLFindMatchingResponseUsingBuffer(a1, v19, &_ETLResponseRingBuffer, &v23, a4);
  started = 0;
  if (v15 && v23 == 75)
  {
    started = ETLProvisionParseStartProvisionResponse64Bit(v19, a3);
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  v17 = "failed";
  if (started)
  {
    v17 = "succeeded";
  }

  _ETLDebugPrint("ETLProvisionStart64Bit", "ETLProvisionStart64Bit: %s", v17);
  return started;
}

uint64_t ETLProvisionFinish(void *a1, uint64_t *a2, _DWORD *a3, uint64_t a4)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_27;
  }

  if (!ETLProvisionCreateFinishProvisionCommand(v23, a2))
  {
    goto LABEL_27;
  }

  v8 = malloc((2 * DWORD2(v23[0]) + 32));
  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = v8;
  v10 = HDLCFrameEncode();
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = v10;
  v25 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v9, v10);
  }

  if (!*a1)
  {
LABEL_26:
    free(v9);
    goto LABEL_27;
  }

  v12 = (*a1)(a1, v9, v11, &v25, 1, a4, 0);
  v13 = v25;
  free(v9);
  if (v12)
  {
    v14 = v13 == v11;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_27;
  }

  v15 = (3 * a4);
  LOBYTE(v25) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v16 = ETLFindMatchingResponseUsingBuffer(a1, v21, &_ETLResponseRingBuffer, &v25, v15);
  v17 = 0;
  if (v16 && v25 == 75)
  {
    if (DWORD2(v21[0]) < 4)
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
    }

    else
    {
      v18 = **&v21[0];
      if (**&v21[0] == 75)
      {
        if (BYTE1(v18) == 254)
        {
          if (HIWORD(v18) == 12)
          {
            if ((DWORD2(v21[0]) - 4) <= 3)
            {
              _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Need %u bytes, but only have %u\n");
            }

            else
            {
              if (*(*&v21[0] + 4) == 1)
              {
                v17 = 0;
                if ((DWORD2(v21[0]) - 15) <= 0xFFFFFFF8 && !*(*&v21[0] + 6))
                {
                  v19 = *(*&v21[0] + 8);
                  *(a3 + 3) = *(*&v21[0] + 11);
                  *a3 = v19;
                  v17 = 1;
                }

                goto LABEL_28;
              }

              _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n");
            }
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
        }
      }

      else
      {
        _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
      }
    }

LABEL_27:
    v17 = 0;
  }

LABEL_28:
  HDLCFrameFree();
  HDLCFrameFree();
  return v17;
}

uint64_t ETLEFS2PrintError(uint64_t __errnum)
{
  v1 = __errnum;
  v18 = *MEMORY[0x29EDCA608];
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *__dst = 0u;
  if (__errnum <= 302)
  {
    if (__errnum > 121)
    {
      switch(__errnum)
      {
        case 0x7A:
          v2 = "Writing beyong quota.";
          goto LABEL_30;
        case 0x12D:
          v2 = "No media present.";
          goto LABEL_30;
        case 0x12E:
          v2 = "Bad formatted media.";
          goto LABEL_30;
      }
    }

    else
    {
      switch(__errnum)
      {
        case 0:
          return __errnum;
        case 0x22:
          v2 = "Parameter out of range.";
          goto LABEL_30;
        case 0x74:
          v2 = "Stale remote file handle.";
          goto LABEL_30;
      }
    }

LABEL_33:
    strerror_r(__errnum, __dst, 0xFEuLL);
    goto LABEL_31;
  }

  if (__errnum <= 0x8000)
  {
    switch(__errnum)
    {
      case 0x12F:
        v2 = "Not an EFS2 item file.";
        goto LABEL_30;
      case 0x130:
        v2 = "Rollback failed while backing orig file.";
        goto LABEL_30;
      case 0x8000:
        v2 = "End of file. Internal error.";
        goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (__errnum > 65534)
  {
    if (__errnum == 0xFFFF)
    {
      v2 = "Internal Error";
      goto LABEL_30;
    }

    if (__errnum == 0x10000)
    {
      v2 = "File has no number to EFS file mapping";
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (__errnum == 32769)
  {
    v2 = "Untranslated SFAT error code.";
    goto LABEL_30;
  }

  if (__errnum != 32770)
  {
    goto LABEL_33;
  }

  v2 = "Untranslated HFAT error code.";
LABEL_30:
  strncpy(__dst, v2, 0xFEuLL);
LABEL_31:
  fprintf(*MEMORY[0x29EDCA610], "Error: [%d] ETL EFS - %s\n", v1, __dst);
  return _ETLDebugPrint("ETLEFS2PrintError", "Error: [%d] ETL EFS - %s\n", v1, __dst);
}

uint64_t ETLEFS2CreatePutCommand(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  if (a7 > 0x7C00)
  {
    return 0;
  }

  v7 = a7;
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  v9 = v7 + strlen(a5) + 1 + 6;
  if (HDLCFrameGetFreeSpace() < v9)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    return 0;
  }

  if (!HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInject())
  {
    return 0;
  }

  return HDLCFrameInject();
}

BOOL ETLEFS2ParsePutResponse(int **a1, int a2, _WORD *a3, _DWORD *a4)
{
  *a4 = 0xFFFF;
  v4 = *(a1 + 2);
  v5 = v4 - 4;
  if (v4 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  v6 = *a1;
  v7 = **a1;
  if (v7 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
    return 0;
  }

  v8 = HIWORD(v7);
  v9 = BYTE1(v7);
  if (a2)
  {
    v10 = 62;
  }

  else
  {
    v10 = 19;
  }

  if (v9 != v10)
  {
    _ETLDebugPrint("ETLEFS2ParseHeader", "Subsys mismatch, expected 0x%x, got 0x%x\n", v10, v9);
    goto LABEL_13;
  }

  if (v8 != 38)
  {
LABEL_13:
    _ETLDebugPrint("ETLEFS2ParseHeader", "Command code mismatch, expected 0x%x, got 0x%x\n", 38, v8);
    return 0;
  }

  if (v5 <= 5)
  {
    _ETLDebugPrint("ETLEFS2ParsePutResponse", "Needed %u bytes, available %u\n", 6, v5);
    return 0;
  }

  else
  {
    *a3 = *(v6 + 2);
    v11 = *(v6 + 6);
    *a4 = v11;
    return v11 == 0;
  }
}

uint64_t ETLEFS2CreateGetCommand(uint64_t a1, int a2, uint64_t a3, const char *a4, uint64_t a5, unsigned int a6)
{
  if (a6 >= 0x7C00)
  {
    v7 = 31744;
  }

  else
  {
    v7 = a6;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  v8 = v7 + strlen(a4) + 1 + 6;
  if (HDLCFrameGetFreeSpace() < v8)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    return 0;
  }

  if (!HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInject();
}

uint64_t ETLEFS2CreateStatCommand(uint64_t a1, int a2, const char *a3)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  v4 = strlen(a3) + 1;
  if (HDLCFrameGetFreeSpace() < v4)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    return 0;
  }

  return HDLCFrameInject();
}

uint64_t ETLEFS2ParseGetResponse(int **a1, int a2, void *__dst, unsigned int a4, _WORD *a5, _DWORD *a6, _DWORD *a7)
{
  *a6 = 0xFFFF;
  v7 = *(a1 + 2);
  v8 = v7 - 4;
  if (v7 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  v9 = *a1;
  v10 = **a1;
  if (v10 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
    return 0;
  }

  v11 = HIWORD(v10);
  v12 = BYTE1(v10);
  if (a2)
  {
    v13 = 62;
  }

  else
  {
    v13 = 19;
  }

  if (v12 != v13)
  {
    _ETLDebugPrint("ETLEFS2ParseHeader", "Subsys mismatch, expected 0x%x, got 0x%x\n", v13, v12);
    goto LABEL_14;
  }

  if (v11 != 39)
  {
LABEL_14:
    _ETLDebugPrint("ETLEFS2ParseHeader", "Command code mismatch, expected 0x%x, got 0x%x\n", 39, v11);
    return 0;
  }

  if (v8 <= 9)
  {
    _ETLDebugPrint("ETLEFS2ParseGetResponse", "Needed %u bytes, available %u\n", 10, v8);
    return 0;
  }

  else
  {
    *a7 = v9[1];
    v14 = v9[2];
    *a6 = v14;
    *a5 = *(v9 + 6);
    if (v14)
    {
      return 0;
    }

    else
    {
      v16 = v7 - 14;
      if (v16 <= a4)
      {
        memcpy(__dst, v9 + 14, v16);
        return 1;
      }

      else
      {
        _ETLDebugPrint("ETLEFS2ParseGetResponse", "Capacity %u is not enough for response of size %u\n", a4, v16);
        return 0;
      }
    }
  }
}

uint64_t ETLEFS2ParseStatResponse(int **a1, int a2, _DWORD *a3, _DWORD *a4)
{
  *a3 = 0xFFFF;
  v4 = *(a1 + 2);
  v5 = v4 - 4;
  if (v4 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  v6 = *a1;
  v7 = **a1;
  if (v7 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
    return 0;
  }

  v8 = HIWORD(v7);
  v9 = BYTE1(v7);
  if (a2)
  {
    v10 = 62;
  }

  else
  {
    v10 = 19;
  }

  if (v9 != v10)
  {
    _ETLDebugPrint("ETLEFS2ParseHeader", "Subsys mismatch, expected 0x%x, got 0x%x\n", v10, v9);
    goto LABEL_14;
  }

  if (v8 != 15)
  {
LABEL_14:
    _ETLDebugPrint("ETLEFS2ParseHeader", "Command code mismatch, expected 0x%x, got 0x%x\n", 15, v8);
    return 0;
  }

  if (v5 <= 0x1B)
  {
    _ETLDebugPrint("ETLEFS2ParseStatResponse", "Needed %u bytes, available %u\n", 28, v5);
    return 0;
  }

  else
  {
    v11 = v6[1];
    *a3 = v11;
    if (v11)
    {
      return 0;
    }

    else
    {
      *a4 = v6[3];
      return 1;
    }
  }
}

uint64_t ETLEFS2SelectorFromString(const char *a1, _DWORD *a2)
{
  if (!strcmp(a1, "prim") || !strcmp(a1, "primary"))
  {
    *a2 = 0;
    return 1;
  }

  else if (!strcmp(a1, "alt") || !strcmp(a1, "alternate"))
  {
    *a2 = 1;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ETLEFS2CreateSyncNoWaitCommand(uint64_t a1, uint64_t a2, const char *a3)
{
  if (a1 && a3)
  {
    if (HDLCFrameGetFreeSpace() < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    }

    else if ((HDLCFrameInject() & 1) == 0)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    }

    v4 = strlen(a3) + 3;
    FreeSpace = HDLCFrameGetFreeSpace();
    if (FreeSpace >= v4)
    {
      if (HDLCFrameInjectUnsignedShort())
      {
        if (HDLCFrameInject())
        {
          return 1;
        }

        _ETLDebugPrint("ETLEFS2CreateSyncNoWaitCommand", "failed adding path to HDLC frame\n", v7, v8);
      }

      else
      {
        _ETLDebugPrint("ETLEFS2CreateSyncNoWaitCommand", "failed adding sequenceNumber to HDLC frame\n", v7, v8);
      }
    }

    else
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v4, FreeSpace);
      _ETLDebugPrint("ETLEFS2CreateSyncNoWaitCommand", "Needed %u bytes, but not enough free space\n");
    }
  }

  else
  {
    _ETLDebugPrint("ETLEFS2CreateSyncNoWaitCommand", "invalid arguments:  frame = %p, path = %p\n");
  }

  return 0;
}

uint64_t ETLEFS2ParseSyncNoWaitResponse(int **a1, _WORD *a2, _DWORD *a3, _DWORD *a4)
{
  *a4 = 0xFFFF;
  if (!a1 || !a2 || !a3)
  {
    _ETLDebugPrint("ETLEFS2ParseSyncNoWaitResponse", "invalid arguments:  frame = %p, sequenceNumber = %p, syncToken = %p, resposneErrno = %p\n");
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = v4 - 4;
  if (v4 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
LABEL_23:
    _ETLDebugPrint("ETLEFS2ParseSyncNoWaitResponse", "failed parsing header\n");
    return 0;
  }

  v6 = *a1;
  v7 = **a1;
  if (v7 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_23;
  }

  if (BYTE1(v7) != 19)
  {
    _ETLDebugPrint("ETLEFS2ParseHeader", "Subsys mismatch, expected 0x%x, got 0x%x\n", 19, BYTE1(v7));
    goto LABEL_22;
  }

  if (HIWORD(v7) != 48)
  {
LABEL_22:
    _ETLDebugPrint("ETLEFS2ParseHeader", "Command code mismatch, expected 0x%x, got 0x%x\n");
    goto LABEL_23;
  }

  if (v5 <= 9)
  {
    _ETLDebugPrint("ETLEFS2ParseSyncNoWaitResponse", "needed %u bytes, available %u\n");
    return 0;
  }

  *a2 = *(v6 + 2);
  *a3 = *(v6 + 6);
  v8 = *(v6 + 10);
  *a4 = v8;
  if (v8)
  {
    v9 = v8 == 306;
  }

  else
  {
    v9 = 1;
  }

  result = v9;
  if (v8)
  {
    if (v8 != 306)
    {
      v11 = result;
      _ETLDebugPrint("ETLEFS2ParseSyncNoWaitResponse", "sync was not successful, errno %u\n", 0);
      return v11;
    }
  }

  return result;
}

uint64_t ETLEFS2SyncNoWait(void *a1, uint64_t a2, const char *a3, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  v36 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  if (!a1 || !a3 || !a4 || !a5)
  {
    _ETLDebugPrint("ETLEFS2SyncNoWait", "invalid arguments:  transport = %p, path = %p, syncToken = %p, responseErrno = %p\n", a3, a4, a5, a6);
LABEL_26:
    v34 = 0;
    goto LABEL_27;
  }

  *a5 = 0xFFFF;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLEFS2SyncNoWait", "Failed to create command frame\n", v12, v13, v14, v15);
    goto LABEL_26;
  }

  if ((ETLEFS2CreateSyncNoWaitCommand(v39, a2, a3) & 1) == 0)
  {
    _ETLDebugPrint("ETLEFS2SyncNoWait", "failed to create EFS sync command\n", v16, v17, v18, v19);
    goto LABEL_26;
  }

  v20 = malloc((2 * DWORD2(v39[0]) + 32));
  if (!v20)
  {
LABEL_25:
    _ETLDebugPrint("ETLEFS2SyncNoWait", "failed to send EFS sync command\n");
    goto LABEL_26;
  }

  v21 = v20;
  v22 = HDLCFrameEncode();
  if (!v22)
  {
    goto LABEL_24;
  }

  v23 = v22;
  v41 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v21, v22);
  }

  if (!*a1)
  {
LABEL_24:
    free(v21);
    goto LABEL_25;
  }

  v24 = (*a1)(a1, v21, v23, &v41, 1, a6, 0);
  v25 = v41;
  free(v21);
  if (!v24 || v25 != v23)
  {
    goto LABEL_25;
  }

  LOBYTE(v41) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  if (!ETLFindMatchingResponseUsingBuffer(a1, v37, &_ETLResponseRingBuffer, &v41, a6) || v41 != 75)
  {
    _ETLDebugPrint("ETLEFS2SyncNoWait", "failed to find EFS sync command response\n", v26, v27, v28, v29);
    goto LABEL_26;
  }

  if ((ETLEFS2ParseSyncNoWaitResponse(v37, &v36, a4, a5) & 1) == 0)
  {
    _ETLDebugPrint("ETLEFS2SyncNoWait", "failed parsing EFS sync response\n", v30, v31, v32, v33);
    goto LABEL_26;
  }

  if (v36 != a2)
  {
    _ETLDebugPrint("ETLEFS2SyncNoWait", "sequence number out of order, got %u, sent %u\n", v30, v31, v32, v33);
    goto LABEL_26;
  }

  v34 = 1;
LABEL_27:
  HDLCFrameFree();
  HDLCFrameFree();
  return v34;
}

uint64_t ETLEFS2Put(void *a1, int a2, uint64_t a3, uint64_t a4, char *__s, uint64_t a6, uint64_t a7, _DWORD *a8, int a9)
{
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  *a8 = 0xFFFF;
  strlen(__s);
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLEFS2Put", "Failed to create command frame\n");
    goto LABEL_22;
  }

  if (!ETLEFS2CreatePutCommand(v29, a2, a3, a4, __s, a6, a7))
  {
    goto LABEL_22;
  }

  v17 = malloc((2 * DWORD2(v29[0]) + 32));
  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = v17;
  v19 = HDLCFrameEncode();
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  v31 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v18, v19);
  }

  if (!*a1)
  {
LABEL_24:
    free(v18);
    goto LABEL_22;
  }

  v21 = (*a1)(a1, v18, v20, &v31, 1, a9, 0);
  v22 = v31;
  free(v18);
  if (v21)
  {
    v23 = v22 == v20;
  }

  else
  {
    v23 = 0;
  }

  if (!v23)
  {
    goto LABEL_22;
  }

  LOBYTE(v31) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v24 = ETLFindMatchingResponseUsingBuffer(a1, v27, &_ETLResponseRingBuffer, &v31, a9);
  v25 = 0;
  if (v24 && v31 == 75)
  {
    LOWORD(v31) = -21846;
    if (!ETLEFS2ParsePutResponse(v27, a2, &v31, a8))
    {
LABEL_22:
      v25 = 0;
      goto LABEL_23;
    }

    v25 = 1;
    if (v31 != a4 && a4 + 1 != v31)
    {
      _ETLDebugPrint("ETLEFS2Put", "Sequence number out of order, got %u, sent %u\n");
      goto LABEL_22;
    }
  }

LABEL_23:
  HDLCFrameFree();
  HDLCFrameFree();
  return v25;
}

uint64_t ETLEFS2Get(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), int a2, uint64_t a3, char *__s, void *a5, unsigned int a6, _DWORD *a7, unsigned int *a8, unsigned int a9)
{
  v38 = 0;
  if ((ETLEFS2GetSize(a1, a2, __s, &v38, a7, a9) & 1) == 0)
  {
    _ETLDebugPrint("ETLEFS2Get", "Failed to get size of NV item. Error [%d]\n");
    return 0;
  }

  v17 = v38;
  if (!v38)
  {
    _ETLDebugPrint("ETLEFS2Get", "NV file size is ZERO\n");
    return 0;
  }

  memset(v36, 0, sizeof(v36));
  v37 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  *a7 = 0xFFFF;
  strlen(__s);
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLEFS2Get", "Failed to create command frame\n");
  }

  v18 = calloc(v17, 1uLL);
  if (v18)
  {
    __src = v18;
    if (ETLEFS2CreateGetCommand(v36, a2, a3, __s, v19, v17))
    {
      v32 = a5;
      v20 = malloc((2 * DWORD2(v36[0]) + 32));
      if (v20)
      {
        v21 = v20;
        v22 = HDLCFrameEncode();
        if (!v22)
        {
          goto LABEL_26;
        }

        v23 = v22;
        v39 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v21, v22);
        }

        if (*a1)
        {
          v31 = v23;
          v24 = (*a1)(a1, v21, v23, &v39, 1, a9, 0);
          v30 = v39;
          free(v21);
          v25 = 0;
          if (!v24 || v30 != v31)
          {
            goto LABEL_28;
          }

          LOBYTE(v39) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v26 = ETLFindMatchingResponseUsingBuffer(a1, v34, &_ETLResponseRingBuffer, &v39, a9);
          v25 = 0;
          if (!v26 || v39 != 75)
          {
            goto LABEL_28;
          }

          LOWORD(v39) = -21846;
          if (ETLEFS2ParseGetResponse(v34, a2, __src, v17, &v39, a7, a8))
          {
            if (v39 == a3 || a3 + 1 == v39)
            {
              if (*a8 >= a6)
              {
                v29 = a6;
              }

              else
              {
                v29 = *a8;
              }

              *a8 = v29;
              memcpy(v32, __src, v29);
              v25 = 1;
              goto LABEL_28;
            }

            _ETLDebugPrint("ETLEFS2Get", "Sequence number out of order, got %u, sent %u\n", v39, a3);
          }
        }

        else
        {
LABEL_26:
          free(v21);
        }
      }
    }

    v25 = 0;
LABEL_28:
    v28 = v25;
    free(__src);
    goto LABEL_29;
  }

  v28 = 0;
LABEL_29:
  HDLCFrameFree();
  HDLCFrameFree();
  return v28;
}

uint64_t ETLEFS2GetSize(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), int a2, char *__s, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  *a5 = 0xFFFF;
  strlen(__s);
  if (HDLCFrameCreateUplink())
  {
    if (HDLCFrameGetFreeSpace() < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    }

    else
    {
      LOBYTE(v30) = 75;
      if (a2)
      {
        v12 = 62;
      }

      else
      {
        v12 = 19;
      }

      BYTE1(v30) = v12;
      HIWORD(v30) = 15;
      if (HDLCFrameInject())
      {
        v13 = strlen(__s) + 1;
        if (HDLCFrameGetFreeSpace() >= v13)
        {
          if (HDLCFrameInject())
          {
            v16 = malloc((2 * DWORD2(v27) + 32));
            if (v16)
            {
              v17 = v16;
              v18 = HDLCFrameEncode();
              if (!v18)
              {
                goto LABEL_28;
              }

              v19 = v18;
              v30 = -1431655766;
              if ((_ETLDebugFlags & 2) != 0)
              {
                off_2A18A5818(&str_3, 0, v17, v18);
              }

              if (*a1)
              {
                v20 = (*a1)(a1, v17, v19, &v30, 1, a6, 0);
                v21 = v30;
                free(v17);
                if (v20 && v21 == v19)
                {
                  LOBYTE(v30) = 75;
                  if (!_ETLResponseRingBuffer)
                  {
                    TelephonyUtilRingBufferInitialize();
                  }

                  if (ETLFindMatchingResponseUsingBuffer(a1, &v24, &_ETLResponseRingBuffer, &v30, a6) && v30 == 75 && ETLEFS2ParseStatResponse(&v24, a2, a5, a4))
                  {
                    _ETLDebugPrint("ETLEFS2GetSize", "NV item [%s] is of size [%d]\n", __s, *a4);
                    v14 = 1;
                    goto LABEL_13;
                  }
                }
              }

              else
              {
LABEL_28:
                free(v17);
              }
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
        }
      }

      else
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      }
    }
  }

  else
  {
    _ETLDebugPrint("ETLEFS2GetSize", "Failed to create command frame\n", v22, v23, v24, v25, v26);
  }

  _ETLDebugPrint("ETLEFS2GetSize", "Failed to get size of NV item [%s]\n", __s);
  v14 = 0;
LABEL_13:
  HDLCFrameFree();
  HDLCFrameFree();
  return v14;
}

uint64_t APPLIB_DIAG_AUDIO_PCM_14Bit_Start_Loopback(char *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 1;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 1];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 1]);
    if (a2 >= 0x10)
    {
      bzero(v24, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v24[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v24[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v24[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v24[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v24[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v24[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v24[v15 - 1] = 1;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v24[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v24[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v24[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v24[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v24[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_PCM_14Bit_Stop_Loopback(char *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 2;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 2];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 2]);
    if (a2 >= 0x10)
    {
      bzero(v24, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v24[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v24[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v24[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v24[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v24[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v24[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v24[v15 - 1] = 2;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v24[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v24[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v24[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v24[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v24[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_PCM_16Bit_Start_Loopback(char *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 3;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 3];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 3]);
    if (a2 >= 0x10)
    {
      bzero(v24, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v24[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v24[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v24[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v24[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v24[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v24[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v24[v15 - 1] = 3;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v24[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v24[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v24[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v24[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v24[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_PCM_16Bit_Stop_Loopback(char *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 4;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 4];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 4]);
    if (a2 >= 0x10)
    {
      bzero(v24, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v24[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v24[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v24[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v24[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v24[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v24[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v24[v15 - 1] = 4;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v24[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v24[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v24[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v24[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v24[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_I2S_Start_Loopback(char *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 5;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 5];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 5]);
    if (a2 >= 0x10)
    {
      bzero(v24, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v24[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v24[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v24[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v24[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v24[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v24[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v24[v15 - 1] = 5;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v24[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v24[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v24[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v24[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v24[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_I2S_Stop_Loopback(char *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 6;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 6];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 6]);
    if (a2 >= 0x10)
    {
      bzero(v24, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v24[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v24[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v24[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v24[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v24[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v24[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v24[v15 - 1] = 6;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v24[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v24[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v24[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v24[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v24[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_PCM_I2S_PASSTHROUGH_Start(char *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 7;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 7];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 7]);
    if (a2 >= 0x10)
    {
      bzero(v24, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v24[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v24[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v24[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v24[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v24[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v24[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v24[v15 - 1] = 7;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v24[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v24[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v24[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v24[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v24[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_PCM_I2S_PASSTHROUGH_Stop(char *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 8;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 8];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 8]);
    if (a2 >= 0x10)
    {
      bzero(v24, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v24[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v24[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v24[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v24[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v24[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v24[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v24[v15 - 1] = 8;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v24[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v24[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v24[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v24[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v24[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_I2S_PCM_PASSTHROUGH_Start(char *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 9;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 9];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 9]);
    if (a2 >= 0x10)
    {
      bzero(v24, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v24[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v24[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v24[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v24[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v24[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v24[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v24[v15 - 1] = 9;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v24[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v24[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v24[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v24[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v24[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_I2S_PCM_PASSTHROUGH_Stop(char *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 10;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 0xA];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 0xA]);
    if (a2 >= 0x10)
    {
      bzero(v24, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v24[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v24[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v24[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v24[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v24[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v24[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v24[v15 - 1] = 10;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v24[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v24[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v24[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v24[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v24[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

BOOL ETLDecompressCheck(unsigned __int8 **a1)
{
  v1 = *(a1 + 2);
  if (v1 > 6)
  {
    return **a1 == 155;
  }

  _ETLDebugPrint("ETLDecompressCheck", "Error: Given frame size(%u) is less than the decompress header(%u)!\n", v1, 7);
  return 0;
}

uint64_t ETLDecompress(uint64_t *a1, int8x16_t *__dst, unint64_t a3, char **a4, BOOL *a5)
{
  *a4 = 0;
  v5 = *a1;
  *a5 = *(*a1 + 3) != 0;
  if (*(v5 + 4))
  {
    _ETLDebugPrint("ETLDecompress", "Error: ZIP compress type is not supported yet.\n", a3);
    return 0;
  }

  v8 = lz4_decode(__dst, a3, (v5 + 7), *(v5 + 1));
  *a4 = v8;
  if (!v8)
  {
    _ETLDebugPrint("ETLDecompress", "Error: Decoded size is none.\n", v9);
    return 0;
  }

  return 1;
}

uint64_t ETLDecompressProcessNonHDLCData(unsigned __int8 *a1, unint64_t a2, void *a3, void *a4, void *a5)
{
  if (a2 > 3)
  {
    v6 = *a1;
    if (v6 == 126)
    {
      if (a1[1] == 126)
      {
        _ETLDebugPrint("ETLDecompressProcessNonHDLCData", "Error: Consecutive data should not contain the flag (0x%x).\n", 126);
        return 0;
      }

      else
      {
        v7 = *(a1 + 1);
        *a4 = v7;
        *a3 = a1 + 4;
        *a5 = v7 + 5;
        return 1;
      }
    }

    else
    {
      _ETLDebugPrint("ETLDecompressProcessNonHDLCData", "Error: Non HDLC Compressed Data expect start code of (0x%x), but it contains 0x%x.\n", 126, v6);
      return 0;
    }
  }

  else
  {
    _ETLDebugPrint("ETLDecompressProcessNonHDLCData", "Error: Given buffer size is less than the size of the header\n", a3, a4, a5);
    return 0;
  }
}

uint64_t ETLSubsysAddHeader(uint64_t a1, char a2, __int16 a3)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v5 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v5;
    }
  }

  return result;
}

uint64_t ETLSubsysParseHeader(uint64_t a1, _WORD *a2, _WORD *a3, _DWORD *a4)
{
  v4 = *a4;
  v5 = *(a1 + 8) - v4;
  if (v5 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v5, 4uLL);
    return 0;
  }

  else
  {
    v6 = *(*a1 + v4);
    if (v6 == 75)
    {
      *a2 = BYTE1(v6);
      *a3 = HIWORD(v6);
      *a4 = v4 + 4;
      return 1;
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v6, 75);
      return 0;
    }
  }
}

uint64_t ETLSubsys2AddHeader(uint64_t a1, char a2, __int16 a3)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v5 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v5;
    }
  }

  return result;
}

uint64_t ETLSubsys2ParseHeader(uint64_t *a1, _WORD *a2, _WORD *a3, _DWORD *a4, _WORD *a5, _DWORD *a6)
{
  v6 = *a6;
  v7 = *(a1 + 2) - v6;
  if (v7 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v7, 4uLL);
    return 0;
  }

  else
  {
    v8 = *a1;
    v9 = *(*a1 + v6);
    if (v9 == 128)
    {
      *a2 = BYTE1(v9);
      *a3 = HIWORD(v9);
      *a6 = v6 + 4;
      v10 = *(a1 + 2) - (v6 + 4);
      if (v10 <= 5)
      {
        _ETLDebugPrint("ETLSubsys2ParseHeader", "Need %u bytes, only have %u\n", 6, v10);
        return 0;
      }

      else
      {
        v11 = v8 + (v6 + 4);
        *a6 = v6 + 10;
        *a4 = *v11;
        *a5 = *(v11 + 4);
        return 1;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v9, 75);
      return 0;
    }
  }
}

uint64_t ETLSubsysFindMatchingResponse(uint64_t a1, unsigned __int8 **a2, uint64_t a3)
{
  v7 = 75;
  if (!_ETLResponseRingBuffer)
  {
    v4 = a1;
    v5 = a2;
    TelephonyUtilRingBufferInitialize();
    a1 = v4;
    a2 = v5;
  }

  LODWORD(result) = ETLFindMatchingResponseUsingBuffer(a1, a2, &_ETLResponseRingBuffer, &v7, a3);
  if (v7 == 75)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t ETLSubsys2FindMatchingResponse(uint64_t a1, unsigned __int8 **a2, uint64_t a3)
{
  v7 = 0x80;
  if (!_ETLResponseRingBuffer)
  {
    v4 = a1;
    v5 = a2;
    TelephonyUtilRingBufferInitialize();
    a1 = v4;
    a2 = v5;
  }

  LODWORD(result) = ETLFindMatchingResponseUsingBuffer(a1, a2, &_ETLResponseRingBuffer, &v7, a3);
  if (v7 == 128)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL ETLHDLCFrameCheckFreeSpace(uint64_t a1, unsigned int a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  v4 = FreeSpace;
  if (FreeSpace < a2)
  {
    _ETLDebugPrint("ETLHDLCFrameCheckFreeSpace", "Remaining %u not enough %u\n", FreeSpace, a2);
  }

  return v4 >= a2;
}

BOOL ETLHDLCFrameCheckRemainedSize(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4)
{
  v5 = *a4;
  v6 = *(a1 + 8) - v5;
  if (v6 < a2)
  {
    _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", *(a1 + 8) - v5, a2);
    return v6 >= a2;
  }

  else
  {
    *a3 = *a1 + v5;
    *a4 = v5 + a2;
    return v6 >= a2;
  }
}

uint64_t ETLFrameReadFromTransport(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4, uint64_t a5)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  while (1)
  {
    while (TelephonyUtilRingBufferGetSize())
    {
      TelephonyUtilRingBufferGetSize();
      Downlink = HDLCFrameCreateDownlink();
      TelephonyUtilRingBufferSkip();
      if (Downlink)
      {
        return 1;
      }
    }

    if (TelephonyUtilRingBufferInsertTransport() < 1)
    {
      break;
    }

    TelephonyUtilRingBufferLinearize();
  }

  return 0;
}

uint64_t APPLIB_LOG_DISABLE(unsigned __int8 *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x10)
  {
    bzero(a1, a2);
    *a1 = 115;
    v5 = a1[1];
    v6 = crc_16_l_table[v5 ^ 0x9B];
    v7 = a1[2];
    v8 = crc_16_l_table[(v7 ^ v6) ^ 0x4E];
    v9 = a1[3];
    v10 = crc_16_l_table[(v9 ^ v8 ^ HIBYTE(v6))];
    v11 = crc_16_l_table[v10 ^ (v8 >> 8)];
    v12 = crc_16_l_table[v11 ^ (v10 >> 8)];
    *(a1 + 1) = 0;
    v13 = crc_16_l_table[v12 ^ (v11 >> 8)];
    v14 = crc_16_l_table[crc_16_l_table[v12 ^ (v11 >> 8)] ^ (v12 >> 8)];
    v15 = v14 ^ ~(v13 >> 8);
    *(a1 + 4) = v14 ^ ~HIBYTE(crc_16_l_table[v12 ^ (v11 >> 8)]);
    if (a2 >= 20)
    {
      bzero(v24, 0x7FEuLL);
      __src[0] = 115;
      if ((v5 - 125) > 1)
      {
        v16 = 2;
      }

      else
      {
        v24[0] = v5 & 0x5F;
        v16 = 3;
        LOBYTE(v5) = 125;
      }

      __src[1] = v5;
      v17 = v16 + 1;
      if ((v7 - 125) <= 1)
      {
        __src[v17] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v17) = v16 + 2;
      }

      v18 = ~(v14 ^ BYTE1(v13));
      __src[v16] = v7;
      v19 = v17 + 1;
      if ((v9 - 125) <= 1)
      {
        __src[v19] = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v19) = v17 + 2;
      }

      v20 = (v14 ^ ~(v13 >> 8)) >> 8;
      __src[v17] = v9;
      *&__src[v19] = 0;
      v21 = v19 + 5;
      if ((v18 - 125) <= 1)
      {
        __src[v21] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v19 + 6;
      }

      __src[v19 + 4] = v18;
      v22 = v21 + 1;
      if (BYTE1(v15) - 125 <= 1)
      {
        __src[v22] = BYTE1(v15) & 0x5F;
        v20 = 125;
        LODWORD(v22) = v21 + 2;
      }

      __src[v21] = v20;
      memcpy(a1, __src, v22);
      result = (v22 + 1);
      a1[v22] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_FTM_LOG_ENABLE(unsigned __int8 *a1, unsigned int a2, __int16 a3, int a4, int a5)
{
  v89 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 592715;
    *(a1 + 5) = a3;
    v11 = crc_16_l_table[a1[4] ^ 0x3DLL];
    v12 = crc_16_l_table[a1[5] ^ 0x2B ^ v11];
    v13 = crc_16_l_table[(a1[6] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[7] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[8] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[9] ^ v15 ^ HIBYTE(v14))];
    *(a1 + 3) = a4;
    *(a1 + 4) = a5;
    v17 = crc_16_l_table[(a3 ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(HIBYTE(a3) ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a4 ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(BYTE1(a4) ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(BYTE2(a4) ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[15] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a5 ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[17] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[18] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[19] ^ v25 ^ HIBYTE(v24))];
    *(a1 + 10) = v26 ^ ~HIBYTE(crc_16_l_table[(a1[18] ^ v24 ^ HIBYTE(v23))]);
    if (a2 >= 44)
    {
      bzero(v88, 0x7FFuLL);
      v27 = *a1;
      if ((v27 - 125) > 1)
      {
        v28 = 1;
      }

      else
      {
        v88[0] = v27 & 0x5F;
        v28 = 2;
        LOBYTE(v27) = 125;
      }

      __src = v27;
      v29 = a1[1];
      v30 = v28 + 1;
      if ((v29 - 125) <= 1)
      {
        v88[v30 - 1] = v29 & 0x5F;
        LOBYTE(v29) = 125;
        LODWORD(v30) = v28 + 2;
      }

      v88[v28 - 1] = v29;
      v31 = a1[2];
      v32 = v30;
      v33 = v30 + 1;
      if ((v31 - 125) <= 1)
      {
        v88[v33 - 1] = v31 & 0x5F;
        LODWORD(v33) = v32 + 2;
        LOBYTE(v31) = 125;
      }

      v88[v32 - 1] = v31;
      v34 = a1[3];
      v35 = v33;
      v36 = v33 + 1;
      if ((v34 - 125) <= 1)
      {
        v88[v36 - 1] = v34 & 0x5F;
        LOBYTE(v34) = 125;
        LODWORD(v36) = v35 + 2;
      }

      v88[v35 - 1] = v34;
      v37 = a1[4];
      v38 = v36;
      v39 = v36 + 1;
      if ((v37 - 125) <= 1)
      {
        v88[v39 - 1] = v37 & 0x5F;
        LODWORD(v39) = v38 + 2;
        LOBYTE(v37) = 125;
      }

      v88[v38 - 1] = v37;
      v40 = a1[5];
      v41 = v39;
      v42 = v39 + 1;
      if ((v40 - 125) <= 1)
      {
        v88[v42 - 1] = v40 & 0x5F;
        LOBYTE(v40) = 125;
        LODWORD(v42) = v41 + 2;
      }

      v88[v41 - 1] = v40;
      v43 = a1[6];
      v44 = v42;
      v45 = v42 + 1;
      if ((v43 - 125) <= 1)
      {
        v88[v45 - 1] = v43 & 0x5F;
        LODWORD(v45) = v44 + 2;
        LOBYTE(v43) = 125;
      }

      v88[v44 - 1] = v43;
      v46 = a1[7];
      v47 = v45;
      v48 = v45 + 1;
      if ((v46 - 125) <= 1)
      {
        v88[v48 - 1] = v46 & 0x5F;
        LOBYTE(v46) = 125;
        LODWORD(v48) = v47 + 2;
      }

      v88[v47 - 1] = v46;
      v49 = a1[8];
      v50 = v48;
      v51 = v48 + 1;
      if ((v49 - 125) <= 1)
      {
        v88[v51 - 1] = v49 & 0x5F;
        LODWORD(v51) = v50 + 2;
        LOBYTE(v49) = 125;
      }

      v88[v50 - 1] = v49;
      v52 = a1[9];
      v53 = v51;
      v54 = v51 + 1;
      if ((v52 - 125) <= 1)
      {
        v88[v54 - 1] = v52 & 0x5F;
        LOBYTE(v52) = 125;
        LODWORD(v54) = v53 + 2;
      }

      v88[v53 - 1] = v52;
      v55 = a1[10];
      v56 = v54;
      v57 = v54 + 1;
      if ((v55 - 125) <= 1)
      {
        v88[v57 - 1] = v55 & 0x5F;
        LODWORD(v57) = v56 + 2;
        LOBYTE(v55) = 125;
      }

      v88[v56 - 1] = v55;
      v58 = a1[11];
      v59 = v57;
      v60 = v57 + 1;
      if ((v58 - 125) <= 1)
      {
        v88[v60 - 1] = v58 & 0x5F;
        LOBYTE(v58) = 125;
        LODWORD(v60) = v59 + 2;
      }

      v88[v59 - 1] = v58;
      v61 = a1[12];
      v62 = v60;
      v63 = v60 + 1;
      if ((v61 - 125) <= 1)
      {
        v88[v63 - 1] = v61 & 0x5F;
        LODWORD(v63) = v62 + 2;
        LOBYTE(v61) = 125;
      }

      v88[v62 - 1] = v61;
      v64 = a1[13];
      v65 = v63;
      v66 = v63 + 1;
      if ((v64 - 125) <= 1)
      {
        v88[v66 - 1] = v64 & 0x5F;
        LOBYTE(v64) = 125;
        LODWORD(v66) = v65 + 2;
      }

      v88[v65 - 1] = v64;
      v67 = a1[14];
      v68 = v66;
      v69 = v66 + 1;
      if ((v67 - 125) <= 1)
      {
        v88[v69 - 1] = v67 & 0x5F;
        LODWORD(v69) = v68 + 2;
        LOBYTE(v67) = 125;
      }

      v88[v68 - 1] = v67;
      v70 = a1[15];
      v71 = v69;
      v72 = v69 + 1;
      if ((v70 - 125) <= 1)
      {
        v88[v72 - 1] = v70 & 0x5F;
        LOBYTE(v70) = 125;
        LODWORD(v72) = v71 + 2;
      }

      v88[v71 - 1] = v70;
      v73 = a1[16];
      v74 = v72;
      v75 = v72 + 1;
      if ((v73 - 125) <= 1)
      {
        v88[v75 - 1] = v73 & 0x5F;
        LODWORD(v75) = v74 + 2;
        LOBYTE(v73) = 125;
      }

      v88[v74 - 1] = v73;
      v76 = a1[17];
      v77 = v75 + 1;
      if ((v76 - 125) <= 1)
      {
        v88[v77 - 1] = v76 & 0x5F;
        LOBYTE(v76) = 125;
        LODWORD(v77) = v75 + 2;
      }

      v88[v75 - 1] = v76;
      v78 = a1[18];
      v79 = v77 + 1;
      if ((v78 - 125) <= 1)
      {
        v88[v79 - 1] = v78 & 0x5F;
        LODWORD(v79) = v77 + 2;
        LOBYTE(v78) = 125;
      }

      v88[v77 - 1] = v78;
      v80 = ~(v26 ^ BYTE1(v25));
      v81 = a1[19];
      v82 = v79;
      v83 = v79 + 1;
      if ((v81 - 125) <= 1)
      {
        v88[v83 - 1] = v81 & 0x5F;
        LOBYTE(v81) = 125;
        LODWORD(v83) = v82 + 2;
      }

      v84 = ((v26 ^ ~(v25 >> 8)) >> 8);
      v88[v82 - 1] = v81;
      v85 = v83 + 1;
      if ((v80 - 125) <= 1)
      {
        v88[v85 - 1] = v80 & 0x5F;
        LODWORD(v85) = v83 + 2;
        LOBYTE(v80) = 125;
      }

      v88[v83 - 1] = v80;
      v86 = v85 + 1;
      if ((v84 - 125) <= 1)
      {
        v88[v86 - 1] = v84 & 0x5F;
        LOBYTE(v84) = 125;
        LODWORD(v86) = v85 + 2;
      }

      v88[v85 - 1] = v84;
      memcpy(a1, &__src, v86);
      result = (v86 + 1);
      a1[v86] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_FTM_LOG_DISABLE(unsigned __int8 *a1, unsigned int a2, __int16 a3)
{
  v40 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x1F)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 592715;
  a1[4] = 1;
  *(a1 + 5) = a3;
  v7 = HIBYTE(a3);
  v8 = a1[5];
  v9 = crc_16_l_table[v8 ^ 0xC4];
  v10 = a1[6];
  v11 = crc_16_l_table[(v10 ^ v9) ^ 0xFB];
  v12 = crc_16_l_table[(a1[7] ^ v11 ^ HIBYTE(v9))];
  v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
  v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
  v15 = crc_16_l_table[(a3 ^ v14 ^ HIBYTE(v13))];
  v16 = crc_16_l_table[HIBYTE(a3) ^ crc_16_l_table[(a3 ^ v14 ^ HIBYTE(v13))] ^ (v14 >> 8)];
  v17 = v16 ^ ~(v15 >> 8);
  *(a1 + 6) = v16 ^ ~HIBYTE(crc_16_l_table[(a3 ^ v14 ^ HIBYTE(v13))]);
  if (a2 < 28)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v39, 0x7FAuLL);
  __src = 592715;
  v37 = 1;
  if ((v8 - 125) <= 1)
  {
    v39[0] = v8 & 0x5F;
    v38 = 125;
    v18 = 7;
    v19 = 8;
    if ((v10 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v38 = v8;
  v18 = 6;
  v19 = 7;
  if ((v10 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v19) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v19) = v18 + 2;
  }

LABEL_10:
  *(&__src + v18) = v10;
  v20 = a1[7];
  v21 = v19;
  v22 = v19 + 1;
  if ((v20 - 125) <= 1)
  {
    *(&__src + v22) = v20 & 0x5F;
    LODWORD(v22) = v21 + 2;
    LOBYTE(v20) = 125;
  }

  *(&__src + v21) = v20;
  v23 = a1[8];
  v24 = v22;
  v25 = v22 + 1;
  if ((v23 - 125) <= 1)
  {
    *(&__src + v25) = v23 & 0x5F;
    LOBYTE(v23) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&__src + v24) = v23;
  v26 = a3;
  v27 = a1[9];
  v28 = v25 + 1;
  if ((v27 - 125) <= 1)
  {
    *(&__src + v28) = v27 & 0x5F;
    LOBYTE(v27) = 125;
    LODWORD(v28) = v25 + 2;
  }

  *(&__src + v25) = v27;
  v29 = v28 + 1;
  if (a3 - 125 <= 1)
  {
    *(&__src + v29) = a3 & 0x5F;
    v26 = 125;
    LODWORD(v29) = v28 + 2;
  }

  v30 = ~(v16 ^ BYTE1(v15));
  *(&__src + v28) = v26;
  v31 = v29 + 1;
  if (HIBYTE(a3) - 125 <= 1)
  {
    *(&__src + v31) = HIBYTE(a3) & 0x5F;
    v7 = 125;
    LODWORD(v31) = v29 + 2;
  }

  v32 = (v16 ^ ~(v15 >> 8)) >> 8;
  *(&__src + v29) = v7;
  v33 = v31;
  v34 = v31 + 1;
  if ((v30 - 125) <= 1)
  {
    *(&__src + v34) = v30 & 0x5F;
    LOBYTE(v30) = 125;
    LODWORD(v34) = v33 + 2;
  }

  *(&__src + v33) = v30;
  v35 = v34 + 1;
  if (BYTE1(v17) - 125 <= 1)
  {
    *(&__src + v35) = BYTE1(v17) & 0x5F;
    v32 = 125;
    LODWORD(v35) = v34 + 2;
  }

  *(&__src + v34) = v32;
  memcpy(a1, &__src, v35);
  result = (v35 + 1);
  a1[v35] = 126;
  return result;
}

uint64_t APPLIB_LOG_GetIds(unsigned __int8 *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x10)
  {
    bzero(a1, a2);
    v5 = a1[1];
    v6 = crc_16_l_table[v5 ^ 0x9B];
    v7 = a1[2];
    v8 = crc_16_l_table[(v7 ^ v6) ^ 0x4E];
    v9 = a1[3];
    v10 = crc_16_l_table[(v9 ^ v8 ^ HIBYTE(v6))];
    v11 = crc_16_l_table[v10 ^ (v8 >> 8) ^ 1];
    *a1 = 115;
    v12 = crc_16_l_table[v11 ^ (v10 >> 8)];
    *(a1 + 1) = 1;
    v13 = crc_16_l_table[v12 ^ (v11 >> 8)];
    v14 = crc_16_l_table[crc_16_l_table[v12 ^ (v11 >> 8)] ^ (v12 >> 8)];
    v15 = v14 ^ ~(v13 >> 8);
    *(a1 + 4) = v14 ^ ~HIBYTE(crc_16_l_table[v12 ^ (v11 >> 8)]);
    if (a2 >= 20)
    {
      bzero(v24, 0x7FEuLL);
      __src[0] = 115;
      if ((v5 - 125) > 1)
      {
        v16 = 2;
      }

      else
      {
        v24[0] = v5 & 0x5F;
        v16 = 3;
        LOBYTE(v5) = 125;
      }

      __src[1] = v5;
      v17 = v16 + 1;
      if ((v7 - 125) <= 1)
      {
        __src[v17] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v17) = v16 + 2;
      }

      v18 = ~(v14 ^ BYTE1(v13));
      __src[v16] = v7;
      v19 = v17 + 1;
      if ((v9 - 125) <= 1)
      {
        __src[v19] = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v19) = v17 + 2;
      }

      v20 = (v14 ^ ~(v13 >> 8)) >> 8;
      __src[v17] = v9;
      *&__src[v19] = 1;
      v21 = v19 + 5;
      if ((v18 - 125) <= 1)
      {
        __src[v21] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v19 + 6;
      }

      __src[v19 + 4] = v18;
      v22 = v21 + 1;
      if (BYTE1(v15) - 125 <= 1)
      {
        __src[v22] = BYTE1(v15) & 0x5F;
        v20 = 125;
        LODWORD(v22) = v21 + 2;
      }

      __src[v21] = v20;
      memcpy(a1, __src, v22);
      result = (v22 + 1);
      a1[v22] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_LOG_GetMasks(unsigned __int8 *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x10)
  {
    bzero(a1, a2);
    v5 = a1[1];
    v6 = crc_16_l_table[v5 ^ 0x9B];
    v7 = a1[2];
    v8 = crc_16_l_table[(v7 ^ v6) ^ 0x4E];
    v9 = a1[3];
    v10 = crc_16_l_table[(v9 ^ v8 ^ HIBYTE(v6))];
    v11 = crc_16_l_table[v10 ^ (v8 >> 8) ^ 4];
    *a1 = 115;
    v12 = crc_16_l_table[v11 ^ (v10 >> 8)];
    *(a1 + 1) = 4;
    v13 = crc_16_l_table[v12 ^ (v11 >> 8)];
    v14 = crc_16_l_table[crc_16_l_table[v12 ^ (v11 >> 8)] ^ (v12 >> 8)];
    v15 = v14 ^ ~(v13 >> 8);
    *(a1 + 4) = v14 ^ ~HIBYTE(crc_16_l_table[v12 ^ (v11 >> 8)]);
    if (a2 >= 20)
    {
      bzero(v24, 0x7FEuLL);
      __src[0] = 115;
      if ((v5 - 125) > 1)
      {
        v16 = 2;
      }

      else
      {
        v24[0] = v5 & 0x5F;
        v16 = 3;
        LOBYTE(v5) = 125;
      }

      __src[1] = v5;
      v17 = v16 + 1;
      if ((v7 - 125) <= 1)
      {
        __src[v17] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v17) = v16 + 2;
      }

      v18 = ~(v14 ^ BYTE1(v13));
      __src[v16] = v7;
      v19 = v17 + 1;
      if ((v9 - 125) <= 1)
      {
        __src[v19] = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v19) = v17 + 2;
      }

      v20 = (v14 ^ ~(v13 >> 8)) >> 8;
      __src[v17] = v9;
      *&__src[v19] = 4;
      v21 = v19 + 5;
      if ((v18 - 125) <= 1)
      {
        __src[v21] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v19 + 6;
      }

      __src[v19 + 4] = v18;
      v22 = v21 + 1;
      if (BYTE1(v15) - 125 <= 1)
      {
        __src[v22] = BYTE1(v15) & 0x5F;
        v20 = 125;
        LODWORD(v22) = v21 + 2;
      }

      __src[v21] = v20;
      memcpy(a1, __src, v22);
      result = (v22 + 1);
      a1[v22] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_LOG_SetMasks(char *a1, unsigned int a2, unsigned int a3, unint64_t a4)
{
  v21 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x10)
  {
    bzero(a1, a2);
    *a1 = 115;
    *(a1 + 1) = 3;
    *(a1 + 2) = a4 >> 12;
    *(a1 + 3) = a3;
    if (a3 >= 8)
    {
      v13 = a3 >> 3;
      v14 = (a4 >> 3) & 0x1FF;
      do
      {
        if (!v14)
        {
          a1[((a4 >> 3) & 0x1FF) + 16] = 1 << (a4 & 7);
        }

        --v14;
        --v13;
      }

      while (v13);
    }

    v9 = 1336;
    LOWORD(v10) = -1;
    v11 = a1;
    do
    {
      v12 = *v11++;
      v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
      v9 -= 8;
    }

    while (v9);
    *(a1 + 167) = ~v10;
    if (a2 >= 338)
    {
      bzero(__src, 0x800uLL);
      v15 = 0;
      v16 = 0;
      do
      {
        while (1)
        {
          v17 = a1[v15];
          v18 = v16;
          v19 = v16 + 1;
          if ((v17 - 125) > 1)
          {
            break;
          }

          v16 += 2;
          __src[v19] = v17 & 0x5F;
          __src[v18] = 125;
          if (++v15 == 169)
          {
            goto LABEL_16;
          }
        }

        ++v16;
        __src[v18] = v17;
        ++v15;
      }

      while (v15 != 169);
LABEL_16:
      memcpy(a1, __src, v16);
      result = (v16 + 1);
      a1[v16] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_LOG_SetMultipleLogMasks(unsigned __int8 *a1, unsigned int a2, int a3, unsigned int a4, int a5, uint64_t a6)
{
  v32 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x10)
  {
    bzero(a1, a2);
    *a1 = 115;
    *(a1 + 1) = 3;
    *(a1 + 2) = a3;
    *(a1 + 3) = a4;
    LODWORD(v13) = a4 >> 3;
    if ((a4 & 7) != 0)
    {
      v13 = (v13 + 1);
    }

    else
    {
      v13 = v13;
    }

    if (a5 && v13)
    {
      v14 = 0;
      do
      {
        v15 = *(a6 + 2 * v14);
        v16 = (v15 >> 3) & 0x1FF;
        v17 = 1 << (v15 & 7);
        v18 = v16;
        v19 = v13;
        do
        {
          if (!v18)
          {
            a1[v16 + 16] |= v17;
          }

          --v18;
          --v19;
        }

        while (v19);
        ++v14;
      }

      while (v14 != a5);
    }

    v20 = v13 + 16;
    v21 = 8 * (v13 + 16);
    if (8 * (v13 + 16))
    {
      LOWORD(v22) = -1;
      v23 = a1;
      do
      {
        v24 = *v23++;
        v22 = crc_16_l_table[(v24 ^ v22)] ^ ((v22 & 0xFF00) >> 8);
        v21 -= 8;
      }

      while (v21);
      a1[v20] = ~v22;
      a1[v13 + 17] = ~v22 >> 8;
      result = 0xFFFFFFFFLL;
      if (v13 > 0x3EE)
      {
        return result;
      }
    }

    else
    {
      a1[v20] = 0;
      a1[v13 + 17] = 0;
      result = 0xFFFFFFFFLL;
      if (v13 > 0x3EE)
      {
        return result;
      }
    }

    v25 = (v13 + 18);
    if (2 * v25 <= a2)
    {
      bzero(__src, 0x800uLL);
      v26 = 0;
      v27 = 0;
      do
      {
        while (1)
        {
          v28 = a1[v26];
          v29 = v27;
          v30 = v27 + 1;
          if ((v28 - 125) > 1)
          {
            break;
          }

          v27 += 2;
          __src[v30] = v28 & 0x5F;
          __src[v29] = 125;
          if (v25 == ++v26)
          {
            goto LABEL_25;
          }
        }

        ++v27;
        __src[v29] = v28;
        ++v26;
      }

      while (v25 != v26);
LABEL_25:
      memcpy(a1, __src, v27);
      result = (v27 + 1);
      a1[v27] = 126;
    }
  }

  return result;
}

uint64_t APPLIB_ParseRDALog(uint64_t a1)
{
  v1 = ((*(a1 + 16) & 0x38) != 0) | (4 * ((*(a1 + 16) & 7) != 0));
  if ((*(a1 + 16) & 0x1C0) != 0)
  {
    ++v1;
  }

  v2 = *(a1 + 19);
  if (v1 > v2 || (*(a1 + 18) & 2) == 0)
  {
    return 0;
  }

  v3 = a1 + 20;
  v4 = v2 / v1;
  v5 = 0;
  if ((*(a1 + 18) & 8) != 0)
  {
    if ((*(a1 + 18) & 4) != 0)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v11 = *(v3 + 10);
        if (v11 <= 4)
        {
          v6 += dword_2977CA700[v11];
          v7 += *(v3 + qword_2977CA6D8[v11]);
        }

        ++v5;
        v3 += 98;
      }

      while (v5 < v4);
    }

    else
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v9 = *(v3 + 10);
        if (v9 <= 4)
        {
          v6 += dword_2977CA700[v9];
          v7 += *(v3 + qword_2977CA6D8[v9]);
        }

        ++v5;
        v3 += 72;
      }

      while (v5 < v4);
    }
  }

  else if ((*(a1 + 18) & 4) != 0)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v10 = *(v3 + 10);
      if (v10 <= 4)
      {
        v6 += dword_2977CA700[v10];
        v7 += *(v3 + qword_2977CA6D8[v10]);
      }

      ++v5;
      v3 += 74;
    }

    while (v5 < v4);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(v3 + 10);
      if (v8 <= 4)
      {
        v6 += dword_2977CA700[v8];
        v7 += *(v3 + qword_2977CA6D8[v8]);
      }

      ++v5;
      v3 += 48;
    }

    while (v5 < v4);
  }

  if (v6)
  {
    return v7 / v6;
  }

  else
  {
    return 0;
  }
}

uint64_t ETLFusingCreateReadFuseCommand(uint64_t a1, unsigned __int16 a2)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 7)
  {
    _ETLDebugPrint("ETLFusingCreateFusingCommand", "Remaining %u not enough %u\n");
    return 0;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedInt();
}

uint64_t ETLFusingCreateWriteFuseCommand(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 7)
  {
    _ETLDebugPrint("ETLFusingCreateFusingCommand", "Remaining %u not enough %u\n");
    return 0;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedInt();
}

uint64_t ETLFusingParseReadFuseResponse(int **a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 2);
  v4 = v3 - 4;
  if (v3 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v5 = *a1;
    v6 = **a1;
    if (v6 == 75)
    {
      if (BYTE1(v6) == 253)
      {
        v7 = HIWORD(v6);
        if (v7 == 11)
        {
          if (v4 <= 5)
          {
            _ETLDebugPrint("ETLFusingParseFusingResponse", "Payload length %u less than needed %u\n", v4, 6);
            return 0;
          }

          else
          {
            v8 = *(v5 + 2);
            *a3 = *(v5 + 6);
            if (v8 == 1)
            {
              return 1;
            }

            else
            {
              _ETLDebugPrint("ETLFusingParseFusingResponse", "Status returned was %u, expected %u\n", v8, 1);
              return 0;
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v7, 11);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v6), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLFusingParseWriteFuseResponse(unsigned int *a1)
{
  v1 = a1[2];
  v2 = v1 - 4;
  if (v1 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a1[2], 4uLL);
    return 0;
  }

  else
  {
    v3 = **a1;
    if (v3 == 75)
    {
      if (BYTE1(v3) == 253)
      {
        v4 = HIWORD(v3);
        if (v4 == 11)
        {
          if (v2 <= 5)
          {
            _ETLDebugPrint("ETLFusingParseFusingResponse", "Payload length %u less than needed %u\n", v2, 6);
            return 0;
          }

          else if (*(*a1 + 4) == 1)
          {
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLFusingParseFusingResponse", "Status returned was %u, expected %u\n", *(*a1 + 4), 1);
            return 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v4, 11);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v3), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLFusingProgramFuse(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, _DWORD *a3, int a4, uint64_t a5)
{
  v7 = a2;
  v9 = *a3;
  _ETLDebugPrint("ETLFusingProgramFuse", "Programming fuse %u, value %u\n", a2, *a3);
  if (a4 == 4)
  {
    v13 = -1431655766;
    if (ETLFusingPerformFusingOperation(a1, v7, 0, 0, &v13, a5))
    {
      v10 = v13;
      _ETLDebugPrint("ETLFusingProgramFuse", "Read back fuse %u, value %u\n", v7, v13);
      if ((v10 | v9) == v9)
      {
        v11 = v9 & ~v10;
        _ETLDebugPrint("ETLFusingProgramFuse", "Programming fuse %u, final write value %u\n", v7, v11);
        return ETLFusingPerformFusingOperation(a1, v7, 1, v11, &v14, a5);
      }

      _ETLDebugPrint("ETLFusingProgramFuse", "Mismatch, expected to be written %u, final value on device will be %u\n");
    }

    else
    {
      _ETLDebugPrint("ETLFusingProgramFuse", "Failed to read the fuse %u\n");
    }
  }

  else
  {
    _ETLDebugPrint("ETLFusingProgramFuse", "Data length %u is not %zu\n");
  }

  return 0;
}

uint64_t ETLFusingPerformFusingOperation(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), unsigned __int16 a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLFusingPerformFusingOperation", "Faild to create uplink frame\n");
LABEL_25:
    a3 = 0;
    goto LABEL_26;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_25;
  }

  v18 = 785739;
  if (!HDLCFrameInject())
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_25;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (!a3)
  {
    if (FreeSpace > 7)
    {
      if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || (HDLCFrameInjectUnsignedInt() & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    goto LABEL_24;
  }

  if (FreeSpace <= 7)
  {
LABEL_24:
    _ETLDebugPrint("ETLFusingCreateFusingCommand", "Remaining %u not enough %u\n");
    goto LABEL_25;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedInt())
  {
    goto LABEL_25;
  }

LABEL_17:
  if (!ETLSendCommand(a1, v16, a6) || !ETLSubsysFindMatchingResponse(a1, v14, a6))
  {
    goto LABEL_25;
  }

  if (!a3)
  {
    v18 = 0;
    if (!ETLMaverickParseBSPResponseHeader(v14, &v18, 11))
    {
      goto LABEL_26;
    }

    if (DWORD2(v14[0]) - v18 > 5)
    {
      v12 = (*&v14[0] + v18);
      v13 = *v12;
      *a5 = *(v12 + 1);
      if (v13 == 1)
      {
        goto LABEL_23;
      }

LABEL_30:
      _ETLDebugPrint("ETLFusingParseFusingResponse", "Status returned was %u, expected %u\n");
      goto LABEL_25;
    }

LABEL_31:
    _ETLDebugPrint("ETLFusingParseFusingResponse", "Payload length %u less than needed %u\n");
    goto LABEL_25;
  }

  v18 = 0;
  a3 = 0;
  if (ETLMaverickParseBSPResponseHeader(v14, &v18, 11))
  {
    if (DWORD2(v14[0]) - v18 > 5)
    {
      if (*(*&v14[0] + v18) == 1)
      {
LABEL_23:
        a3 = 1;
        goto LABEL_26;
      }

      goto LABEL_30;
    }

    goto LABEL_31;
  }

LABEL_26:
  HDLCFrameFree();
  HDLCFrameFree();
  return a3;
}

uint64_t ETLFusingReadFuse(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), int a2, int *a3, unsigned int a4, _DWORD *a5, uint64_t a6)
{
  *a5 = 0;
  if (a4 > 3)
  {
    v12 = -1431655766;
    v10 = ETLFusingPerformFusingOperation(a1, a2, 0, 0, &v12, a6);
    result = 0;
    if (v10)
    {
      *a5 = 4;
      v11 = v12;
      *a3 = v12;
      _ETLDebugPrint("ETLFusingReadFuse", "Read back fuse %u, value %u\n", a2, v11);
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLFusingReadFuse", "Data capacity %u less than reequired %zu\n", a4, 4uLL);
    return 0;
  }

  return result;
}

uint64_t ETLFusingProgramTriggerM20(void *a1, int *a2, uint64_t a3)
{
  if (!a1 || !a2)
  {
    _ETLDebugPrint("ETLFusingProgramTriggerM20", "Transport (%p) and Status (%p) should not be NULL \n", a1, a2);
    return 0;
  }

  memset(v15, 0, sizeof(v15));
  v16 = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLFusingProgramTriggerM20", "Faild to create uplink frame\n");
LABEL_24:
    v11 = 0;
LABEL_25:
    HDLCFrameFree();
    HDLCFrameFree();
    return v11;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_24;
  }

  v18 = 1575755;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_24;
  }

  if (HDLCFrameGetFreeSpace() <= 7)
  {
    _ETLDebugPrint("ETLHDLCFrameCheckFreeSpace", "Remaining %u not enough %u\n");
    goto LABEL_24;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !ETLSendCommand(a1, v15, a3) || !ETLSubsysFindMatchingResponse(a1, v13, a3))
  {
    goto LABEL_24;
  }

  v17 = 0;
  v18 = 0;
  ETLSubsysParseHeader(v13, &v17 + 1, &v17, &v18);
  if (HIWORD(v17) != 11)
  {
    _ETLDebugPrint("ETLFusingParseFusingResponseM20", "Received subsys 0x%x doesn't match expected 0x%x\n", HIWORD(v17), 11);
    v6 = v17;
    goto LABEL_33;
  }

  v6 = v17;
  if (v17 != 24)
  {
LABEL_33:
    _ETLDebugPrint("ETLFusingParseFusingResponseM20", "Received command code 0x%x doesn't match expected 0x%x\n", v6, 24);
    __break(1u);
    goto LABEL_34;
  }

  v7 = DWORD2(v13[0]) - v18;
  if (DWORD2(v13[0]) - v18 > 7)
  {
    v8 = (*&v13[0] + v18);
    if (*v8 == 3)
    {
      if (DWORD2(v13[0]) - (v18 + 8) > 3)
      {
        v8 = (*&v13[0] + v18 + 8);
        v9 = 1;
        goto LABEL_29;
      }

      _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n");
    }

    else
    {
      _ETLDebugPrint("ETLFusingParseFusingResponseM20", "Received Secboot provisioning trigger code 0x%x doesn't match expected 0x%x\n");
    }

    v9 = 0;
LABEL_29:
    v12 = *v8;
    *a2 = v12;
    if (v12)
    {
      _ETLDebugPrint("ETLFusingParseFusingResponseM20", "Received status 0x%x doesn't match expected 0x%x\n", v12, 0);
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    goto LABEL_25;
  }

LABEL_34:
  result = _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", v7, 8);
  __break(1u);
  return result;
}

unint64_t ETLFusingGetFusedData(void *a1, _DWORD *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    memset(v20, 0, sizeof(v20));
    v21 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
        goto LABEL_34;
      }

      v25 = 8781131;
      if ((HDLCFrameInject() & 1) == 0)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
        goto LABEL_34;
      }

      v6 = malloc((2 * DWORD2(v22) + 32));
      if (!v6)
      {
        goto LABEL_35;
      }

      v7 = HDLCFrameEncode();
      if (!v7)
      {
        goto LABEL_37;
      }

      v8 = v7;
      v25 = -1431655766;
      if ((_ETLDebugFlags & 2) != 0)
      {
        off_2A18A5818(&str_3, 0, v6, v7);
      }

      if (!*a1)
      {
LABEL_37:
        free(v6);
        goto LABEL_34;
      }

      v9 = (*a1)(a1, v6, v8, &v25, 1, a3, 0);
      v10 = v25;
      free(v6);
      v6 = 0;
      if (!v9 || v10 != v8)
      {
        goto LABEL_35;
      }

      LOBYTE(v25) = 75;
      if (!_ETLResponseRingBuffer)
      {
        TelephonyUtilRingBufferInitialize();
      }

      v6 = 0;
      if (!ETLFindMatchingResponseUsingBuffer(a1, v20, &_ETLResponseRingBuffer, &v25, a3) || v25 != 75)
      {
        goto LABEL_35;
      }

      v11 = DWORD2(v20[0]) - 4;
      if (DWORD2(v20[0]) < 4)
      {
        _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
      }

      else
      {
        v12 = **&v20[0];
        if (**&v20[0] == 75)
        {
          if (BYTE1(v12) == 253)
          {
            if (HIWORD(v12) == 133)
            {
              a2[11] = 0;
              if (v11 >= 4)
              {
                v13 = 0;
                v14 = 12;
                v15 = -12;
                while (v13 < a2[2] - 1)
                {
                  *(*a2 + 4 * v13) = *(*&v20[0] + v14 - 8);
                  v16 = a2[11];
                  if (v16 >= a2[6] - 1)
                  {
                    break;
                  }

                  v17 = v15 + DWORD2(v20[0]) + 4;
                  if (v17 <= 3)
                  {
                    _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", v17, 4);
                    break;
                  }

                  *(*(a2 + 2) + 4 * v16) = *(*&v20[0] + v14 - 4);
                  v18 = a2[11];
                  if (v18 >= a2[10] - 1)
                  {
                    break;
                  }

                  if ((v15 + DWORD2(v20[0])) <= 3)
                  {
                    _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", v15 + DWORD2(v20[0]), 4);
                    break;
                  }

                  *(*(a2 + 4) + 4 * v18) = *(*&v20[0] + v14);
                  v13 = a2[11] + 1;
                  a2[11] = v13;
                  v14 += 12;
                  v15 -= 12;
                  v11 = DWORD2(v20[0]) + v15 + 8;
                  if (v11 <= 3)
                  {
                    goto LABEL_29;
                  }
                }

                _ETLDebugPrint("ETLFusingParseGetFusedData", "Failed to fill address at offset: %d, totalNumber: %d, maxNumberOfAddress: %d\n");
                goto LABEL_34;
              }

LABEL_29:
              _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", v11, 4);
              v6 = a2[11] != 0;
LABEL_35:
              HDLCFrameFree();
              HDLCFrameFree();
              return v6;
            }

            _ETLDebugPrint("ETLFusingParseGetFusedData", "Received command code 0x%x doesn't match expected 0x%x\n");
LABEL_34:
            v6 = 0;
            goto LABEL_35;
          }
        }

        else
        {
          _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
        }
      }

      _ETLDebugPrint("ETLFusingParseGetFusedData", "Received subsys 0x%x doesn't match expected 0x%x\n");
      goto LABEL_34;
    }

    _ETLDebugPrint("ETLFusingGetFusedData", "Failed to create uplink frame\n");
    goto LABEL_34;
  }

  _ETLDebugPrint("ETLFusingGetFusedData", "Neither transport (%p) nor parameter (%p) should be NULL \n", a1, a2);
  return 0;
}

uint64_t ETLFusingGetSecureState(void *a1, _DWORD *a2, uint64_t a3)
{
  if (!a1 || !a2)
  {
    _ETLDebugPrint("ETLFusingGetSecureState", "Neither transport (%p) nor state (%p) should be NULL\n", a1, a2);
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLFusingGetSecureState", "Failed to create uplink frame\n");
LABEL_29:
    v6 = 0;
    goto LABEL_30;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_29;
  }

  v22 = 9502027;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_29;
  }

  v6 = malloc((2 * DWORD2(v19) + 32));
  if (!v6)
  {
LABEL_30:
    HDLCFrameFree();
    HDLCFrameFree();
    return v6;
  }

  v7 = HDLCFrameEncode();
  if (!v7)
  {
    goto LABEL_32;
  }

  v8 = v7;
  v22 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v6, v7);
  }

  if (!*a1)
  {
LABEL_32:
    free(v6);
    goto LABEL_29;
  }

  v9 = (*a1)(a1, v6, v8, &v22, 1, a3, 0);
  v10 = v22;
  free(v6);
  v6 = 0;
  if (!v9 || v10 != v8)
  {
    goto LABEL_30;
  }

  LOBYTE(v22) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v6 = 0;
  if (!ETLFindMatchingResponseUsingBuffer(a1, v17, &_ETLResponseRingBuffer, &v22, a3) || v22 != 75)
  {
    goto LABEL_30;
  }

  v11 = DWORD2(v17[0]) - 4;
  if (DWORD2(v17[0]) < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
LABEL_41:
    v13 = 0;
    v14 = 0;
    goto LABEL_42;
  }

  v12 = **&v17[0];
  if (**&v17[0] != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_41;
  }

  v13 = HIWORD(v12);
  v14 = BYTE1(v12);
  if (BYTE1(v12) != 253)
  {
LABEL_42:
    _ETLDebugPrint("ETLFusingParseGetSecureState", "Received subsys 0x%x doesn't match expected 0x%x\n", v14, 253);
    goto LABEL_43;
  }

  if (v13 != 144)
  {
LABEL_43:
    _ETLDebugPrint("ETLFusingParseGetSecureState", "Received command code 0x%x doesn't match expected 0x%x\n", v13, 144);
    __break(1u);
    goto LABEL_44;
  }

  if (v11 > 3)
  {
    v15 = (*&v17[0] + 4);
    if (*(*&v17[0] + 4))
    {
      _ETLDebugPrint("ETLFusingParseGetSecureState", "Received Secboot provisioning trigger code 0x%x doesn't match expected 0x%x\n");
    }

    else
    {
      if (*(*&v17[0] + 4))
      {
        v6 = 0;
        goto LABEL_37;
      }

      if ((DWORD2(v17[0]) - 8) > 3)
      {
        v15 = (*&v17[0] + 8);
        v6 = 1;
        goto LABEL_37;
      }

      _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n");
    }

    v6 = 0;
LABEL_37:
    *a2 = *v15;
    goto LABEL_30;
  }

LABEL_44:
  result = _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", v11, 4);
  __break(1u);
  return result;
}

uint64_t ETLDesenseCreateCommand(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
LABEL_12:
    _ETLDebugPrint("ETLDesenseCreateCommand", "Failed to add command header\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_12;
  }

  if (HDLCFrameGetFreeSpace() <= 7)
  {
    _ETLDebugPrint("ETLDesenseCreateCommand", "Remaining %u not enough %u\n");
    return 0;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedShort();
}

uint64_t ETLDesenseParseResponse(unsigned int *a1)
{
  v1 = a1[2];
  v2 = v1 - 4;
  if (v1 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a1[2], 4uLL);
    return 0;
  }

  else
  {
    v3 = **a1;
    if (v3 == 75)
    {
      if (BYTE1(v3) == 253)
      {
        v4 = HIWORD(v3);
        if (v4 == 15)
        {
          if (v2 <= 1)
          {
            _ETLDebugPrint("ETLDesenseParseResponseWithStatus", "Payload length %u less than needed %u\n", v2, 2);
            return 0;
          }

          else if (*(*a1 + 4) == 1)
          {
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLDesenseParseResponseWithStatus", "Status returned was %u, expected %u\n", *(*a1 + 4), 1);
            return 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v4, 15);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v3), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLDesenseOperation(void *a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  if (a7)
  {
    *a7 = 0;
  }

  v25 = 0;
  memset(v24, 0, sizeof(v24));
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLDesenseOperation", "Faild to create uplink frame\n");
    goto LABEL_26;
  }

  if (!ETLDesenseCreateCommand(v24, a2, a3, a4, a5))
  {
LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  v14 = malloc((2 * DWORD2(v24[0]) + 32));
  if (v14)
  {
    v15 = HDLCFrameEncode();
    if (!v15)
    {
      goto LABEL_28;
    }

    v16 = v15;
    v26 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v14, v15);
    }

    if (!*a1)
    {
LABEL_28:
      free(v14);
      goto LABEL_26;
    }

    v17 = (*a1)(a1, v14, v16, &v26, 1, a6, 0);
    v18 = v26;
    free(v14);
    v14 = 0;
    if (v17)
    {
      if (v18 == v16)
      {
        LOBYTE(v26) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v14 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v22, &_ETLResponseRingBuffer, &v26, a6) && v26 == 75)
        {
          _ETLDebugPrint("ETLDesenseOperation", "Read done\n");
          if (DWORD2(v22[0]) < 4)
          {
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
          }

          else
          {
            v19 = **&v22[0];
            if (**&v22[0] == 75)
            {
              if (BYTE1(v19) == 253)
              {
                if (HIWORD(v19) == 15)
                {
                  if ((DWORD2(v22[0]) - 4) <= 1)
                  {
                    _ETLDebugPrint("ETLDesenseParseResponseWithStatus", "Payload length %u less than needed %u\n");
                  }

                  else
                  {
                    v20 = *(*&v22[0] + 4);
                    if (a7)
                    {
                      *a7 = v20;
                    }

                    if (v20 == 1)
                    {
                      v14 = 1;
                      goto LABEL_27;
                    }

                    _ETLDebugPrint("ETLDesenseParseResponseWithStatus", "Status returned was %u, expected %u\n");
                  }
                }

                else
                {
                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
                }
              }

              else
              {
                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
              }
            }

            else
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
            }
          }

          goto LABEL_26;
        }
      }
    }
  }

LABEL_27:
  HDLCFrameFree();
  HDLCFrameFree();
  return v14;
}

uint64_t ETLLOGParseLogRecord(void *a1, _DWORD *a2, void *a3, _WORD *a4, unsigned __int16 *a5, unsigned int a6, unsigned int *a7)
{
  if (a6 < 0xC)
  {
    return 0;
  }

  v8 = *a5;
  *a7 = v8;
  if (v8 <= a6 && v8 > 0xB)
  {
    if (a1)
    {
      *a1 = a5 + 6;
    }

    if (a2)
    {
      *a2 = v8 - 12;
    }

    if (a3)
    {
      *a3 = *(a5 + 2);
    }

    if (a4)
    {
      *a4 = a5[1];
    }

    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLLOGParseLogRecord", "Packet length is (%u), source buffer length is (%u), LOG header size should be (%u), skipping.\n", v8, a6, 12);
    return 0;
  }
}

uint64_t ETLLOGParseLogHeader(uint64_t a1, unsigned int *a2, void *a3, _WORD *a4, uint64_t a5, unsigned int a6, _DWORD *a7)
{
  *a7 = 0;
  if (a6 < 4)
  {
    return 0;
  }

  if (*a5 != 16)
  {
    return 0;
  }

  v7 = *(a5 + 2);
  *a2 = v7;
  if (v7 > a6)
  {
    return 0;
  }

  *a7 = 4;
  if (a6 - 4 < 0xC)
  {
    return 0;
  }

  *a4 = *(a5 + 6);
  *a3 = *(a5 + 8);
  return 1;
}

uint64_t ETLLOGParseLog(char *__str, size_t __size, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  *a5 = 0;
  if (a4 < 4 || *a3 != 16)
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  v5 = *(a3 + 2);
  if (v5 > a4)
  {
    v6 = 0;
    v7 = 0;
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v7 = 4;
  *a5 = 4;
  if (a4 - 4 < 0xC)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v8 = *(a3 + 6);
  v6 = *(a3 + 8);
LABEL_7:
  *a5 = v5 + v7;
  v9 = 5 * (v6 >> 16) + ((((43685 * v6) >> 16) + (((v6 - ((43685 * v6) >> 16)) & 0xFFFE) >> 1)) >> 13) + 2;
  v10 = v9 >> 2;
  v11 = ((v9 * 0x10624DD2F1A9FCuLL) >> 64) + 315964800;
  if (__size >= snprintf(__str, __size, "[%02u:%02u:%02u:%06u: %04x] LOG 0x%02x: ", ((v11 * 0x123456789ABCE0uLL) >> 64) % 0x18, v11 / 0x3C - 60 * (((v11 / 0x3C * 0x888888888888889uLL) >> 64) >> 1), v11 % 0x3C, 1000 * (v10 - 1000 * ((v10 * 0x4189374BC6A7F0uLL) >> 64)), v8, v5))
  {
    TelephonyUtilBinToHex();
  }

  return 1;
}

uint64_t ETLGSMAddCommandHeader(uint64_t a1, __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v4 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v4;
    }
  }

  return result;
}

uint64_t ETLGSMParseSubsysResponseHeader(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  v4 = *a2;
  v5 = *(a1 + 8) - v4;
  if (v5 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v5, 4uLL);
    return 0;
  }

  else
  {
    v6 = *(*a1 + v4);
    if (v6 == 75)
    {
      *a2 = v4 + 4;
      if (BYTE1(v6) == a3)
      {
        if (HIWORD(v6) == a4)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLGSMParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", HIWORD(v6), a4);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLGSMParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v6), a3);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v6, 75);
      return 0;
    }
  }
}

uint64_t ETLGSMParseGetIMEI(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  if ((*(a1 + 2) - v3) < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
LABEL_11:
    _ETLDebugPrint("ETLGSMParseGetIMEI", "failed parsing GSM response from frame\n");
    return 0;
  }

  v4 = *a1;
  v5 = *(*a1 + v3);
  if (v5 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_11;
  }

  v6 = v3 + 4;
  *a3 = v6;
  if (BYTE1(v5) != 8)
  {
    _ETLDebugPrint("ETLGSMParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_11;
  }

  if (HIWORD(v5) != 1)
  {
    _ETLDebugPrint("ETLGSMParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_11;
  }

  v7 = *(a1 + 2) - v6;
  if (v7 <= 8)
  {
    _ETLDebugPrint("ETLGSMParseGetIMEI", "Need %u bytes, but only have %u\n", 9, v7);
    return 0;
  }

  else
  {
    v8 = (v4 + v6);
    v9 = *v8;
    *(a2 + 8) = *(v8 + 8);
    *a2 = v9;
    return 1;
  }
}

uint64_t ETLGSMMakeIMEIFromString(uint64_t a1, char *__s)
{
  result = 0;
  if (!a1 || !__s)
  {
    return result;
  }

  v5 = strlen(__s);
  if (v5 != 15)
  {
    _ETLDebugPrint("ETLGSMMakeIMEIFromString", "Length %zu is unrecognized\n", v5);
    return 0;
  }

  v6 = *__s;
  v7 = v6 - 58;
  v8 = v6 - 48;
  if (v7 < 0xFFFFFFF6)
  {
    v8 = -1;
  }

  if (v8 < 0)
  {
    return 0;
  }

  result = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *a1 = 8;
  *(a1 + 1) = (16 * v8) | 0xA;
  v9 = __s[1];
  v10 = v9 - 58;
  v11 = v9 - 48;
  if (v10 < 0xFFFFFFF6)
  {
    v11 = -1;
  }

  v12 = __s[2];
  v13 = v12 - 58;
  v14 = v12 - 48;
  if (v13 < 0xFFFFFFF6)
  {
    v14 = -1;
  }

  if ((v11 & 0x80000000) == 0 && (v14 & 0x80000000) == 0)
  {
    result = 0;
    *(a1 + 2) = v11 | (16 * v14);
    v15 = __s[3];
    v16 = v15 - 58;
    v17 = v15 - 48;
    if (v16 < 0xFFFFFFF6)
    {
      v17 = -1;
    }

    v18 = __s[4];
    v19 = v18 - 58;
    v20 = v18 - 48;
    if (v19 < 0xFFFFFFF6)
    {
      v20 = -1;
    }

    if ((v17 & 0x80000000) == 0 && (v20 & 0x80000000) == 0)
    {
      result = 0;
      *(a1 + 3) = v17 | (16 * v20);
      v21 = __s[5];
      v22 = v21 - 58;
      v23 = v21 - 48;
      if (v22 < 0xFFFFFFF6)
      {
        v23 = -1;
      }

      v24 = __s[6];
      v25 = v24 - 58;
      v26 = v24 - 48;
      if (v25 < 0xFFFFFFF6)
      {
        v26 = -1;
      }

      if ((v23 & 0x80000000) == 0 && (v26 & 0x80000000) == 0)
      {
        result = 0;
        *(a1 + 4) = v23 | (16 * v26);
        v27 = __s[7];
        v28 = v27 - 58;
        v29 = v27 - 48;
        if (v28 < 0xFFFFFFF6)
        {
          v29 = -1;
        }

        v30 = __s[8];
        v31 = v30 - 58;
        v32 = v30 - 48;
        if (v31 < 0xFFFFFFF6)
        {
          v32 = -1;
        }

        if ((v29 & 0x80000000) == 0 && (v32 & 0x80000000) == 0)
        {
          result = 0;
          *(a1 + 5) = v29 | (16 * v32);
          v33 = __s[9];
          v34 = v33 - 58;
          v35 = v33 - 48;
          if (v34 < 0xFFFFFFF6)
          {
            v35 = -1;
          }

          v36 = __s[10];
          v37 = v36 - 58;
          v38 = v36 - 48;
          if (v37 < 0xFFFFFFF6)
          {
            v38 = -1;
          }

          if ((v35 & 0x80000000) == 0 && (v38 & 0x80000000) == 0)
          {
            result = 0;
            *(a1 + 6) = v35 | (16 * v38);
            v39 = __s[11];
            v40 = v39 - 58;
            v41 = v39 - 48;
            if (v40 < 0xFFFFFFF6)
            {
              v41 = -1;
            }

            v42 = __s[12];
            v43 = v42 - 58;
            v44 = v42 - 48;
            if (v43 < 0xFFFFFFF6)
            {
              v44 = -1;
            }

            if ((v41 & 0x80000000) == 0 && (v44 & 0x80000000) == 0)
            {
              result = 0;
              *(a1 + 7) = v41 | (16 * v44);
              v45 = __s[13];
              v46 = v45 - 58;
              v47 = v45 - 48;
              if (v46 < 0xFFFFFFF6)
              {
                v47 = -1;
              }

              v48 = __s[14];
              v49 = v48 - 58;
              v50 = v48 - 48;
              if (v49 < 0xFFFFFFF6)
              {
                v50 = -1;
              }

              if ((v47 & 0x80000000) == 0 && (v50 & 0x80000000) == 0)
              {
                *(a1 + 8) = v47 | (16 * v50);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ETLGSMMakeStringFromIMEI(_BYTE *a1, unsigned int a2, _BYTE *a3)
{
  if (a1 && a3)
  {
    if (a2 >= 0x10)
    {
      *a1 = (a3[1] >> 4) | 0x30;
      a1[1] = a3[2] & 0xF | 0x30;
      a1[2] = (a3[2] >> 4) | 0x30;
      a1[3] = a3[3] & 0xF | 0x30;
      a1[4] = (a3[3] >> 4) | 0x30;
      a1[5] = a3[4] & 0xF | 0x30;
      a1[6] = (a3[4] >> 4) | 0x30;
      a1[7] = a3[5] & 0xF | 0x30;
      a1[8] = (a3[5] >> 4) | 0x30;
      a1[9] = a3[6] & 0xF | 0x30;
      a1[10] = (a3[6] >> 4) | 0x30;
      a1[11] = a3[7] & 0xF | 0x30;
      a1[12] = (a3[7] >> 4) | 0x30;
      a1[13] = a3[8] & 0xF | 0x30;
      a1[14] = (a3[8] >> 4) | 0x30;
      a1[15] = 0;
      return 1;
    }

    _ETLDebugPrint("ETLGSMMakeStringFromIMEI", "buffer capacity is %u, need %u\n", a2, 16);
  }

  return 0;
}

void *ETLGSMGetIMEI(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLGSMGetIMEI", "Failed to create command frame\n", v12, v13, v14, v15, v16);
LABEL_19:
    IMEI = 0;
    goto LABEL_20;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_19;
  }

  v21 = 67659;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_19;
  }

  IMEI = malloc((2 * DWORD2(v17) + 32));
  if (!IMEI)
  {
    goto LABEL_20;
  }

  v7 = HDLCFrameEncode();
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v21 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, IMEI, v7);
  }

  if (!*a1)
  {
LABEL_21:
    free(IMEI);
    goto LABEL_19;
  }

  v9 = (*a1)(a1, IMEI, v8, &v21, 1, a3, 0);
  v10 = v21;
  free(IMEI);
  IMEI = 0;
  if (v9 && v10 == v8)
  {
    LOBYTE(v21) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    IMEI = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, &v14, &_ETLResponseRingBuffer, &v21, a3) && v21 == 75)
    {
      IMEI = ETLGSMParseGetIMEI(&v14, a2, &v20);
    }
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return IMEI;
}

uint64_t ETLGSMIsValidIMEI(_BYTE *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  memset(__s2, 170, sizeof(__s2));
  if (a1)
  {
    __s2[0] = (a1[1] >> 4) | 0x30;
    v1 = a1[2];
    __s2[1] = v1 & 0xF | 0x30;
    __s2[2] = (v1 >> 4) | 0x30;
    v2 = a1[3];
    __s2[3] = v2 & 0xF | 0x30;
    __s2[4] = (v2 >> 4) | 0x30;
    v3 = a1[4];
    __s2[5] = v3 & 0xF | 0x30;
    __s2[6] = (v3 >> 4) | 0x30;
    v4 = a1[5];
    __s2[7] = v4 & 0xF | 0x30;
    __s2[8] = (v4 >> 4) | 0x30;
    v5 = a1[6];
    __s2[9] = v5 & 0xF | 0x30;
    __s2[10] = (v5 >> 4) | 0x30;
    v6 = a1[7];
    __s2[11] = v6 & 0xF | 0x30;
    __s2[12] = (v6 >> 4) | 0x30;
    v7 = a1[8];
    __s2[13] = v7 & 0xF | 0x30;
    *&__s2[14] = (v7 >> 4) | 0x30;
  }

  result = strncmp(kDefaultIMEIs, __s2, 0xFuLL);
  if (result)
  {
    return strncmp(qword_2A139A6B0, __s2, 0xFuLL) != 0;
  }

  return result;
}

BOOL ETLLOGGetItemIDAndEquipIDFromCode(unsigned int a1, unsigned int *a2, unsigned int *a3)
{
  if (a1 >> 13 <= 6)
  {
    *a2 = a1 >> 12;
    *a3 = a1 & 0xFFF;
  }

  return a1 < 0xE000;
}

unint64_t ETLLOGDisable(void *a1, uint64_t a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_20;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace <= 7)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 8, FreeSpace);
    goto LABEL_20;
  }

  v16 = 115;
  if (!HDLCFrameInject())
  {
LABEL_20:
    v5 = 0;
    goto LABEL_21;
  }

  v5 = malloc((2 * DWORD2(v13) + 32));
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = HDLCFrameEncode();
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = v6;
  LODWORD(v16) = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v5, v6);
  }

  if (!*a1)
  {
LABEL_22:
    free(v5);
    goto LABEL_20;
  }

  v8 = (*a1)(a1, v5, v7, &v16, 1, a2, 0);
  v9 = v16;
  free(v5);
  v5 = 0;
  if (v8 && v9 == v7)
  {
    LOBYTE(v16) = 115;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v5 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v11, &_ETLResponseRingBuffer, &v16, a2) && **&v11[0] == 115 && DWORD2(v11[0]) >= 8)
    {
      v5 = 0;
      if (!*(*&v11[0] + 4) && (DWORD2(v11[0]) & 0xFFFFFFFC) != 8)
      {
        v5 = *(*&v11[0] + 8) == 0;
      }
    }
  }

LABEL_21:
  HDLCFrameFree();
  HDLCFrameFree();
  return v5;
}

uint64_t ETLLOGGetIDs(void *a1, void *a2, int a3, unsigned int *a4, uint64_t a5)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_24;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace <= 7)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 8, FreeSpace);
    goto LABEL_24;
  }

  v23 = 0x100000073;
  if (!HDLCFrameInject())
  {
LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  v11 = malloc((2 * DWORD2(v20) + 32));
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = HDLCFrameEncode();
  if (!v12)
  {
    goto LABEL_26;
  }

  v13 = v12;
  LODWORD(v23) = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v11, v12);
  }

  if (!*a1)
  {
LABEL_26:
    free(v11);
    goto LABEL_24;
  }

  v14 = (*a1)(a1, v11, v13, &v23, 1, a5, 0);
  v15 = v23;
  free(v11);
  v11 = 0;
  if (v14 && v15 == v13)
  {
    LOBYTE(v23) = 115;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v11 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v18, &_ETLResponseRingBuffer, &v23, a5) && **&v18[0] == 115 && DWORD2(v18[0]) >= 8)
    {
      v11 = 0;
      if (*(*&v18[0] + 4) == 1 && (DWORD2(v18[0]) & 0xFFFFFFFC) != 8)
      {
        if (!(*(*&v18[0] + 8) | BYTE8(v18[0]) & 3))
        {
          if (4 * a3 >= (DWORD2(v18[0]) - 12))
          {
            v16 = (DWORD2(v18[0]) - 12);
          }

          else
          {
            v16 = (4 * a3);
          }

          memcpy(a2, (*&v18[0] + 12), v16);
          *a4 = v16 >> 2;
          v11 = 1;
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }
  }

LABEL_25:
  HDLCFrameFree();
  HDLCFrameFree();
  return v11;
}

uint64_t ETLLOGSetMask(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v8 = a2;
  v10 = (a4 + 7) >> 3;
  _ETLDebugPrint("ETLLOGSetMask", "Set Mask for id %u, bits = %u (%u bytes)\n", a2, a4, (a4 + 7) >> 3);
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_8;
  }

  if (HDLCFrameGetFreeSpace() <= 7)
  {
LABEL_7:
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_8;
  }

  v29 = 0x300000073;
  if (HDLCFrameInject())
  {
    if (v6 > 0x1000)
    {
      _ETLDebugPrint("ETLLOGCreateSetMaskCommand", "Bits %u too large\n");
      goto LABEL_8;
    }

    if (!v6)
    {
      _ETLDebugPrint("ETLLOGCreateSetMaskCommand", "Bits must be nonzero\n", v23, v24);
      goto LABEL_8;
    }

    if (HDLCFrameGetFreeSpace() < v10 + 8)
    {
      goto LABEL_7;
    }

    if (!HDLCFrameInjectUnsignedInt())
    {
      goto LABEL_8;
    }

    if (!HDLCFrameInjectUnsignedInt())
    {
      goto LABEL_8;
    }

    if (!HDLCFrameInject())
    {
      goto LABEL_8;
    }

    if (!ETLSendCommand(a1, v27, a5))
    {
      goto LABEL_8;
    }

    LOBYTE(v29) = 115;
    if (!ETLFindMatchingResponse(a1, v25, &v29, a5))
    {
      goto LABEL_8;
    }

    v13 = *&v25[0];
    if (**&v25[0] == 115 && DWORD2(v25[0]) >= 8 && *(*&v25[0] + 4) == 3 && (DWORD2(v25[0]) & 0xFFFFFFFC) != 8 && !*(*&v25[0] + 8))
    {
      v14 = DWORD2(v25[0]) - 12;
      if ((DWORD2(v25[0]) - 12) >= 4)
      {
        v15 = *(*&v25[0] + 12);
        if (v15 == v8)
        {
          v14 = DWORD2(v25[0]) - 16;
          if ((DWORD2(v25[0]) - 16) >= 4)
          {
            v16 = *(*&v25[0] + 16);
            v14 = DWORD2(v25[0]) - 20;
            if (v16 >= v6)
            {
              v17 = v10;
            }

            else
            {
              _ETLDebugPrint("ETLLOGParseSetMaskResponse", "Warning: response bits %u is less than request %u\n", *(*&v25[0] + 16), v6);
              v17 = (v16 + 7) >> 3;
              v6 = v16;
            }

            if (v17 <= v14)
            {
              v18 = (v13 + 20);
              v19 = v6 >> 3;
              v20 = -1 << (v6 & 7);
              v21 = memcmp(v18, a3, v19);
              v22 = (a3[v19] ^ v18[v19]) & ~v20;
              if (!(v21 | v22))
              {
                v11 = 1;
                goto LABEL_9;
              }

              _ETLDebugPrint("ETLLOGParseSetMaskResponse", "Error: Mask response mismatch\n");
              if (v22)
              {
                _ETLDebugPrint("ETLLOGParseSetMaskResponse", "Error: Mask[%u]: 0x%x, and Received Mask[%u]: 0x%x\n", v19, a3[v19] & ~v20, v19, v18[v19] & ~v20);
              }

              if ((_ETLDebugFlags & 2) != 0)
              {
                off_2A18A5818("Sent:", 2, a3, v10);
                if ((_ETLDebugFlags & 2) != 0)
                {
                  (off_2A18A5818)();
                }
              }

              goto LABEL_29;
            }

            LODWORD(v10) = v17;
          }
        }

        else
        {
          _ETLDebugPrint("ETLLOGParseSetMaskResponse", "ID mismatch. Requested %u, response %u\n", v8, v15);
        }
      }

      _ETLDebugPrint("ETLLOGParseSetMaskResponse", "Error: Received Mask bits upto %u bytes, but the actual payload has %u bytes.\n", v10, v14);
    }

LABEL_29:
    _ETLDebugPrint("ETLLOGParseSetMaskResponse", "Failed on ID %u\n");
  }

LABEL_8:
  v11 = 0;
LABEL_9:
  HDLCFrameFree();
  HDLCFrameFree();
  return v11;
}

uint64_t ETLLOGSetMaskWithRetry(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a6)
  {
    return 0;
  }

  v6 = a6;
  do
  {
    v12 = ETLLOGSetMask(a1, a2, a3, a4, a5);
    if (v12)
    {
      break;
    }

    TelephonyUtilRingBufferReset();
    v13 = *(a1 + 24);
    if (v13)
    {
      v13(a1);
    }

    _ETLDebugPrint("ETLLOGSetMaskWithRetry", "Trying again\n");
    --v6;
  }

  while (v6);
  return v12;
}

uint64_t ETLLOGClearAllMasksWithRetry(void *a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x29EDCA608];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[2] = v6;
  v18[3] = v6;
  v18[0] = v6;
  v18[1] = v6;
  v16 = -1431655766;
  _ETLDebugPrint("ETLLOGClearAllMasksWithRetry", "Clearing All Masks\n");
  result = ETLLOGGetIDs(a1, v18, 16, &v16, a2);
  if (result)
  {
    memset(v17, 0, sizeof(v17));
    if (a3)
    {
      v8 = 0;
      v9 = v16 - 1;
      if (v16 - 1 >= 0xD)
      {
        v9 = 13;
      }

      v15 = (v9 + 1);
      while (1)
      {
        v10 = *(v18 + v8);
        v11 = v10 >= 0x1000 ? 4096 : *(v18 + v8);
        v12 = v10 ? v11 : 4096;
        if ((ETLLOGSetMask(a1, v8, v17, v12, a2) & 1) == 0)
        {
          break;
        }

LABEL_6:
        if (++v8 == v15)
        {
          return 1;
        }
      }

      v13 = a3;
      while (--v13)
      {
        TelephonyUtilRingBufferReset();
        v14 = a1[3];
        if (v14)
        {
          v14(a1);
        }

        _ETLDebugPrint("ETLLOGClearAllMasksWithRetry", "Trying again\n", v15);
        if (ETLLOGSetMask(a1, v8, v17, v12, a2))
        {
          goto LABEL_6;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t ETLLOGClearAllEnabledMasksWithRetry(void *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v24 = *MEMORY[0x29EDCA608];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[2] = v8;
  v23[3] = v8;
  v23[0] = v8;
  v23[1] = v8;
  v21 = -1431655766;
  _ETLDebugPrint("ETLLOGClearAllEnabledMasksWithRetry", "Clearing All Masks\n");
  result = ETLLOGGetIDs(a1, v23, 16, &v21, a4);
  if (result)
  {
    v10 = v21 - 1;
    if (v21 - 1 >= 0xD)
    {
      v10 = 13;
    }

    v19 = v10;
    memset(v22, 0, sizeof(v22));
    if (a2 && a5)
    {
      v11 = 0;
      while (1)
      {
        v12 = *(a3 + 4 * v11);
        if (v12 <= v19)
        {
          v13 = *(v23 + v12);
          v14 = v13 >= 0x1000 ? 4096 : *(v23 + v12);
          v15 = v13 ? v14 : 4096;
          if ((ETLLOGSetMask(a1, *(a3 + 4 * v11), v22, v15, a4) & 1) == 0)
          {
            break;
          }
        }

LABEL_7:
        if (++v11 == a2)
        {
          return 1;
        }
      }

      v16 = a5;
      while (--v16)
      {
        TelephonyUtilRingBufferReset();
        v17 = a1[3];
        if (v17)
        {
          v17(a1);
        }

        _ETLDebugPrint("ETLLOGClearAllEnabledMasksWithRetry", "Trying again\n");
        if (ETLLOGSetMask(a1, v12, v22, v15, a4))
        {
          goto LABEL_7;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const char *ETLLOGEquipIDAsString(unsigned int a1)
{
  if (a1 <= 0xD)
  {
    return off_29EE6DF38[a1];
  }

  else
  {
    return "Unknown";
  }
}

uint64_t APPLIB_DIAG_PM_ReadVRegLevel(void *a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, a2);
  if (!HDLCFrameCreateUplink())
  {
    return 0xFFFFFFFFLL;
  }

  HDLCFrameInject();
  LODWORD(result) = HDLCFrameEncode();
  if (result)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t APPLIB_DIAG_PM_ParseReadVRegLevelResponse(uint64_t a1, unsigned int a2, _BYTE *a3, _WORD *a4)
{
  if (a2 < 3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 = *(a1 + 3);
  *a4 = *(a1 + 4);
  return result;
}

uint64_t ETLHSICParseCommandHeader(uint64_t a1, _DWORD *a2, int *a3)
{
  result = ETLMaverickParseFACTORYResponseHeader(a1, a2, 48);
  if (result)
  {
    v7 = *a2;
    v8 = *(a1 + 8) - v7;
    if (v8 <= 1)
    {
      _ETLDebugPrint("ETLHSICParseCommandHeader", "Need %u bytes, but only have %u\n", 2, v8);
      return 0;
    }

    else
    {
      v9 = *(*a1 + v7);
      *a3 = v9;
      if (v9)
      {
        _ETLDebugPrint("ETLHSICParseCommandHeader", "Command status was %u\n", v9);
      }

      return 1;
    }
  }

  return result;
}

uint64_t ETLHSICCreateEchoCommand(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 0xB)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    return 0;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedInt() || !ETLRequireFreeSpace(a1, v6 + 2) || !HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInject();
}

uint64_t ETLHSICParseEchoCommand(unsigned int *a1, int *a2)
{
  v2 = a1[2];
  v3 = v2 - 4;
  if (v2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a1[2], 4uLL);
    return 0;
  }

  else
  {
    v4 = **a1;
    if (v4 == 75)
    {
      if (BYTE1(v4) == 254)
      {
        v5 = HIWORD(v4);
        if (v5 == 48)
        {
          if (v3 <= 1)
          {
            _ETLDebugPrint("ETLHSICParseCommandHeader", "Need %u bytes, but only have %u\n", 2, v3);
            return 0;
          }

          else
          {
            v6 = *(*a1 + 4);
            *a2 = v6;
            if (v6)
            {
              _ETLDebugPrint("ETLHSICParseCommandHeader", "Command status was %u\n", v6);
            }

            return 1;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v5, 48);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v4), 254);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLUARTCreateSetInactivityTimerCommand(uint64_t a1, uint64_t a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v3 = HDLCFrameGetFreeSpace();
    if (v3 <= 3)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 4, v3);
      return 0;
    }

    else
    {

      return HDLCFrameInjectUnsignedInt();
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }
}

BOOL ETLUARTParseSetInactivityTimerResponse(unsigned int *a1)
{
  v1 = a1[2];
  if (v1 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a1[2], 4uLL);
    return 0;
  }

  else
  {
    v2 = **a1;
    if (v2 == 75)
    {
      if (BYTE1(v2) == 253)
      {
        v3 = HIWORD(v2);
        if (v3 == 44)
        {
          if (v1 == 4)
          {
            _ETLDebugPrint("ETLUARTParseSetInactivityTimerResponse", "Only have %u bytes, need %u\n", 0, 1);
            return 0;
          }

          else
          {
            return *(*a1 + 4) == 1;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v3, 44);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v2), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

unint64_t ETLUARTSetInactivityTimer(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLUARTSetInactivityTimer", "Failed to create command frame\n");
    goto LABEL_24;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_24;
  }

  v16 = 2948427;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_24;
  }

  if (HDLCFrameGetFreeSpace() <= 3)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_24;
  }

  if (!HDLCFrameInjectUnsignedInt())
  {
LABEL_24:
    v5 = 0;
    goto LABEL_25;
  }

  v5 = malloc((2 * DWORD2(v13) + 32));
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = HDLCFrameEncode();
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = v6;
  v16 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v5, v6);
  }

  if (!*a1)
  {
LABEL_26:
    free(v5);
    goto LABEL_24;
  }

  v8 = (*a1)(a1, v5, v7, &v16, 1, a3, 0);
  v9 = v16;
  free(v5);
  v5 = 0;
  if (v8 && v9 == v7)
  {
    LOBYTE(v16) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v5 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v11, &_ETLResponseRingBuffer, &v16, a3) && v16 == 75)
    {
      v16 = 0;
      v5 = 0;
      if (ETLMaverickParseBSPResponseHeader(v11, &v16, 44))
      {
        if (DWORD2(v11[0]) != v16)
        {
          v5 = *(*&v11[0] + v16) == 1;
          goto LABEL_25;
        }

        _ETLDebugPrint("ETLUARTParseSetInactivityTimerResponse", "Only have %u bytes, need %u\n");
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  HDLCFrameFree();
  HDLCFrameFree();
  return v5;
}

uint64_t ETLMESSAGEGetSubsystemIDRanges(void *a1, unsigned int a2, void *a3, unsigned int *a4, uint64_t a5)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  *a4 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_23;
  }

  LOWORD(v22) = 381;
  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_23;
  }

  if (!HDLCFrameInject())
  {
LABEL_23:
    v10 = 0;
    goto LABEL_24;
  }

  v10 = malloc((2 * DWORD2(v19) + 32));
  if (v10)
  {
    v11 = HDLCFrameEncode();
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = v11;
    v22 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v10, v11);
    }

    if (!*a1)
    {
LABEL_25:
      free(v10);
      goto LABEL_23;
    }

    v13 = (*a1)(a1, v10, v12, &v22, 1, a5, 0);
    v14 = v22;
    free(v10);
    v10 = 0;
    if (v13)
    {
      if (v14 == v12)
      {
        LOBYTE(v22) = 125;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        if (ETLFindMatchingResponseUsingBuffer(a1, v17, &_ETLResponseRingBuffer, &v22, a5))
        {
          if (DWORD2(v17[0]) >= 2)
          {
            if (*(*&v17[0] + 1) == 1)
            {
              if ((DWORD2(v17[0]) - 8) <= 0xFFFFFFF9)
              {
                if (*(*&v17[0] + 2) == 1)
                {
                  if (*(*&v17[0] + 4) < a2)
                  {
                    a2 = *(*&v17[0] + 4);
                  }

                  v15 = 4 * a2;
                  if (DWORD2(v17[0]) - 8 >= v15)
                  {
                    memcpy(a3, (*&v17[0] + 8), v15);
                    *a4 = a2;
                    v10 = 1;
                    goto LABEL_24;
                  }
                }

                else
                {
                  _ETLDebugPrint("ETLMESSAGEParseGetSubsystemIDRangesResponse", "Status was %u\n");
                }
              }
            }

            else
            {
              _ETLDebugPrint("ETLMESSAGEParseGetSubsystemIDRangesResponse", "Response subcommand %u mismatches expected %u\n");
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLMESSAGEFindMatchingResponse", "Failed to find matching response\n");
        }

        goto LABEL_23;
      }
    }
  }

LABEL_24:
  HDLCFrameFree();
  HDLCFrameFree();
  return v10;
}

uint64_t ETLMESSAGEGetSubsystemMasksWithRetry(uint64_t a1, unsigned __int16 *a2, int a3, unsigned int a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = a6;
  v9 = *a2;
  v10 = a2[1] - v9 + 1;
  v41 = *a2;
  *a6 = 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if (a8)
  {
    v34 = v11;
    v14 = a8 - 1;
    v37 = a8 - 1;
    while (1)
    {
      v40 = a4;
      __dst = a5;
      if (v10 >= 0x3D)
      {
        v15 = 61;
      }

      else
      {
        v15 = v10;
      }

      v42 = v9 + v15 - 1;
      _ETLDebugPrint("ETLMESSAGEGetSubsystemMasksWithRetry", "Partition Range to 0x%08X, max 0x%x\n", v9 | (v42 << 16), 61);
      while (1)
      {
        v45 = 0u;
        v46 = 0u;
        v47 = 0;
        memset(v43, 0, sizeof(v43));
        v44 = 0;
        if (!HDLCFrameCreateUplink())
        {
          goto LABEL_44;
        }

        if (a3)
        {
          if (a3 != 1)
          {
            _ETLDebugPrint("ETLMESSAGEGetSubcommandTypeForMaskType", "Invald mask type %u\n");
            goto LABEL_44;
          }

          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        LOBYTE(v48[0]) = 125;
        BYTE1(v48[0]) = v16;
        if (HDLCFrameGetFreeSpace() <= 1)
        {
          goto LABEL_42;
        }

        if (!HDLCFrameInject())
        {
          goto LABEL_44;
        }

        if (HDLCFrameGetFreeSpace() <= 3)
        {
LABEL_42:
          _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
LABEL_44:
          v21 = 0;
          LOBYTE(v17) = 0;
          goto LABEL_45;
        }

        if (!HDLCFrameInject())
        {
          goto LABEL_44;
        }

        v36 = v8;
        v17 = malloc((2 * DWORD2(v45) + 32));
        if (v17)
        {
          v18 = HDLCFrameEncode();
          if (!v18)
          {
            goto LABEL_50;
          }

          v19 = v18;
          v48[0] = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v17, v18);
          }

          if (*a1)
          {
            v20 = (*a1)(a1, v17, v19, v48, 1, a7, 0);
            v32 = v48[0];
            v33 = v20;
            free(v17);
            v21 = 0;
            if (v33)
            {
              LOBYTE(v17) = 0;
              v22 = v32 == v19;
              v8 = v36;
              if (v22)
              {
                LOBYTE(v48[0]) = 125;
                if (!_ETLResponseRingBuffer)
                {
                  TelephonyUtilRingBufferInitialize();
                }

                if (ETLFindMatchingResponseUsingBuffer(a1, v43, &_ETLResponseRingBuffer, v48, a7))
                {
                  if (DWORD2(v43[0]) >= 2)
                  {
                    if (v34 == *(*&v43[0] + 1))
                    {
                      if ((DWORD2(v43[0]) - 8) <= 0xFFFFFFF9)
                      {
                        if (*(*&v43[0] + 6) == 1)
                        {
                          v23 = *(*&v43[0] + 2);
                          v24 = *(*&v43[0] + 4);
                          if (v42 == v24 && v41 == v23)
                          {
                            v25 = v24 - v23;
                            if (v25 + 1 < v40)
                            {
                              v21 = v25 + 1;
                            }

                            else
                            {
                              v21 = v40;
                            }

                            v26 = 4 * v21;
                            if (DWORD2(v43[0]) - 8 >= v26)
                            {
                              memcpy(__dst, (*&v43[0] + 8), v26);
                              LOBYTE(v17) = 1;
                              goto LABEL_45;
                            }
                          }

                          else
                          {
                            _ETLDebugPrint("ETLMESSAGEParseGetSubsystemMasksResponse", "Returned range 0x%x didn't match requested 0x%x\n");
                          }
                        }

                        else
                        {
                          _ETLDebugPrint("ETLMESSAGEParseGetSubsystemMasksResponse", "Status was %u\n");
                        }
                      }
                    }

                    else
                    {
                      _ETLDebugPrint("ETLMESSAGEParseGetSubsystemMasksResponse", "Response subcommand 0x%x mismatches expected 0x%x\n");
                    }
                  }
                }

                else
                {
                  _ETLDebugPrint("ETLMESSAGEFindMatchingResponse", "Failed to find matching response\n", v30, v31);
                }

                goto LABEL_44;
              }
            }

            else
            {
              LOBYTE(v17) = 0;
              v8 = v36;
            }
          }

          else
          {
LABEL_50:
            free(v17);
            v21 = 0;
            LOBYTE(v17) = 0;
            v8 = v36;
          }
        }

        else
        {
          v21 = 0;
        }

LABEL_45:
        HDLCFrameFree();
        HDLCFrameFree();
        if (v17)
        {
          break;
        }

        if (!v14)
        {
          goto LABEL_64;
        }

        TelephonyUtilRingBufferReset();
        v27 = *(a1 + 24);
        if (v27)
        {
          v27(a1);
        }

        _ETLDebugPrint("ETLMESSAGEGetSubsystemMasksWithRetry", "Trying again\n");
        --v14;
      }

      if (v21)
      {
        *v8 += v21;
        a5 = &__dst[4 * v21];
        a4 = v40 - v21;
        v10 -= v21;
        LOWORD(v9) = v41 + v21;
        v41 = v9;
        v14 = v37;
        if (a2[1] >= v9)
        {
          continue;
        }
      }

      return 1;
    }
  }

  if (v10 >= 0x3D)
  {
    v29 = 61;
  }

  else
  {
    v29 = v10;
  }

  _ETLDebugPrint("ETLMESSAGEGetSubsystemMasksWithRetry", "Partition Range to 0x%08X, max 0x%x\n", (v9 | ((v9 + v29) << 16)) - 0x10000, 61);
LABEL_64:
  result = 0;
  *v8 = 0;
  return result;
}

uint64_t ETLMESSAGESetSubsystemRuntimeMasksWithRetry(void *a1, unsigned __int16 *a2, uint64_t a3, unsigned int a4, int a5)
{
  v5 = *a2;
  v6 = a2[1] - v5 + 1;
  v29 = *a2;
  if (!a5)
  {
    if (v6 >= 0x3D)
    {
      v6 = 61;
    }

    _ETLDebugPrint("ETLMESSAGESetSubsystemRuntimeMasksWithRetry", "Partition Range to 0x%08X, max 0x%x\n", (v5 | ((v5 + v6) << 16)) - 0x10000, 61);
    return 0;
  }

  v8 = a5 - 1;
  v23 = a5 - 1;
  do
  {
    v28 = a3;
    if (v6 >= 0x3D)
    {
      v9 = 61;
    }

    else
    {
      v9 = v6;
    }

    v25 = v9;
    v26 = v6;
    v30 = v5 + v9 - 1;
    _ETLDebugPrint("ETLMESSAGESetSubsystemRuntimeMasksWithRetry", "Partition Range to 0x%08X, max 0x%x\n", v5 | (v30 << 16), 61);
    while (1)
    {
      v33 = 0u;
      v34 = 0u;
      v35 = 0;
      memset(v31, 0, sizeof(v31));
      v32 = 0;
      if (!HDLCFrameCreateUplink())
      {
        goto LABEL_13;
      }

      LOWORD(v36[0]) = 1149;
      if (HDLCFrameGetFreeSpace() <= 1)
      {
        goto LABEL_12;
      }

      if (!HDLCFrameInject())
      {
        goto LABEL_13;
      }

      if (HDLCFrameGetFreeSpace() < 4 * (v30 - v29 + 1) + 4)
      {
LABEL_12:
        _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
        goto LABEL_13;
      }

      if (HDLCFrameInject())
      {
        if (HDLCFrameInjectUnsignedShort())
        {
          if (HDLCFrameInject())
          {
            v11 = malloc((2 * DWORD2(v33) + 32));
            if (v11)
            {
              v12 = v11;
              v13 = HDLCFrameEncode();
              if (!v13)
              {
                goto LABEL_34;
              }

              v14 = v13;
              v36[0] = -1431655766;
              if ((_ETLDebugFlags & 2) != 0)
              {
                off_2A18A5818(&str_3, 0, v12, v13);
              }

              if (!*a1)
              {
LABEL_34:
                free(v12);
                goto LABEL_13;
              }

              v15 = (*a1)(a1, v12, v14, v36, 1, a4, 0);
              v21 = v36[0];
              v22 = v15;
              free(v12);
              if (v22)
              {
                if (v21 == v14)
                {
                  break;
                }
              }
            }
          }
        }
      }

LABEL_13:
      HDLCFrameFree();
      HDLCFrameFree();
      if (!v8)
      {
        return 0;
      }

      TelephonyUtilRingBufferReset();
      v10 = a1[3];
      if (v10)
      {
        v10(a1);
      }

      _ETLDebugPrint("ETLMESSAGESetSubsystemRuntimeMasksWithRetry", "Trying again\n");
      --v8;
    }

    LOBYTE(v36[0]) = 125;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a1, v31, &_ETLResponseRingBuffer, v36, a4))
    {
      _ETLDebugPrint("ETLMESSAGEFindMatchingResponse", "Failed to find matching response\n", v19, v20);
      goto LABEL_13;
    }

    if (DWORD2(v31[0]) < 2)
    {
      goto LABEL_13;
    }

    if (*(*&v31[0] + 1) != 4)
    {
      _ETLDebugPrint("ETLMESSAGEParseSetSubsystemRunTimeMasksResponse", "Response subcommand 0x%x mismatches expected 0x%x\n");
      goto LABEL_13;
    }

    if ((DWORD2(v31[0]) - 8) > 0xFFFFFFF9)
    {
      goto LABEL_13;
    }

    if (*(*&v31[0] + 6) != 1)
    {
      _ETLDebugPrint("ETLMESSAGEParseSetSubsystemRunTimeMasksResponse", "Status was %u\n");
      goto LABEL_13;
    }

    v16 = *(*&v31[0] + 2);
    v17 = *(*&v31[0] + 4);
    if (v30 != v17 || v29 != v16)
    {
      _ETLDebugPrint("ETLMESSAGEParseSetSubsystemRunTimeMasksResponse", "Returned range 0x%x didn't match requested 0x%x\n", v16 | (v17 << 16), v29 | (v30 << 16));
    }

    HDLCFrameFree();
    HDLCFrameFree();
    if (!v26)
    {
      return 1;
    }

    a3 = v28 + 4 * v25;
    v6 = v26 - v25;
    LOWORD(v5) = v29 + v25;
    v29 = v5;
    result = 1;
    v8 = v23;
  }

  while (a2[1] >= v5);
  return result;
}

uint64_t ETLMESSAGESetAllSubsystemRunTimeMasks(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3)
{
  v4 = a2;
  _ETLDebugPrint("ETLMESSAGESetAllSubsystemRunTimeMasks", "to 0x%x\n", a2);
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_17;
  }

  v14 = 1405;
  if (HDLCFrameGetFreeSpace() <= 1)
  {
    goto LABEL_16;
  }

  if (!HDLCFrameInject())
  {
    goto LABEL_17;
  }

  if (HDLCFrameGetFreeSpace() <= 5)
  {
LABEL_16:
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_17;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedInt() || !ETLSendCommand(a1, v12, a3))
  {
    goto LABEL_17;
  }

  LOBYTE(v14) = 125;
  if (!ETLFindMatchingResponse(a1, v10, &v14, a3))
  {
    _ETLDebugPrint("ETLMESSAGEFindMatchingResponse", "Failed to find matching response\n", v9);
    goto LABEL_17;
  }

  if (DWORD2(v10[0]) < 2)
  {
    goto LABEL_17;
  }

  if (*(*&v10[0] + 1) != 5)
  {
    _ETLDebugPrint("ETLMESSAGEParseSetAllSubsystemRunTimeMasksResponse", "Response subcommand 0x%x mismatches expected 0x%x\n");
    goto LABEL_17;
  }

  if ((DWORD2(v10[0]) - 8) > 0xFFFFFFF9)
  {
LABEL_17:
    v7 = 0;
    HDLCFrameFree();
    HDLCFrameFree();
    _ETLDebugPrint("ETLMESSAGESetAllSubsystemRunTimeMasks", "Failed to set masks to 0x%x\n", v4);
    return v7;
  }

  if (*(*&v10[0] + 2) != 1)
  {
    _ETLDebugPrint("ETLMESSAGEParseSetAllSubsystemRunTimeMasksResponse", "Status was %u\n");
    goto LABEL_17;
  }

  v6 = *(*&v10[0] + 4);
  if (v6 != v4)
  {
    _ETLDebugPrint("ETLMESSAGEParseSetAllSubsystemRunTimeMasksResponse", "Returned mask %u doesn't match requested %u\n", v6, v4);
  }

  v7 = 1;
  HDLCFrameFree();
  HDLCFrameFree();
  return v7;
}

uint64_t ETLMESSAGESetFlags(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), int a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  *a4 = 0;
  _ETLDebugPrint("ETLMESSAGESetFlags", "Setting enabled to 0x%x\n", a2);
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_17;
  }

  v17 = 1661;
  if (HDLCFrameGetFreeSpace() <= 1)
  {
    goto LABEL_16;
  }

  if (!HDLCFrameInject())
  {
    goto LABEL_17;
  }

  if (HDLCFrameGetFreeSpace() <= 5)
  {
LABEL_16:
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_17;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedInt() || !ETLSendCommand(a1, v15, a5))
  {
    goto LABEL_17;
  }

  LOBYTE(v17) = 125;
  if (!ETLFindMatchingResponse(a1, v13, &v17, a5))
  {
    _ETLDebugPrint("ETLMESSAGEFindMatchingResponse", "Failed to find matching response\n", v12);
    goto LABEL_17;
  }

  *a4 = 0;
  v9 = DWORD2(v13[0]);
  if (DWORD2(v13[0]) < 2)
  {
    goto LABEL_17;
  }

  if (*(*&v13[0] + 1) != 6)
  {
    _ETLDebugPrint("ETLMESSAGEParseSetFlagsResponse", "Response subcommand 0x%x mismatches expected 0x%x\n");
    goto LABEL_17;
  }

  if ((DWORD2(v13[0]) - 8) > 0xFFFFFFF9)
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if (*(*&v13[0] + 2) != 1)
  {
    _ETLDebugPrint("ETLMESSAGEParseSetFlagsResponse", "Status was %u\n");
    goto LABEL_17;
  }

  *a3 = *(*&v13[0] + 4);
  if ((v9 - 12) <= 0xFFFFFFFB)
  {
    *a4 = 0;
  }

  v10 = 1;
LABEL_18:
  HDLCFrameFree();
  HDLCFrameFree();
  return v10;
}

uint64_t ETLMESSAGESetEnabled(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), int a2, uint64_t a3)
{
  v6 = 0;
  LODWORD(result) = ETLMESSAGESetFlags(a1, a2, &v6, &v5, a3);
  if (v6 == a2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t APPLIB_DIAG_GetRevision(_WORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 4)
  {
    bzero(a1, a2);
    *a1 = 30720;
    *(a1 + 2) = -16;
    if (a2 >= 6)
    {
      *a1 = 2129688576;
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t DetectAndFixSpecialCharacters(unsigned __int8 *a1, int a2, int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a3 <= 1024 && 2 * a3 <= a2)
  {
    bzero(__src, 0x800uLL);
    if (a3 < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = a1;
      v8 = a3;
      do
      {
        while (1)
        {
          v10 = *v7++;
          v9 = v10;
          v11 = v6;
          v12 = v6 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v6 += 2;
          __src[v12] = v9 & 0x5F;
          __src[v11] = 125;
          if (!--v8)
          {
            goto LABEL_10;
          }
        }

        ++v6;
        __src[v11] = v9;
        --v8;
      }

      while (v8);
    }

LABEL_10:
    memcpy(a1, __src, v6);
    result = (v6 + 1);
    a1[v6] = 126;
  }

  return result;
}

uint64_t APPLIB_DIAG_PingBaseBand(_WORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 4)
  {
    bzero(a1, a2);
    *a1 = 11387;
    *(a1 + 2) = 61;
    if (a2 >= 6)
    {
      *a1 = 2117938299;
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GetBaseBandRevision(_WORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 4)
  {
    bzero(a1, a2);
    *a1 = -27780;
    *(a1 + 2) = 73;
    if (a2 >= 6)
    {
      *a1 = 2118751100;
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_SetDownloadMode(_WORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 4)
  {
    bzero(a1, a2);
    *a1 = -24262;
    *(a1 + 2) = 110;
    if (a2 >= 6)
    {
      *a1 = 2121179450;
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_NvItemRead(char *a1, unsigned int a2, __int16 a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 38;
    *(a1 + 1) = a3;
    v4 = 1064;
    LOWORD(v5) = -1;
    v6 = a1;
    do
    {
      v7 = *v6++;
      v5 = crc_16_l_table[(v7 ^ v5)] ^ ((v5 & 0xFF00) >> 8);
      v4 -= 8;
    }

    while (v4);
    *(a1 + 133) = ~v5;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v9 = 0;
      v10 = 0;
      do
      {
        while (1)
        {
          v11 = a1[v9];
          v12 = v10;
          v13 = v10 + 1;
          if ((v11 - 125) > 1)
          {
            break;
          }

          v10 += 2;
          __src[v13] = v11 & 0x5F;
          __src[v12] = 125;
          if (++v9 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v10;
        __src[v12] = v11;
        ++v9;
      }

      while (v9 != 135);
LABEL_11:
      memcpy(a1, __src, v10);
      v3 = (v10 + 1);
      a1[v10] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t APPLIB_DIAG_NvItemWrite(char *a1, unsigned int a2, __int16 a3, void *__src, int a5)
{
  v18 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140 && __src && a5 <= 128)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 39;
    *(a1 + 1) = a3;
    memcpy(a1 + 3, __src, a5);
    v8 = 1064;
    LOWORD(v9) = -1;
    v10 = a1;
    do
    {
      v11 = *v10++;
      v9 = crc_16_l_table[(v11 ^ v9)] ^ ((v9 & 0xFF00) >> 8);
      v8 -= 8;
    }

    while (v8);
    *(a1 + 133) = ~v9;
    if (a2 >= 0x10E)
    {
      bzero(__srca, 0x800uLL);
      v12 = 0;
      v13 = 0;
      do
      {
        while (1)
        {
          v14 = a1[v12];
          v15 = v13;
          v16 = v13 + 1;
          if ((v14 - 125) > 1)
          {
            break;
          }

          v13 += 2;
          __srca[v16] = v14 & 0x5F;
          __srca[v15] = 125;
          if (++v12 == 135)
          {
            goto LABEL_13;
          }
        }

        ++v13;
        __srca[v15] = v14;
        ++v12;
      }

      while (v12 != 135);
LABEL_13:
      memcpy(a1, __srca, v13);
      result = (v13 + 1);
      a1[v13] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTMNvItemRead(char *a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 19)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 15) = 0;
    *a1 = 2891;
    *(a1 + 2) = 0x900000025C0024;
    *(a1 + 5) = a3;
    v4 = crc_16_l_table[a1[7] ^ 0x5FLL];
    v5 = crc_16_l_table[a1[8] ^ 0xB7 ^ v4];
    v6 = crc_16_l_table[(a1[9] ^ v5 ^ HIBYTE(v4))];
    v7 = crc_16_l_table[(v6 ^ HIBYTE(v5) ^ a3)];
    v8 = a3 >> 8;
    v9 = crc_16_l_table[(a3 >> 8) ^ crc_16_l_table[(v6 ^ HIBYTE(v5) ^ a3)] ^ (v6 >> 8)];
    v10 = v9 ^ ~(v7 >> 8);
    *(a1 + 6) = v9 ^ ~(v7 >> 8);
    if (a2 >= 0x1C)
    {
      v12 = a3;
      v13 = v9 ^ (v7 >> 8);
      bzero(v26, 0x7F5uLL);
      __src = 0x25C00240B4BLL;
      v24 = 144;
      if ((v12 - 125) > 1)
      {
        v14 = 11;
      }

      else
      {
        v26[0] = v12 & 0x5F;
        v14 = 12;
        LOBYTE(v12) = 125;
      }

      v15 = ~v13;
      v25 = v12;
      v16 = v14;
      v17 = v14 + 1;
      if (v8 - 125 <= 1)
      {
        *(&__src + v17) = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v17) = v14 + 2;
      }

      v18 = BYTE1(v10);
      *(&__src + v16) = v8;
      v19 = v17;
      v20 = v17 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v20) = v15 & 0x5F;
        LODWORD(v20) = v19 + 2;
        LOBYTE(v15) = 125;
      }

      *(&__src + v19) = v15;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        *(&__src + v21) = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v18;
      memcpy(a1, &__src, v21);
      v3 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t APPLIB_DIAG_FTMNvItemWrite(void *a1, int a2, __int16 a3, void *__src, int a5)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 - a5 >= 21)
  {
    *a1 = 0;
    a1[1] = 0;
    *(a1 + 13) = 0;
    *a1 = 2891;
    *(a1 + 2) = 0xE0000025D0024;
    *(a1 + 5) = a3;
    *(a1 + 6) = a5;
    memcpy(a1 + 14, __src, a5);
    v10 = 8 * (a5 + 14);
    if (8 * (a5 + 14))
    {
      LOWORD(v11) = -1;
      v12 = a1;
      do
      {
        v13 = *v12++;
        v11 = crc_16_l_table[(v13 ^ v11)] ^ ((v11 & 0xFF00) >> 8);
        v10 -= 8;
      }

      while (v10);
      v14 = ~v11;
      v15 = ~v11 >> 8;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(a1 + a5 + 14) = v14;
    *(a1 + a5 + 15) = v15;
    v16 = (a5 + 16);
    result = 0xFFFFFFFFLL;
    if (v16 <= 1024 && 2 * v16 <= a2)
    {
      bzero(__srca, 0x800uLL);
      if (v16 < 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        v18 = a1;
        do
        {
          while (1)
          {
            v20 = *v18++;
            v19 = v20;
            v21 = v17;
            v22 = v17 + 1;
            if ((v20 - 125) > 1)
            {
              break;
            }

            v17 += 2;
            __srca[v22] = v19 & 0x5F;
            __srca[v21] = 125;
            if (!--v16)
            {
              goto LABEL_17;
            }
          }

          ++v17;
          __srca[v21] = v19;
          --v16;
        }

        while (v16);
      }

LABEL_17:
      memcpy(a1, __srca, v17);
      result = (v17 + 1);
      *(a1 + v17) = 126;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_ModeChange(_WORD *a1, int a2, unsigned int a3)
{
  v20 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 10)
  {
    *a1 = 0;
    a1[4] = 0;
    *a1 = 41;
    v5 = a3;
    *(a1 + 1) = a3;
    v6 = a3 >> 8;
    *(a1 + 2) = BYTE1(a3);
    v7 = crc_16_l_table[a3 ^ 0x44];
    v8 = crc_16_l_table[crc_16_l_table[a3 ^ 0x44] ^ (a3 >> 8) ^ 0xB3];
    v9 = v8 ^ (v7 >> 8);
    v10 = v8 ^ ~(v7 >> 8);
    *(a1 + 3) = v10;
    v11 = BYTE1(v10);
    *(a1 + 4) = BYTE1(v10);
    bzero(v19, 0x7FEuLL);
    __src[0] = 41;
    if ((v5 - 125) > 1)
    {
      v12 = 2;
    }

    else
    {
      v19[0] = v5 & 0x5F;
      v12 = 3;
      LOBYTE(v5) = 125;
    }

    v13 = ~v9;
    __src[1] = v5;
    v14 = v12 + 1;
    if (v6 - 125 <= 1)
    {
      __src[v14] = v6 & 0x5F;
      LOBYTE(v6) = 125;
      LODWORD(v14) = v12 + 2;
    }

    __src[v12] = v6;
    v15 = v14;
    v16 = v14 + 1;
    if ((v13 - 125) <= 1)
    {
      __src[v16] = v13 & 0x5F;
      LODWORD(v16) = v15 + 2;
      LOBYTE(v13) = 125;
    }

    __src[v15] = v13;
    v17 = v16 + 1;
    if ((v11 - 125) <= 1)
    {
      __src[v17] = v11 & 0x5F;
      LOBYTE(v11) = 125;
      LODWORD(v17) = v16 + 2;
    }

    __src[v16] = v11;
    memcpy(a1, __src, v17);
    result = (v17 + 1);
    *(a1 + v17) = 126;
  }

  return result;
}

uint64_t APPLIB_DIAG_GetStatus(_WORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 4)
  {
    bzero(a1, a2);
    *a1 = 5132;
    *(a1 + 2) = 58;
    if (a2 >= 6)
    {
      *a1 = 2117735436;
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GetDeviceID(_DWORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 65099;
    *(a1 + 2) = -18861;
    if (a2 >= 0xC)
    {
      *a1 = 65099;
      *(a1 + 2) = -18861;
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

uint64_t APPLIB_DIAG_DetectSim(_DWORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 130635;
    *(a1 + 2) = -20597;
    if (a2 >= 0xC)
    {
      *a1 = 130635;
      *(a1 + 2) = -20597;
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

uint64_t DetectAndStripSpecialCharacters(_BYTE *a1, int a2, int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = 0xFFFFFFFFLL;
  if (a3 <= 2048 && a3 <= a2)
  {
    bzero(__src, 0x800uLL);
    if (a3 < 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v6 = 0;
      do
      {
        v7 = v6;
        v8 = a1[v6];
        if (v8 == 125)
        {
          ++v6;
          LOBYTE(v8) = a1[v7 + 1] ^ 0x20;
        }

        __src[v3++] = v8;
        ++v6;
      }

      while (v6 < a3);
    }

    bzero(a1, a3);
    memcpy(a1, __src, v3);
  }

  return v3;
}

uint64_t APPLIB_DIAG_SendRawRequest(char *a1, int a2, const void *a3, int a4)
{
  v22 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a3 && a4 + 7 <= a2)
  {
    bzero(a1, a4 + 7);
    memcpy(a1, a3, a4);
    v9 = 8 * a4;
    if (((8 * a4) & 0xFFF8) != 0)
    {
      LOWORD(v10) = -1;
      v11 = a1;
      do
      {
        v12 = *v11++;
        v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
        v9 -= 8;
      }

      while (v9);
      *&a1[a4] = ~v10;
      result = 0xFFFFFFFFLL;
      if (a4 > 1022)
      {
        return result;
      }
    }

    else
    {
      v13 = &a1[a4];
      *v13 = 0;
      v13[1] = 0;
      result = 0xFFFFFFFFLL;
      if (a4 > 1022)
      {
        return result;
      }
    }

    v14 = (a4 + 2);
    if (2 * v14 <= a2)
    {
      bzero(__src, 0x800uLL);
      if (a4 < -1)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = a1;
        do
        {
          while (1)
          {
            v18 = *v16++;
            v17 = v18;
            v19 = v15;
            v20 = v15 + 1;
            if ((v18 - 125) > 1)
            {
              break;
            }

            v15 += 2;
            __src[v20] = v17 & 0x5F;
            __src[v19] = 125;
            if (!--v14)
            {
              goto LABEL_19;
            }
          }

          ++v15;
          __src[v19] = v17;
          --v14;
        }

        while (v14);
      }

LABEL_19:
      memcpy(a1, __src, v15);
      result = (v15 + 1);
      a1[v15] = 126;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_SetOneRx(_DWORD *a1, unsigned int a2, __int16 a3)
{
  v23 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 9)
  {
    bzero(a1, a2);
    *a1 = 195915;
    v7 = a3;
    *(a1 + 2) = a3;
    v8 = HIBYTE(a3);
    v9 = crc_16_l_table[a3 ^ 0x78];
    v10 = crc_16_l_table[crc_16_l_table[a3 ^ 0x78] ^ HIBYTE(a3) ^ 0x95];
    v11 = v10 ^ ~(v9 >> 8);
    *(a1 + 6) = v10 ^ ~(v9 >> 8);
    v12 = BYTE1(v11);
    *(a1 + 7) = BYTE1(v11);
    if (a2 >= 0x10)
    {
      v13 = v10 ^ (v9 >> 8);
      bzero(v22, 0x7FBuLL);
      __src = 195915;
      if ((v7 - 125) > 1)
      {
        v14 = 5;
      }

      else
      {
        v22[0] = v7 & 0x5F;
        v14 = 6;
        LOBYTE(v7) = 125;
      }

      v15 = ~v13;
      v21 = v7;
      v16 = v14 + 1;
      if ((v8 - 125) <= 1)
      {
        *(&__src + v16) = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v16) = v14 + 2;
      }

      *(&__src + v14) = v8;
      v17 = v16;
      v18 = v16 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v18) = v15 & 0x5F;
        LODWORD(v18) = v17 + 2;
        LOBYTE(v15) = 125;
      }

      *(&__src + v17) = v15;
      v19 = v18 + 1;
      if ((v12 - 125) <= 1)
      {
        *(&__src + v19) = v12 & 0x5F;
        LOBYTE(v12) = 125;
        LODWORD(v19) = v18 + 2;
      }

      *(&__src + v18) = v12;
      memcpy(a1, &__src, v19);
      result = (v19 + 1);
      *(a1 + v19) = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_Get_RSSI_Channel(_DWORD *a1, unsigned int a2, __int16 a3)
{
  v23 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 9)
  {
    bzero(a1, a2);
    *a1 = 261451;
    v7 = a3;
    *(a1 + 2) = a3;
    v8 = HIBYTE(a3);
    v9 = crc_16_l_table[a3 ^ 0xA0];
    v10 = crc_16_l_table[crc_16_l_table[a3 ^ 0xA0] ^ HIBYTE(a3) ^ 0x8C];
    v11 = v10 ^ ~(v9 >> 8);
    *(a1 + 6) = v10 ^ ~(v9 >> 8);
    v12 = BYTE1(v11);
    *(a1 + 7) = BYTE1(v11);
    if (a2 >= 0x10)
    {
      v13 = v10 ^ (v9 >> 8);
      bzero(v22, 0x7FBuLL);
      __src = 261451;
      if ((v7 - 125) > 1)
      {
        v14 = 5;
      }

      else
      {
        v22[0] = v7 & 0x5F;
        v14 = 6;
        LOBYTE(v7) = 125;
      }

      v15 = ~v13;
      v21 = v7;
      v16 = v14 + 1;
      if ((v8 - 125) <= 1)
      {
        *(&__src + v16) = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v16) = v14 + 2;
      }

      *(&__src + v14) = v8;
      v17 = v16;
      v18 = v16 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v18) = v15 & 0x5F;
        LODWORD(v18) = v17 + 2;
        LOBYTE(v15) = 125;
      }

      *(&__src + v17) = v15;
      v19 = v18 + 1;
      if ((v12 - 125) <= 1)
      {
        *(&__src + v19) = v12 & 0x5F;
        LOBYTE(v12) = 125;
        LODWORD(v19) = v18 + 2;
      }

      *(&__src + v18) = v12;
      memcpy(a1, &__src, v19);
      result = (v19 + 1);
      *(a1 + v19) = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_Get_OneRxConfig(_DWORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 7)
  {
    bzero(a1, a2);
    *a1 = 326987;
    *(a1 + 2) = 15959;
    if (a2 >= 0xC)
    {
      *a1 = 326987;
      *(a1 + 2) = 15959;
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

uint64_t APPLIB_DIAG_Release_BB_RESET_DET_N(_DWORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 523595;
    *(a1 + 2) = 5183;
    if (a2 >= 0xC)
    {
      *a1 = 523595;
      *(a1 + 2) = 5183;
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

uint64_t APPLIB_DIAG_PowerDown_BaseBand(_DWORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 654667;
    *(a1 + 2) = -29137;
    if (a2 >= 0xC)
    {
      *a1 = 654667;
      *(a1 + 2) = -29137;
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

uint64_t APPLIB_DIAG_EDLOAD(_DWORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 982347;
    *(a1 + 2) = -15577;
    if (a2 >= 0xC)
    {
      *a1 = 982347;
      *(a1 + 2) = -15577;
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

uint64_t ETLNVCreateReadCommand(uint64_t a1, uint64_t a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace <= 0x84)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 133, FreeSpace);
    return 0;
  }

  else
  {
    HDLCFrameInjectUnsignedChar();
    result = HDLCFrameInjectUnsignedShort();
    if (result)
    {
      HDLCFrameInject();
      return HDLCFrameInjectUnsignedShort();
    }
  }

  return result;
}

uint64_t ETLNVParseReadResponse(_DWORD *a1, int a2, int *a3, _OWORD *a4, unsigned int a5, _DWORD *a6)
{
  v6 = a1[2];
  *a6 = 0;
  if (v6 <= 0x84)
  {
    _ETLDebugPrint("ETLNVParseReadResponse", "Response size %u not enough, need %u\n", 133, v6);
    return 0;
  }

  else
  {
    v7 = *a1;
    if (*(*a1 + 1) == a2)
    {
      if (a5 <= 0x7F)
      {
        _ETLDebugPrint("ETLNVParseReadResponse", "Provided buffer has capacity %u, need %u\n", a5, 128);
        return 0;
      }

      else
      {
        v8 = *(v7 + 3);
        v9 = *(v7 + 19);
        v10 = *(v7 + 51);
        a4[2] = *(v7 + 35);
        a4[3] = v10;
        *a4 = v8;
        a4[1] = v9;
        v11 = *(v7 + 67);
        v12 = *(v7 + 83);
        v13 = *(v7 + 115);
        a4[6] = *(v7 + 99);
        a4[7] = v13;
        a4[4] = v11;
        a4[5] = v12;
        *a6 = 128;
        v14 = *(v7 + 131);
        if (v14)
        {
          if (v14 == 5)
          {
            *a3 = 5;
            return 1;
          }

          else
          {
            *a3 = v14;
            _ETLDebugPrint("ETLNVParseReadResponse", "Return code was %u\n", v14);
            return 0;
          }
        }

        else
        {
          *a3 = 0;
          return 1;
        }
      }
    }

    else
    {
      _ETLDebugPrint("ETLNVParseReadResponse", "Returned item number %u mismatches expected %u\n", *(*a1 + 1), a2);
      return 0;
    }
  }
}

uint64_t ETLNVCreateWriteCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 > 0x80)
  {
    return 0;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace <= 0x87)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 136, FreeSpace);
    return 0;
  }

  else
  {
    HDLCFrameInjectUnsignedChar();
    HDLCFrameInjectUnsignedShort();
    result = HDLCFrameInject();
    if (result)
    {
      HDLCFrameInject();
      return HDLCFrameInjectUnsignedShort();
    }
  }

  return result;
}

uint64_t ETLNVParseWriteResponseWithStatus(_DWORD *a1, int a2, int *a3)
{
  v3 = a1[2];
  if (v3 <= 2)
  {
    _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "Response size %u not enough, need %u\n", 3, v3);
    return 0;
  }

  else
  {
    v4 = *a1;
    if (*(*a1 + 1) != a2)
    {
      v5 = a3;
      _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "Returned item number %u mismatches expected %u\n", *(*a1 + 1), a2);
      a3 = v5;
    }

    v6 = *(v4 + 131);
    *a3 = v6;
    if (v6)
    {
      _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "NV write response indicates failure with status code %u\n", v6);
      return 0;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t ETLNVParseWriteResponse(_DWORD *a1, int a2)
{
  v2 = a1[2];
  if (v2 <= 2)
  {
    _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "Response size %u not enough, need %u\n", 3, v2);
    return 0;
  }

  else
  {
    v3 = *a1;
    if (*(*a1 + 1) != a2)
    {
      _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "Returned item number %u mismatches expected %u\n", *(*a1 + 1), a2);
    }

    if (*(v3 + 131))
    {
      _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "NV write response indicates failure with status code %u\n", *(v3 + 131));
      return 0;
    }

    else
    {
      return 1;
    }
  }
}

void *ETLNVRead(uint64_t (**a1)(void, void *, uint64_t, _OWORD *, uint64_t, uint64_t, void), uint64_t a2, _OWORD *a3, unsigned int a4, _DWORD *a5, int *a6, uint64_t a7)
{
  Response = 0;
  v26 = *MEMORY[0x29EDCA608];
  if (a1 && a3 && a6)
  {
    v8 = a2;
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    memset(v20, 0, sizeof(v20));
    v21 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() <= 0x84)
      {
        _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
      }

      else
      {
        HDLCFrameInjectUnsignedChar();
        if (HDLCFrameInjectUnsignedShort())
        {
          memset(v25, 0, sizeof(v25));
          HDLCFrameInject();
          if (HDLCFrameInjectUnsignedShort())
          {
            Response = malloc((2 * DWORD2(v22) + 32));
            if (!Response)
            {
LABEL_20:
              HDLCFrameFree();
              HDLCFrameFree();
              return Response;
            }

            v15 = HDLCFrameEncode();
            if (!v15)
            {
              goto LABEL_22;
            }

            v16 = v15;
            LODWORD(v25[0]) = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, Response, v15);
            }

            if (*a1)
            {
              v17 = (*a1)(a1, Response, v16, v25, 1, a7, 0);
              v19 = v25[0];
              free(Response);
              Response = 0;
              if (!v17 || v19 != v16)
              {
                goto LABEL_20;
              }

              LOBYTE(v25[0]) = 38;
              if (ETLFindMatchingResponse(a1, v20, v25, a7))
              {
                Response = ETLNVParseReadResponse(v20, v8, a6, a3, a4, a5);
                goto LABEL_20;
              }
            }

            else
            {
LABEL_22:
              free(Response);
            }
          }
        }
      }
    }

    else
    {
      _ETLDebugPrint("ETLNVRead", "Failed to create command frame\n");
    }

    Response = 0;
    goto LABEL_20;
  }

  return Response;
}