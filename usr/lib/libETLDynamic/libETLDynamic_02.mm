uint64_t ETLMaverickGetSKU(void *a1, _WORD *a2, uint64_t a3)
{
  memset(v5, 170, sizeof(v5));
  if (!a2)
  {
    return 0;
  }

  result = ETLMaverickGetHWInfo(a1, v5, a3);
  if (result)
  {
    *a2 = HIWORD(v5[2]);
    return 1;
  }

  return result;
}

void *ETLMaverickGetMaxTxPower(void *a1, _WORD *a2, _WORD *a3, uint64_t a4)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  if (!a2 || !a3 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickGetMaxTxPower", "Failed to create command frame\n", a3, a4, v18, v19, v20, v21, v22);
LABEL_19:
    MaxTxPowerResponse = 0;
    goto LABEL_20;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v8, v9);
    goto LABEL_19;
  }

  v26 = 1375051;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v10, v11, v18, v19, v20, v21, v22);
    goto LABEL_19;
  }

  MaxTxPowerResponse = malloc((2 * DWORD2(v23) + 32));
  if (!MaxTxPowerResponse)
  {
    goto LABEL_20;
  }

  v13 = HDLCFrameEncode();
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  v26 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, MaxTxPowerResponse, v13);
  }

  if (!*a1)
  {
LABEL_23:
    free(MaxTxPowerResponse);
    goto LABEL_19;
  }

  v15 = (*a1)(a1, MaxTxPowerResponse, v14, &v26, 1, a4, 0);
  v16 = v26;
  free(MaxTxPowerResponse);
  MaxTxPowerResponse = 0;
  if (v15 && v16 == v14)
  {
    LOBYTE(v26) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    MaxTxPowerResponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, &v20, &_ETLResponseRingBuffer, &v26, a4) && v26 == 75)
    {
      MaxTxPowerResponse = ETLMaverickParseGetMaxTxPowerResponse(&v20, a2, a3);
    }
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return MaxTxPowerResponse;
}

void *ETLMaverickSetAutoAnswer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickSetAutoAnswer", "Failed to create command frame\n", v12, v13, v14, v15, v16);
LABEL_21:
    v6 = 0;
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_21;
  }

  v20 = 2686283;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLMaverickCreateSetAutoAnswerCommand", "Not enough room, need %zu, have %u\n");
    goto LABEL_21;
  }

  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  v6 = malloc((2 * DWORD2(v17) + 32));
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = HDLCFrameEncode();
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = v7;
  v20 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v6, v7);
  }

  if (!*a1)
  {
LABEL_23:
    free(v6);
    goto LABEL_21;
  }

  v9 = (*a1)(a1, v6, v8, &v20, 1, a4, 0);
  v10 = v20;
  free(v6);
  v6 = 0;
  if (v9 && v10 == v8)
  {
    LOBYTE(v20) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v6 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, &v14, &_ETLResponseRingBuffer, &v20, a4) && v20 == 75)
    {
      v6 = ETLMaverickParseSetAutoAnswerResponse(&v14);
    }
  }

LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return v6;
}

void *ETLMaverickCheckCalibration(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), _DWORD *a2, uint64_t a3)
{
  if (a2)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        v20 = 3210571;
        if (HDLCFrameInject())
        {
          v6 = malloc((2 * DWORD2(v17) + 32));
          if (!v6)
          {
LABEL_22:
            HDLCFrameFree();
            HDLCFrameFree();
            return v6;
          }

          v7 = HDLCFrameEncode();
          if (v7)
          {
            v8 = v7;
            v20 = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, v6, v7);
            }

            if (*a1)
            {
              v9 = (*a1)(a1, v6, v8, &v20, 1, a3, 0);
              v10 = v20;
              free(v6);
              v6 = 0;
              if (v9 && v10 == v8)
              {
                LOBYTE(v20) = 75;
                if (!_ETLResponseRingBuffer)
                {
                  TelephonyUtilRingBufferInitialize();
                }

                v6 = 0;
                if (ETLFindMatchingResponseUsingBuffer(a1, &v14, &_ETLResponseRingBuffer, &v20, a3) && v20 == 75)
                {
                  v6 = ETLMaverickParseCalibrationCheckResonse(&v14, a2);
                }
              }

              goto LABEL_22;
            }
          }

          free(v6);
        }

        else
        {
          _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
        }
      }
    }

    else
    {
      _ETLDebugPrint("ETLMaverickCheckCalibration", "Failed to create command frame\n", v12, v13, v14, v15, v16);
    }

    v6 = 0;
    goto LABEL_22;
  }

  _ETLDebugPrint("ETLMaverickCheckCalibration", "Calibration status pointer is NULL, skipping calibration check\n", a3);
  return 0;
}

void *ETLMaverickCheckCalibrationV2(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        LOWORD(v22) = -1205;
        HIWORD(v22) = a4;
        if (HDLCFrameInject())
        {
          v8 = malloc((2 * DWORD2(v19) + 32));
          if (!v8)
          {
LABEL_22:
            HDLCFrameFree();
            HDLCFrameFree();
            return v8;
          }

          v9 = HDLCFrameEncode();
          if (v9)
          {
            v10 = v9;
            v22 = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, v8, v9);
            }

            if (*a1)
            {
              v11 = (*a1)(a1, v8, v10, &v22, 1, a3, 0);
              v12 = v22;
              free(v8);
              v8 = 0;
              if (v11 && v12 == v10)
              {
                LOBYTE(v22) = 75;
                if (!_ETLResponseRingBuffer)
                {
                  TelephonyUtilRingBufferInitialize();
                }

                v8 = 0;
                if (ETLFindMatchingResponseUsingBuffer(a1, &v16, &_ETLResponseRingBuffer, &v22, a3) && v22 == 75)
                {
                  v8 = ETLMaverickParseCalibrationCheckResponseV2(&v16, a2, a4);
                }
              }

              goto LABEL_22;
            }
          }

          free(v8);
        }

        else
        {
          _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
        }
      }
    }

    else
    {
      _ETLDebugPrint("ETLMaverickCheckCalibrationV2", "Failed to create command frame\n", v14, v15, v16, v17, v18);
    }

    v8 = 0;
    goto LABEL_22;
  }

  _ETLDebugPrint("ETLMaverickCheckCalibrationV2", "Calibration status pointer is NULL, skipping calibration check\n", a3, a4);
  return 0;
}

uint64_t ETLMaverickParseICCIDResponse(int **a1, uint64_t a2, int a3)
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
        if (v7 == a3)
        {
          if (v4 <= 0xB)
          {
            _ETLDebugPrint("ETLMaverickParseICCIDResponse", "Received response has only %u bytes, need %u\n", v4, 12);
            return 0;
          }

          else if (*(v5 + 2) == 1)
          {
            v8 = *(v5 + 6);
            *(a2 + 8) = *(v5 + 7);
            *a2 = v8;
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseICCIDResponse", "Received response with failure status [%d]\n", *(v5 + 2));
            return 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v7, a3);
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

uint64_t ETLMaverickParseIMEIResponse(unsigned int *a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    goto LABEL_16;
  }

  v2 = a1[2];
  v3 = v2 - 4;
  if (v2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
LABEL_16:
    _ETLDebugPrint("ETLMaverickParseIMEIResponse", "status: %d, success: %s, offset:%d\n");
    return 0;
  }

  v4 = *a1;
  v5 = **a1;
  if (v5 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_16;
  }

  if (BYTE1(v5) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_16;
  }

  if (HIWORD(v5) != 12)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_16;
  }

  if (v3 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", 4, v3);
    goto LABEL_16;
  }

  if (*(v4 + 4) != 34)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n");
    goto LABEL_16;
  }

  v8 = *(v4 + 6);
  _ETLDebugPrint("ETLMaverickParseIMEIResponse", "status: %d, success: %s, offset:%d\n", v8, "true", 8);
  if (v8)
  {
    _ETLDebugPrint("ETLMaverickParseIMEIResponse", "status is %d\n");
    return 0;
  }

  if (a1[2] - 8 < 0xA)
  {
    return 0;
  }

  if (!*(*a1 + 9))
  {
    _ETLDebugPrint("ETLMaverickParseIMEIResponse", "Received response has only %u bytes, need %u\n");
    return 0;
  }

  v10 = *(*a1 + 9);
  *(a2 + 8) = *(*a1 + 17);
  *a2 = v10;
  return 1;
}

void *ETLMaverickGetICCIDExt(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickGetICCIDExt", "Failed to create command frame\n", a3, a4, v17, v18, v19, v20, v21);
    goto LABEL_19;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v7, v8);
    goto LABEL_19;
  }

  v25 = 5438795;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v9, v10, v17, v18, v19, v20, v21);
    goto LABEL_19;
  }

  if (!HDLCFrameInjectUnsignedChar())
  {
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  v11 = malloc((2 * DWORD2(v22) + 32));
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = HDLCFrameEncode();
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = v12;
  v25 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v11, v12);
  }

  if (!*a1)
  {
LABEL_23:
    free(v11);
    goto LABEL_19;
  }

  v14 = (*a1)(a1, v11, v13, &v25, 1, a4, 0);
  v15 = v25;
  free(v11);
  v11 = 0;
  if (v14 && v15 == v13)
  {
    LOBYTE(v25) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v11 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, &v19, &_ETLResponseRingBuffer, &v25, a4) && v25 == 75)
    {
      v11 = ETLMaverickParseICCIDResponse(&v19, a2, 82);
    }
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return v11;
}

uint64_t ETLMaverickGetIMEI(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    _ETLDebugPrint("ETLMaverickGetIMEI", "imei is null\n", a3, a4, v18, v19, v20);
    return 0;
  }

  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickGetIMEI", "Failed to create command frame\n", v7, v8, v18, v19, v20);
    return 0;
  }

  v9 = ETLMaverickAddSecurityCommandHeader(v21, 34);
  if (v9)
  {
    v9 = HDLCFrameInjectUnsignedChar();
    if (v9)
    {
      v9 = malloc((2 * DWORD2(v21[0]) + 32));
      if (v9)
      {
        v10 = v9;
        v11 = HDLCFrameEncode();
        if (!v11)
        {
          goto LABEL_20;
        }

        v12 = v11;
        v23 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v10, v11);
        }

        if (*a1)
        {
          v13 = (*a1)(a1, v10, v12, &v23, 1, a4, 0);
          v14 = v23;
          free(v10);
          v9 = 0;
          if (v13 && v14 == v12)
          {
            LOBYTE(v23) = 75;
            if (!_ETLResponseRingBuffer)
            {
              TelephonyUtilRingBufferInitialize();
            }

            v15 = ETLFindMatchingResponseUsingBuffer(a1, &v18, &_ETLResponseRingBuffer, &v23, a4);
            v9 = 0;
            if (v15 && v23 == 75)
            {
              v9 = ETLMaverickParseIMEIResponse(&v18, a2);
            }
          }
        }

        else
        {
LABEL_20:
          free(v10);
          v9 = 0;
        }
      }
    }
  }

  v17 = v9;
  HDLCFrameFree();
  HDLCFrameFree();
  return v17;
}

uint64_t ETLMaverickGetFactoryCalibrationStatus(void *a1, _DWORD *a2, uint64_t a3)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickGetFactoryCalibrationStatus", "Failed to create command frame\n");
    goto LABEL_24;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v6);
    goto LABEL_24;
  }

  v21 = 3734347;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7);
    goto LABEL_24;
  }

  v8 = malloc((2 * DWORD2(v18) + 32));
  if (v8)
  {
    v9 = HDLCFrameEncode();
    if (!v9)
    {
      goto LABEL_28;
    }

    v10 = v9;
    v21 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v8, v9);
    }

    if (!*a1)
    {
LABEL_28:
      free(v8);
      goto LABEL_24;
    }

    v11 = (*a1)(a1, v8, v10, &v21, 1, a3, 0);
    v12 = v21;
    free(v8);
    v8 = 0;
    if (v11)
    {
      if (v12 == v10)
      {
        LOBYTE(v21) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v8 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v16, &_ETLResponseRingBuffer, &v21, a3) && v21 == 75)
        {
          if (DWORD2(v16[0]) < 4)
          {
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v13);
          }

          else
          {
            v14 = **&v16[0];
            if (**&v16[0] == 75)
            {
              if (BYTE1(v14) == 251)
              {
                if (HIWORD(v14) == 56)
                {
                  if ((DWORD2(v16[0]) - 4) <= 3)
                  {
                    _ETLDebugPrint("ETLMaverickParseGetFactoryCalibrationStatus", "Received response has only %u bytes, need %u\n", v13);
                  }

                  else
                  {
                    if (*(*&v16[0] + 4) == 1)
                    {
                      *a2 = *(*&v16[0] + 6);
                      v8 = 1;
                      goto LABEL_25;
                    }

                    _ETLDebugPrint("ETLMaverickParseGetFactoryCalibrationStatus", "Received response with failure status [%d]\n", v13);
                  }
                }

                else
                {
                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v13);
                }
              }

              else
              {
                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v13);
              }
            }

            else
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v13);
            }
          }

LABEL_24:
          v8 = 0;
        }
      }
    }
  }

LABEL_25:
  HDLCFrameFree();
  HDLCFrameFree();
  return v8;
}

uint64_t ETLMaverickGetRAT(void *a1, _WORD *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    if ((HDLCFrameCreateUplink() & 1) == 0)
    {
      _ETLDebugPrint("ETLMaverickGetRAT", "Failed to create command frame\n");
      goto LABEL_30;
    }

    if (HDLCFrameGetFreeSpace() < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    }

    else
    {
      v21 = 4521291;
      if (HDLCFrameInject())
      {
        if (!HDLCFrameGetFreeSpace())
        {
          _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Not enough room, need %zu, have %u\n");
          goto LABEL_30;
        }

        HDLCFrameInjectUnsignedChar();
        v6 = malloc((2 * DWORD2(v16) + 32));
        if (!v6)
        {
LABEL_31:
          HDLCFrameFree();
          HDLCFrameFree();
          return v6;
        }

        v7 = HDLCFrameEncode();
        if (!v7)
        {
          goto LABEL_34;
        }

        v8 = v7;
        v21 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v6, v7);
        }

        if (!*a1)
        {
LABEL_34:
          free(v6);
          goto LABEL_30;
        }

        v9 = (*a1)(a1, v6, v8, &v21, 1, a3, 0);
        v10 = v21;
        free(v6);
        v6 = 0;
        if (!v9 || v10 != v8)
        {
          goto LABEL_31;
        }

        LOBYTE(v21) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v6 = 0;
        if (!ETLFindMatchingResponseUsingBuffer(a1, v14, &_ETLResponseRingBuffer, &v21, a3) || v21 != 75)
        {
          goto LABEL_31;
        }

        v21 = 0;
        v20 = -21846;
        v19 = -21846;
        if (ETLSubsysParseHeader(v14, &v20, &v19, &v21))
        {
          if (v20 == 253)
          {
            if (v19 == 68)
            {
              if (DWORD2(v14[0]) - v21 <= 1)
              {
                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n");
              }

              else
              {
                if (*(*&v14[0] + v21) == 1)
                {
                  if (DWORD2(v14[0]) - (v21 + 2) > 1)
                  {
                    *a2 = *(*&v14[0] + v21 + 2);
                    v6 = 1;
                    goto LABEL_31;
                  }

                  _ETLDebugPrint("ETLMaverickParseGetRATSelectionResponse", "Received response has only %u bytes, need %u bytes\n");
LABEL_30:
                  v6 = 0;
                  goto LABEL_31;
                }

                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n");
              }

LABEL_38:
              _ETLDebugPrint("ETLMaverickParseGetRATSelectionResponse", "Failed on parsing BSP Ext Response.\n", v12, v13);
              goto LABEL_30;
            }

            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
          }
        }

        _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n");
        goto LABEL_38;
      }

      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    }

    _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Failed on creating BSP Command Heder\n");
    goto LABEL_30;
  }

  _ETLDebugPrint("ETLMaverickGetRAT", "Transport or ratSelection memory cannot be NULL\n", a3);
  return 0;
}

uint64_t ETLMaverickSetRAT(void *a1, unsigned __int16 a2, uint64_t a3)
{
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    if ((HDLCFrameCreateUplink() & 1) == 0)
    {
      _ETLDebugPrint("ETLMaverickSetRAT", "Failed to create command frame\n");
      goto LABEL_30;
    }

    if (HDLCFrameGetFreeSpace() < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    }

    else
    {
      v21 = 4521291;
      if (HDLCFrameInject())
      {
        if (HDLCFrameGetFreeSpace() <= 1)
        {
          _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Not enough room, need %zu, have %u\n");
          goto LABEL_30;
        }

        HDLCFrameInjectUnsignedChar();
        HDLCFrameInjectUnsignedChar();
        v6 = malloc((2 * DWORD2(v16) + 32));
        if (!v6)
        {
LABEL_31:
          HDLCFrameFree();
          HDLCFrameFree();
          return v6;
        }

        v7 = HDLCFrameEncode();
        if (!v7)
        {
          goto LABEL_34;
        }

        v8 = v7;
        v21 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v6, v7);
        }

        if (!*a1)
        {
LABEL_34:
          free(v6);
          goto LABEL_30;
        }

        v9 = (*a1)(a1, v6, v8, &v21, 1, a3, 0);
        v10 = v21;
        free(v6);
        v6 = 0;
        if (!v9 || v10 != v8)
        {
          goto LABEL_31;
        }

        LOBYTE(v21) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v6 = 0;
        if (!ETLFindMatchingResponseUsingBuffer(a1, v14, &_ETLResponseRingBuffer, &v21, a3) || v21 != 75)
        {
          goto LABEL_31;
        }

        v21 = 0;
        v20 = -21846;
        v19 = -21846;
        if (ETLSubsysParseHeader(v14, &v20, &v19, &v21))
        {
          if (v20 == 253)
          {
            if (v19 == 68)
            {
              if (DWORD2(v14[0]) - v21 <= 1)
              {
                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n");
              }

              else
              {
                if (*(*&v14[0] + v21) == 1)
                {
                  if (DWORD2(v14[0]) - (v21 + 2) <= 1)
                  {
                    _ETLDebugPrint("ETLMaverickParseSetRATSelectionResponse", "Received response has only %u bytes, need %u\n");
                  }

                  else
                  {
                    if (*(*&v14[0] + v21 + 2) == a2)
                    {
                      v6 = 1;
                      goto LABEL_31;
                    }

                    _ETLDebugPrint("ETLMaverickParseSetRATSelectionResponse", "Received rat selection %d doesn't match with %d\n");
                  }

LABEL_30:
                  v6 = 0;
                  goto LABEL_31;
                }

                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n");
              }

LABEL_38:
              _ETLDebugPrint("ETLMaverickParseSetRATSelectionResponse", "Failed on parsing BSP Ext Response.\n", v12, v13);
              goto LABEL_30;
            }

            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
          }
        }

        _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n");
        goto LABEL_38;
      }

      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    }

    _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Failed on creating BSP Command Heder\n");
    goto LABEL_30;
  }

  _ETLDebugPrint("ETLMaverickSetRAT", "Transport cannot be NULL\n", a3);
  return 0;
}

uint64_t ETLMaverickGetBBMode(void *a1, _WORD *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    if ((HDLCFrameCreateUplink() & 1) == 0)
    {
      _ETLDebugPrint("ETLMaverickGetBBMode", "Failed to create command frame\n");
      goto LABEL_30;
    }

    if (HDLCFrameGetFreeSpace() < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    }

    else
    {
      v21 = 4521291;
      if (HDLCFrameInject())
      {
        if (!HDLCFrameGetFreeSpace())
        {
          _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Not enough room, need %zu, have %u\n");
          goto LABEL_30;
        }

        HDLCFrameInjectUnsignedChar();
        v6 = malloc((2 * DWORD2(v16) + 32));
        if (!v6)
        {
LABEL_31:
          HDLCFrameFree();
          HDLCFrameFree();
          return v6;
        }

        v7 = HDLCFrameEncode();
        if (!v7)
        {
          goto LABEL_34;
        }

        v8 = v7;
        v21 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v6, v7);
        }

        if (!*a1)
        {
LABEL_34:
          free(v6);
          goto LABEL_30;
        }

        v9 = (*a1)(a1, v6, v8, &v21, 1, a3, 0);
        v10 = v21;
        free(v6);
        v6 = 0;
        if (!v9 || v10 != v8)
        {
          goto LABEL_31;
        }

        LOBYTE(v21) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v6 = 0;
        if (!ETLFindMatchingResponseUsingBuffer(a1, v14, &_ETLResponseRingBuffer, &v21, a3) || v21 != 75)
        {
          goto LABEL_31;
        }

        v21 = 0;
        v20 = -21846;
        v19 = -21846;
        if (ETLSubsysParseHeader(v14, &v20, &v19, &v21))
        {
          if (v20 == 253)
          {
            if (v19 == 68)
            {
              if (DWORD2(v14[0]) - v21 <= 1)
              {
                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n");
              }

              else
              {
                if (*(*&v14[0] + v21) == 1)
                {
                  if (DWORD2(v14[0]) - (v21 + 2) > 1)
                  {
                    *a2 = *(*&v14[0] + v21 + 2);
                    v6 = 1;
                    goto LABEL_31;
                  }

                  _ETLDebugPrint("ETLMaverickParseGetBBModeResponse", "Received response has only %u bytes, need %u\n");
LABEL_30:
                  v6 = 0;
                  goto LABEL_31;
                }

                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n");
              }

LABEL_38:
              _ETLDebugPrint("ETLMaverickParseGetBBModeResponse", "Failed on parsing BSP Ext Response.\n", v12, v13);
              goto LABEL_30;
            }

            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
          }
        }

        _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n");
        goto LABEL_38;
      }

      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    }

    _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Failed on creating BSP Command Heder\n");
    goto LABEL_30;
  }

  _ETLDebugPrint("ETLMaverickGetBBMode", "Transport or mode memory cannot be NULL\n", a3);
  return 0;
}

uint64_t ETLMaverickSetBBMode(void *a1, unsigned __int8 a2, uint64_t a3)
{
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    if ((HDLCFrameCreateUplink() & 1) == 0)
    {
      _ETLDebugPrint("ETLMaverickSetBBMode", "Failed to create command frame\n");
      goto LABEL_30;
    }

    if (HDLCFrameGetFreeSpace() < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    }

    else
    {
      v21 = 4521291;
      if (HDLCFrameInject())
      {
        if (HDLCFrameGetFreeSpace() <= 1)
        {
          _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Not enough room, need %zu, have %u\n");
          goto LABEL_30;
        }

        HDLCFrameInjectUnsignedChar();
        HDLCFrameInjectUnsignedChar();
        v6 = malloc((2 * DWORD2(v16) + 32));
        if (!v6)
        {
LABEL_31:
          HDLCFrameFree();
          HDLCFrameFree();
          return v6;
        }

        v7 = HDLCFrameEncode();
        if (!v7)
        {
          goto LABEL_34;
        }

        v8 = v7;
        v21 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v6, v7);
        }

        if (!*a1)
        {
LABEL_34:
          free(v6);
          goto LABEL_30;
        }

        v9 = (*a1)(a1, v6, v8, &v21, 1, a3, 0);
        v10 = v21;
        free(v6);
        v6 = 0;
        if (!v9 || v10 != v8)
        {
          goto LABEL_31;
        }

        LOBYTE(v21) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v6 = 0;
        if (!ETLFindMatchingResponseUsingBuffer(a1, v14, &_ETLResponseRingBuffer, &v21, a3) || v21 != 75)
        {
          goto LABEL_31;
        }

        v21 = 0;
        v20 = -21846;
        v19 = -21846;
        if (ETLSubsysParseHeader(v14, &v20, &v19, &v21))
        {
          if (v20 == 253)
          {
            if (v19 == 68)
            {
              if (DWORD2(v14[0]) - v21 <= 1)
              {
                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n");
              }

              else
              {
                if (*(*&v14[0] + v21) == 1)
                {
                  if (DWORD2(v14[0]) - (v21 + 2) <= 1)
                  {
                    _ETLDebugPrint("ETLMaverickParseSetBBModeResponse", "Received response has only %u bytes, need %u\n");
                  }

                  else
                  {
                    if (a2 == *(*&v14[0] + v21 + 2))
                    {
                      v6 = 1;
                      goto LABEL_31;
                    }

                    _ETLDebugPrint("ETLMaverickParseSetBBModeResponse", "Received mode %d doesn't match with %d\n");
                  }

LABEL_30:
                  v6 = 0;
                  goto LABEL_31;
                }

                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n");
              }

LABEL_38:
              _ETLDebugPrint("ETLMaverickParseSetBBModeResponse", "Failed on parsing BSP Ext Response.\n", v12, v13);
              goto LABEL_30;
            }

            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
          }
        }

        _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n");
        goto LABEL_38;
      }

      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    }

    _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Failed on creating BSP Command Heder\n");
    goto LABEL_30;
  }

  _ETLDebugPrint("ETLMaverickSetBBMode", "Transport cannot be NULL\n", a3);
  return 0;
}

uint64_t ETLMaverickGetAutoAnswerBSP(void *a1, _WORD *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    if ((HDLCFrameCreateUplink() & 1) == 0)
    {
      _ETLDebugPrint("ETLMaverickGetAutoAnswerBSP", "Failed to create command frame\n");
      goto LABEL_30;
    }

    if (HDLCFrameGetFreeSpace() < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    }

    else
    {
      v21 = 4521291;
      if (HDLCFrameInject())
      {
        if (!HDLCFrameGetFreeSpace())
        {
          _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Not enough room, need %zu, have %u\n");
          goto LABEL_30;
        }

        HDLCFrameInjectUnsignedChar();
        v6 = malloc((2 * DWORD2(v16) + 32));
        if (!v6)
        {
LABEL_31:
          HDLCFrameFree();
          HDLCFrameFree();
          return v6;
        }

        v7 = HDLCFrameEncode();
        if (!v7)
        {
          goto LABEL_34;
        }

        v8 = v7;
        v21 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v6, v7);
        }

        if (!*a1)
        {
LABEL_34:
          free(v6);
          goto LABEL_30;
        }

        v9 = (*a1)(a1, v6, v8, &v21, 1, a3, 0);
        v10 = v21;
        free(v6);
        v6 = 0;
        if (!v9 || v10 != v8)
        {
          goto LABEL_31;
        }

        LOBYTE(v21) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v6 = 0;
        if (!ETLFindMatchingResponseUsingBuffer(a1, v14, &_ETLResponseRingBuffer, &v21, a3) || v21 != 75)
        {
          goto LABEL_31;
        }

        v21 = 0;
        v20 = -21846;
        v19 = -21846;
        if (ETLSubsysParseHeader(v14, &v20, &v19, &v21))
        {
          if (v20 == 253)
          {
            if (v19 == 68)
            {
              if (DWORD2(v14[0]) - v21 <= 1)
              {
                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n");
              }

              else
              {
                if (*(*&v14[0] + v21) == 1)
                {
                  if (DWORD2(v14[0]) - (v21 + 2) > 1)
                  {
                    *a2 = *(*&v14[0] + v21 + 2);
                    v6 = 1;
                    goto LABEL_31;
                  }

                  _ETLDebugPrint("ETLMaverickParseGetAutoAnswerResponse", "Received response has only %u bytes, need %u\n");
LABEL_30:
                  v6 = 0;
                  goto LABEL_31;
                }

                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n");
              }

LABEL_38:
              _ETLDebugPrint("ETLMaverickParseGetAutoAnswerResponse", "Failed on parsing BSP Ext Response.\n", v12, v13);
              goto LABEL_30;
            }

            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
          }
        }

        _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n");
        goto LABEL_38;
      }

      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    }

    _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Failed on creating BSP Command Heder\n");
    goto LABEL_30;
  }

  _ETLDebugPrint("ETLMaverickGetAutoAnswerBSP", "Transport or autoAnswer memory cannot be NULL\n", a3);
  return 0;
}

uint64_t ETLMaverickSetAutoAnswerBSP(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    if ((HDLCFrameCreateUplink() & 1) == 0)
    {
      _ETLDebugPrint("ETLMaverickSetAutoAnswerBSP", "Failed to create command frame\n");
      goto LABEL_30;
    }

    if (HDLCFrameGetFreeSpace() < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    }

    else
    {
      v21 = 4521291;
      if (HDLCFrameInject())
      {
        if (HDLCFrameGetFreeSpace() <= 1)
        {
          _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Not enough room, need %zu, have %u\n");
          goto LABEL_30;
        }

        HDLCFrameInjectUnsignedChar();
        HDLCFrameInjectUnsignedChar();
        v6 = malloc((2 * DWORD2(v16) + 32));
        if (!v6)
        {
LABEL_31:
          HDLCFrameFree();
          HDLCFrameFree();
          return v6;
        }

        v7 = HDLCFrameEncode();
        if (!v7)
        {
          goto LABEL_34;
        }

        v8 = v7;
        v21 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v6, v7);
        }

        if (!*a1)
        {
LABEL_34:
          free(v6);
          goto LABEL_30;
        }

        v9 = (*a1)(a1, v6, v8, &v21, 1, a3, 0);
        v10 = v21;
        free(v6);
        v6 = 0;
        if (!v9 || v10 != v8)
        {
          goto LABEL_31;
        }

        LOBYTE(v21) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v6 = 0;
        if (!ETLFindMatchingResponseUsingBuffer(a1, v14, &_ETLResponseRingBuffer, &v21, a3) || v21 != 75)
        {
          goto LABEL_31;
        }

        v21 = 0;
        v20 = -21846;
        v19 = -21846;
        if (ETLSubsysParseHeader(v14, &v20, &v19, &v21))
        {
          if (v20 == 253)
          {
            if (v19 == 68)
            {
              if (DWORD2(v14[0]) - v21 <= 1)
              {
                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n");
              }

              else
              {
                if (*(*&v14[0] + v21) == 1)
                {
                  if (DWORD2(v14[0]) - (v21 + 2) <= 1)
                  {
                    _ETLDebugPrint("ETLMaverickParseSetAutoAnswerBSPResponse", "Received response has only %u bytes, need %u\n");
                  }

                  else
                  {
                    if (*(*&v14[0] + v21 + 2) == v3)
                    {
                      v6 = 1;
                      goto LABEL_31;
                    }

                    _ETLDebugPrint("ETLMaverickParseSetAutoAnswerBSPResponse", "Received mode %d doesn't match with %d\n");
                  }

LABEL_30:
                  v6 = 0;
                  goto LABEL_31;
                }

                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n");
              }

LABEL_38:
              _ETLDebugPrint("ETLMaverickParseSetAutoAnswerBSPResponse", "Failed on parsing BSP Ext Response.\n", v12, v13);
              goto LABEL_30;
            }

            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
          }
        }

        _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n");
        goto LABEL_38;
      }

      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    }

    _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Failed on creating BSP Command Heder\n");
    goto LABEL_30;
  }

  _ETLDebugPrint("ETLMaverickSetAutoAnswerBSP", "Transport cannot be NULL\n", a3);
  return 0;
}

uint64_t ETLMaverickGetNasSec(void *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    memset(v15, 0, sizeof(v15));
    v16 = 0;
    if ((HDLCFrameCreateUplink() & 1) == 0)
    {
      _ETLDebugPrint("ETLMaverickGetNasSec", "Failed to create command frame\n");
      goto LABEL_31;
    }

    if (HDLCFrameGetFreeSpace() < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    }

    else
    {
      v22 = 4521291;
      if (HDLCFrameInject())
      {
        if (!HDLCFrameGetFreeSpace())
        {
          _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Not enough room, need %zu, have %u\n");
          goto LABEL_31;
        }

        HDLCFrameInjectUnsignedChar();
        v6 = malloc((2 * DWORD2(v17) + 32));
        if (!v6)
        {
LABEL_32:
          HDLCFrameFree();
          HDLCFrameFree();
          return v6;
        }

        v7 = HDLCFrameEncode();
        if (!v7)
        {
          goto LABEL_35;
        }

        v8 = v7;
        v22 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v6, v7);
        }

        if (!*a1)
        {
LABEL_35:
          free(v6);
          goto LABEL_31;
        }

        v9 = (*a1)(a1, v6, v8, &v22, 1, a3, 0);
        v10 = v22;
        free(v6);
        v6 = 0;
        if (!v9 || v10 != v8)
        {
          goto LABEL_32;
        }

        LOBYTE(v22) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v6 = 0;
        if (!ETLFindMatchingResponseUsingBuffer(a1, v15, &_ETLResponseRingBuffer, &v22, a3) || v22 != 75)
        {
          goto LABEL_32;
        }

        v22 = 0;
        v21 = -21846;
        v20 = -21846;
        if (ETLSubsysParseHeader(v15, &v21, &v20, &v22))
        {
          if (v21 == 253)
          {
            if (v20 == 68)
            {
              if (DWORD2(v15[0]) - v22 <= 1)
              {
                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n");
              }

              else
              {
                if (*(*&v15[0] + v22) == 1)
                {
                  if (DWORD2(v15[0]) - (v22 + 2) <= 1)
                  {
                    _ETLDebugPrint("ETLMaverickParseGetNasSecResponse", "Received response has only %u bytes, need %u\n");
                  }

                  else
                  {
                    v11 = (*&v15[0] + v22 + 2);
                    if (*v11 == 10)
                    {
                      *a2 = v11[1];
                      v6 = 1;
                      goto LABEL_32;
                    }

                    _ETLDebugPrint("ETLMaverickParseGetNasSecResponse", "Expected NAS Sec ID, %u, does not match with read ID, %u\n");
                  }

LABEL_31:
                  v6 = 0;
                  goto LABEL_32;
                }

                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n");
              }

LABEL_39:
              _ETLDebugPrint("ETLMaverickParseGetNasSecResponse", "Failed on parsing BSP Ext Response.\n", v13, v14);
              goto LABEL_31;
            }

            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
          }
        }

        _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n");
        goto LABEL_39;
      }

      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    }

    _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Failed on creating BSP Command Heder\n");
    goto LABEL_31;
  }

  _ETLDebugPrint("ETLMaverickGetNasSec", "Transport or nasStatus memory cannot be NULL\n", a3);
  return 0;
}

uint64_t ETLMaverickSetNasSec(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    memset(v15, 0, sizeof(v15));
    v16 = 0;
    if ((HDLCFrameCreateUplink() & 1) == 0)
    {
      _ETLDebugPrint("ETLMaverickSetNasSec", "Failed to create command frame\n");
      goto LABEL_31;
    }

    if (HDLCFrameGetFreeSpace() < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    }

    else
    {
      v22 = 4521291;
      if (HDLCFrameInject())
      {
        if (HDLCFrameGetFreeSpace() <= 1)
        {
          _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Not enough room, need %zu, have %u\n");
          goto LABEL_31;
        }

        HDLCFrameInjectUnsignedChar();
        HDLCFrameInjectUnsignedChar();
        v6 = malloc((2 * DWORD2(v17) + 32));
        if (!v6)
        {
LABEL_32:
          HDLCFrameFree();
          HDLCFrameFree();
          return v6;
        }

        v7 = HDLCFrameEncode();
        if (!v7)
        {
          goto LABEL_35;
        }

        v8 = v7;
        v22 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v6, v7);
        }

        if (!*a1)
        {
LABEL_35:
          free(v6);
          goto LABEL_31;
        }

        v9 = (*a1)(a1, v6, v8, &v22, 1, a3, 0);
        v10 = v22;
        free(v6);
        v6 = 0;
        if (!v9 || v10 != v8)
        {
          goto LABEL_32;
        }

        LOBYTE(v22) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v6 = 0;
        if (!ETLFindMatchingResponseUsingBuffer(a1, v15, &_ETLResponseRingBuffer, &v22, a3) || v22 != 75)
        {
          goto LABEL_32;
        }

        v22 = 0;
        v21 = -21846;
        v20 = -21846;
        if (ETLSubsysParseHeader(v15, &v21, &v20, &v22))
        {
          if (v21 == 253)
          {
            if (v20 == 68)
            {
              if (DWORD2(v15[0]) - v22 <= 1)
              {
                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n");
              }

              else
              {
                if (*(*&v15[0] + v22) == 1)
                {
                  if (DWORD2(v15[0]) - (v22 + 2) <= 1)
                  {
                    _ETLDebugPrint("ETLMaverickParseSetNasSecResponse", "Received response has only %u bytes, need %u\n");
                  }

                  else
                  {
                    v11 = (*&v15[0] + v22 + 2);
                    if (*v11 == 11)
                    {
                      if (v11[1] == v3)
                      {
                        v6 = 1;
                        goto LABEL_32;
                      }

                      _ETLDebugPrint("ETLMaverickParseSetNasSecResponse", "Expected NAS Sec status, %u, does not match with read status, %u\n");
                    }

                    else
                    {
                      _ETLDebugPrint("ETLMaverickParseSetNasSecResponse", "Expected NAS Sec ID, %u, does not match with read ID, %u\n");
                    }
                  }

LABEL_31:
                  v6 = 0;
                  goto LABEL_32;
                }

                _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n");
              }

LABEL_39:
              _ETLDebugPrint("ETLMaverickParseSetNasSecResponse", "Failed on parsing BSP Ext Response.\n", v13, v14);
              goto LABEL_31;
            }

            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
          }
        }

        _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n");
        goto LABEL_39;
      }

      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    }

    _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Failed on creating BSP Command Heder\n");
    goto LABEL_31;
  }

  _ETLDebugPrint("ETLMaverickSetNasSec", "Transport cannot be NULL\n", a3);
  return 0;
}

void *ETLMaverickGetBandlock(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), _WORD *a2, void *a3, uint64_t a4)
{
  if (a2 && a1 && a3)
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        v19 = 4521291;
        if (HDLCFrameInject())
        {
          if (HDLCFrameGetFreeSpace())
          {
            HDLCFrameInjectUnsignedChar();
            BandLockResponse = malloc((2 * DWORD2(v16) + 32));
            if (!BandLockResponse)
            {
LABEL_26:
              HDLCFrameFree();
              HDLCFrameFree();
              return BandLockResponse;
            }

            v9 = HDLCFrameEncode();
            if (v9)
            {
              v10 = v9;
              v19 = -1431655766;
              if ((_ETLDebugFlags & 2) != 0)
              {
                off_2A18A5818(&str_3, 0, BandLockResponse, v9);
              }

              if (*a1)
              {
                v11 = (*a1)(a1, BandLockResponse, v10, &v19, 1, a4, 0);
                v12 = v19;
                free(BandLockResponse);
                BandLockResponse = 0;
                if (v11 && v12 == v10)
                {
                  LOBYTE(v19) = 75;
                  if (!_ETLResponseRingBuffer)
                  {
                    TelephonyUtilRingBufferInitialize();
                  }

                  BandLockResponse = 0;
                  if (ETLFindMatchingResponseUsingBuffer(a1, v14, &_ETLResponseRingBuffer, &v19, a4) && v19 == 75)
                  {
                    BandLockResponse = ETLMaverickParseGetBandLockResponse(v14, a2, a3);
                  }
                }

                goto LABEL_26;
              }
            }

            free(BandLockResponse);
          }

          else
          {
            _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Not enough room, need %zu, have %u\n");
          }

LABEL_25:
          BandLockResponse = 0;
          goto LABEL_26;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      }

      _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Failed on creating BSP Command Heder\n");
      goto LABEL_25;
    }

    _ETLDebugPrint("ETLMaverickGetBandlock", "Failed to create command frame\n");
    goto LABEL_25;
  }

  _ETLDebugPrint("ETLMaverickGetBandlock", "Transport or bandLock or errorCode memory cannot be NULL\n", a3, a4);
  return 0;
}

uint64_t ETLMaverickParseGetBandLockResponse(int **a1, _WORD *a2, void *a3)
{
  v3 = *(a1 + 2);
  if (v3 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3);
LABEL_13:
    _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n");
LABEL_14:
    _ETLDebugPrint("ETLMaverickParseGetBandLockResponse", "Failed on parsing BSP Ext Response.\n");
    return 0;
  }

  v4 = *a1;
  v5 = **a1;
  if (v5 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_13;
  }

  if (BYTE1(v5) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_13;
  }

  if (HIWORD(v5) != 68)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_13;
  }

  if (v3 - 4 <= 1)
  {
    _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n");
    goto LABEL_14;
  }

  if (*(v4 + 2) != 1)
  {
    _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n");
    goto LABEL_14;
  }

  v6 = v3 - 6;
  if (v6 <= 0x19)
  {
    _ETLDebugPrint("ETLMaverickParseGetBandLockResponse", "Received response has only %u bytes, need %u\n", v6, 26);
    return 0;
  }

  else
  {
    *a2 = *(v4 + 3);
    *a3 = *(v4 + 1);
    a3[1] = *(v4 + 2);
    a3[2] = *(v4 + 3);
    return 1;
  }
}

uint64_t ETLMaverickSetBandlock(uint64_t (**a1)(void, uint64_t, uint64_t, __int128 *, uint64_t, uint64_t, void), _WORD *a2, __int128 *a3, uint64_t a4)
{
  if (a1)
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    if (HDLCFrameCreateUplink())
    {
      v23 = *a3;
      v24 = *(a3 + 2);
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        if (HDLCFrameInject())
        {
          if (HDLCFrameGetFreeSpace() <= 1)
          {
            _ETLDebugPrint("ETLMaverickSetBandlockCommand", "Not enough room, need %zu, have %u\n");
          }

          else
          {
            HDLCFrameInjectUnsignedChar();
            HDLCFrameInject();
            v8 = malloc((2 * DWORD2(v20) + 32));
            if (!v8)
            {
LABEL_32:
              HDLCFrameFree();
              HDLCFrameFree();
              return v8;
            }

            v9 = HDLCFrameEncode();
            if (!v9)
            {
              goto LABEL_35;
            }

            v10 = v9;
            LODWORD(v23) = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, v8, v9);
            }

            if (*a1)
            {
              v11 = (*a1)(a1, v8, v10, &v23, 1, a4, 0);
              v12 = v23;
              free(v8);
              v8 = 0;
              if (!v11 || v12 != v10)
              {
                goto LABEL_32;
              }

              LOBYTE(v23) = 75;
              if (!_ETLResponseRingBuffer)
              {
                TelephonyUtilRingBufferInitialize();
              }

              v8 = 0;
              if (!ETLFindMatchingResponseUsingBuffer(a1, v18, &_ETLResponseRingBuffer, &v23, a4) || v23 != 75)
              {
                goto LABEL_32;
              }

              v16 = *a3;
              v17 = *(a3 + 2);
              v23 = 0uLL;
              v24 = 0;
              ETLMaverickParseGetBandLockResponse(v18, a2, &v23);
              if (!*a2)
              {
                v13 = v23 == v16 && *(&v23 + 1) == *(&v16 + 1);
                if (v13 && v24 == v17)
                {
                  v8 = 1;
                  goto LABEL_32;
                }
              }

              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "Expected locked band values are different read back locked band values.\n");
              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "\tExpected GWC: 0x%016llx\n", v16);
              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "\tExpected LTE: 0x%016llx\n", *(&v16 + 1));
              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "\tExpected TDS: 0x%016llx\n", v17);
              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "\tRead back GWC: 0x%016llx\n", v23);
              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "\tRead back LTE: 0x%016llx\n", *(&v23 + 1));
              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "\tRead back TDS: 0x%016llx\n");
            }

            else
            {
LABEL_35:
              free(v8);
            }
          }

LABEL_31:
          v8 = 0;
          goto LABEL_32;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      }

      _ETLDebugPrint("ETLMaverickSetBandlockCommand", "Failed on creating BSP Command Heder\n");
      goto LABEL_31;
    }

    _ETLDebugPrint("ETLMaverickSetBandlock", "Failed to create command frame\n");
    goto LABEL_31;
  }

  _ETLDebugPrint("ETLMaverickSetBandlock", "Transport cannot be NULL\n", a3, a4);
  return 0;
}

uint64_t ETLMaverickGetBandSupport(void *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    memset(v24, 0, sizeof(v24));
    v25 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
        goto LABEL_29;
      }

      v29 = 3210059;
      if ((HDLCFrameInject() & 1) == 0)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
        goto LABEL_29;
      }

      v10 = malloc((2 * DWORD2(v26) + 32));
      if (!v10)
      {
LABEL_30:
        HDLCFrameFree();
        HDLCFrameFree();
        return v10;
      }

      v11 = HDLCFrameEncode();
      if (!v11)
      {
        goto LABEL_32;
      }

      v12 = v11;
      v29 = -1431655766;
      if ((_ETLDebugFlags & 2) != 0)
      {
        off_2A18A5818(&str_3, 0, v10, v11);
      }

      if (!*a1)
      {
LABEL_32:
        free(v10);
        goto LABEL_29;
      }

      v13 = (*a1)(a1, v10, v12, &v29, 1, a5, 0);
      v14 = v29;
      free(v10);
      v10 = 0;
      if (!v13 || v14 != v12)
      {
        goto LABEL_30;
      }

      LOBYTE(v29) = 75;
      if (!_ETLResponseRingBuffer)
      {
        TelephonyUtilRingBufferInitialize();
      }

      v10 = 0;
      if (!ETLFindMatchingResponseUsingBuffer(a1, v24, &_ETLResponseRingBuffer, &v29, a5) || v29 != 75)
      {
        goto LABEL_30;
      }

      v15 = DWORD2(v24[0]) - 4;
      if (DWORD2(v24[0]) < 4)
      {
        _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
      }

      else
      {
        v16 = *&v24[0];
        v17 = **&v24[0];
        if (**&v24[0] == 75)
        {
          if (BYTE1(v17) == 251)
          {
            if (HIWORD(v17) == 48)
            {
              if (v15 > 1)
              {
                v18 = *(*&v24[0] + 4);
                *a2 = v18;
                if (v18 != 1)
                {
                  _ETLDebugPrint("ETLMaverickParseGetBandSupportResponse", "Error Code Returned: %d\n", v18);
                }

                if (v15 > 0x2D)
                {
                  v19 = *(v16 + 6);
                  *(a3 + 14) = *(v16 + 20);
                  *a3 = v19;
                  v20 = *(v16 + 28);
                  *(a4 + 14) = *(v16 + 42);
                  *a4 = v20;
                  v10 = 1;
                  goto LABEL_30;
                }
              }

              _ETLDebugPrint("ETLMaverickParseGetBandSupportResponse", "Received response has only %u bytes, need %u\n");
LABEL_29:
              v10 = 0;
              goto LABEL_30;
            }

            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
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

      _ETLDebugPrint("ETLMaverickParseGetBandSupportResponse", "Failed on parsing BSP Ext Response.\n", v22, v23);
      goto LABEL_29;
    }

    _ETLDebugPrint("ETLMaverickGetBandSupport", "Failed to create command frame\n");
    goto LABEL_29;
  }

  _ETLDebugPrint("ETLMaverickGetBandSupport", "Transport cannot be NULL\n", a3, a4, a5);
  return 0;
}

void *ETLMaverickGetGPIOExt(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, uint64_t a7)
{
  if (a1 && a3 && a4 && a5 && a6)
  {
    v9 = a2;
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
      }

      else
      {
        v25 = 3013963;
        if (HDLCFrameInject())
        {
          if (HDLCFrameInjectUnsignedShort())
          {
            GPIOExtResponse = malloc((2 * DWORD2(v22) + 32));
            if (!GPIOExtResponse)
            {
LABEL_27:
              HDLCFrameFree();
              HDLCFrameFree();
              return GPIOExtResponse;
            }

            v15 = HDLCFrameEncode();
            if (v15)
            {
              v16 = v15;
              v25 = -1431655766;
              if ((_ETLDebugFlags & 2) != 0)
              {
                off_2A18A5818(&str_3, 0, GPIOExtResponse, v15);
              }

              if (*a1)
              {
                v17 = (*a1)(a1, GPIOExtResponse, v16, &v25, 1, a7, 0);
                v19 = v25;
                free(GPIOExtResponse);
                GPIOExtResponse = 0;
                if (v17 && v19 == v16)
                {
                  LOBYTE(v25) = 75;
                  if (!_ETLResponseRingBuffer)
                  {
                    TelephonyUtilRingBufferInitialize();
                  }

                  GPIOExtResponse = 0;
                  if (ETLFindMatchingResponseUsingBuffer(a1, v20, &_ETLResponseRingBuffer, &v25, a7) && v25 == 75)
                  {
                    GPIOExtResponse = ETLMaverickParseGetGPIOExtResponse(v20, v9, a3, a4, a5, a6);
                  }
                }

                goto LABEL_27;
              }
            }

            free(GPIOExtResponse);
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
      _ETLDebugPrint("ETLMaverickGetGPIOExt", "Failed to create command frame\n");
    }

    GPIOExtResponse = 0;
    goto LABEL_27;
  }

  _ETLDebugPrint("ETLMaverickGetGPIOExt", "Transport, gpioState, direction, value, or function memory cannot be NULL\n", a3, a4, a5, a6, a7);
  return 0;
}

uint64_t ETLMaverickParseGetGPIOExtResponse(int **a1, int a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6)
{
  v6 = *(a1 + 2);
  v7 = v6 - 4;
  if (v6 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6);
LABEL_13:
    _ETLDebugPrint("ETLMaverickParseGetGPIOExtResponse", "Failed to parse BSP response header\n");
    return 0;
  }

  v8 = *a1;
  v9 = **a1;
  if (v9 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6);
    goto LABEL_13;
  }

  if (BYTE1(v9) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6);
    goto LABEL_13;
  }

  if (HIWORD(v9) != 45)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6);
    goto LABEL_13;
  }

  if (v7 <= 5)
  {
    _ETLDebugPrint("ETLMaverickParseGetGPIOExtResponse", "Received response has only %u bytes, need %u\n", v7, 6);
    return 0;
  }

  else if (*(v8 + 2) == 1)
  {
    v10 = *(v8 + 3);
    if (v10 == a2)
    {
      *a3 = *(v8 + 8);
      *a4 = *(v8 + 9);
      *a5 = *(v8 + 10);
      *a6 = *(v8 + 11);
      return 1;
    }

    else
    {
      _ETLDebugPrint("ETLMaverickParseGetGPIOExtResponse", "Expected gpio id, %u, but got %u\n", a2, v10);
      return 0;
    }
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseGetGPIOExtResponse", "Received response with failure status [%d]\n", *(v8 + 2));
    return 0;
  }
}

uint64_t ETLMaverickSetGPIOExt(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    memset(v15, 0, sizeof(v15));
    v16 = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        v17 = 3079499;
        if (HDLCFrameInject())
        {
          if (HDLCFrameInjectUnsignedShort() && HDLCFrameInjectUnsignedChar() && HDLCFrameInjectUnsignedChar() && HDLCFrameInjectUnsignedChar() && ETLSendCommand(a1, v15, a6) && ETLSubsysFindMatchingResponse(a1, &v12, a6))
          {
            v8 = ETLMaverickParseSetGPIOExtResponse(&v12);
LABEL_17:
            HDLCFrameFree();
            HDLCFrameFree();
            return v8;
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
      _ETLDebugPrint("ETLMaverickSetGPIOExt", "Failed to create command frame\n", v10, v11, v12, v13, v14);
    }

    v8 = 0;
    goto LABEL_17;
  }

  _ETLDebugPrint("ETLMaverickSetGPIOExt", "Transport cannot be NULL\n", a3, a4, a5, a6);
  return 0;
}

uint64_t ETLMaverickParseSetGPIOExtResponse(unsigned int *a1)
{
  v1 = a1[2];
  v2 = v1 - 4;
  if (v1 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
LABEL_12:
    _ETLDebugPrint("ETLMaverickParseSetGPIOExtResponse", "Failed to parse BSP response header\n");
    return 0;
  }

  v3 = **a1;
  if (v3 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_12;
  }

  if (BYTE1(v3) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_12;
  }

  if (HIWORD(v3) != 46)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_12;
  }

  if (v2 <= 1)
  {
    _ETLDebugPrint("ETLMaverickParseSetGPIOExtResponse", "Received response has only %u bytes, need %u\n", v2, 2);
    return 0;
  }

  else if (*(*a1 + 4) == 1)
  {
    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseSetGPIOExtResponse", "Received response with failure status [%d]\n", *(*a1 + 4));
    return 0;
  }
}

uint64_t ETLMaverickLoopbackMode(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        v26 = 4128075;
        if (HDLCFrameInject())
        {
          FreeSpace = HDLCFrameGetFreeSpace();
          if (FreeSpace <= 4)
          {
            _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 5, FreeSpace);
            _ETLDebugPrint("ETLMaverickAddLoopbackModeHeader", "There is no more free spaces.\n", v16, v18);
            goto LABEL_30;
          }

          HDLCFrameInjectUnsignedInt();
          HDLCFrameInjectUnsignedChar();
          if (a2 == 3)
          {
            HDLCFrameInjectUnsignedChar();
            HDLCFrameInjectUnsignedChar();
            HDLCFrameInjectUnsignedChar();
            HDLCFrameInjectUnsignedInt();
          }

          v9 = malloc((2 * DWORD2(v21) + 32));
          if (!v9)
          {
            goto LABEL_31;
          }

          v10 = HDLCFrameEncode();
          if (!v10)
          {
            goto LABEL_34;
          }

          v11 = v10;
          v26 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v9, v10);
          }

          if (!*a1)
          {
LABEL_34:
            free(v9);
            goto LABEL_30;
          }

          v12 = (*a1)(a1, v9, v11, &v26, 1, a5, 0);
          v13 = v26;
          free(v9);
          v9 = 0;
          if (!v12 || v13 != v11)
          {
            goto LABEL_31;
          }

          LOBYTE(v26) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v9 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v19, &_ETLResponseRingBuffer, &v26, a5) || v26 != 75)
          {
            goto LABEL_31;
          }

          v26 = 0;
          v25 = -21846;
          v24 = -21846;
          if (ETLSubsysParseHeader(v19, &v25, &v24, &v26))
          {
            if (v25 == 253)
            {
              if (v24 == 62)
              {
                if (DWORD2(v19[0]) - v26 <= 1)
                {
                  _ETLDebugPrint("ETLMaverickParseResponseLoopbackMode", "Received response has only %u bytes, need %u bytes\n");
                }

                else
                {
                  if (*(*&v19[0] + v26) == 1)
                  {
                    v9 = 1;
LABEL_31:
                    HDLCFrameFree();
                    HDLCFrameFree();
                    return v9;
                  }

                  _ETLDebugPrint("ETLMaverickParseResponseLoopbackMode", "Received response with failure status [%d]\n");
                }

LABEL_30:
                v9 = 0;
                goto LABEL_31;
              }

              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
            }
          }

          _ETLDebugPrint("ETLMaverickParseResponseLoopbackMode", "Failed to parse BSP response header\n", v15, v17);
          goto LABEL_30;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      }

      _ETLDebugPrint("ETLMaverickAddLoopbackModeHeader", "Failed to create command header\n");
      goto LABEL_30;
    }

    _ETLDebugPrint("ETLMaverickLoopbackMode", "Failed to create command frame\n");
    goto LABEL_30;
  }

  _ETLDebugPrint("ETLMaverickLoopbackMode", "Transport cannot be NULL\n", a3, a4, a5);
  return 0;
}

uint64_t ETLMaverickMHILoopbackMode(uint64_t (**a1)(void, uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a3;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    memset(v21, 0, sizeof(v21));
    v22 = 0;
    if ((HDLCFrameCreateUplink() & 1) == 0)
    {
      _ETLDebugPrint("ETLMaverickMHILoopbackMode", "Failed to create command frame\n");
      goto LABEL_30;
    }

    v26 = a2;
    v27 = v4;
    if (HDLCFrameGetFreeSpace() < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    }

    else
    {
      v29 = 5176651;
      if (HDLCFrameInject())
      {
        FreeSpace = HDLCFrameGetFreeSpace();
        if (FreeSpace > 0xC)
        {
          HDLCFrameInjectUnsignedChar();
          HDLCFrameInject();
          v9 = malloc((2 * DWORD2(v23) + 32));
          if (!v9)
          {
LABEL_31:
            HDLCFrameFree();
            HDLCFrameFree();
            return v9;
          }

          v10 = HDLCFrameEncode();
          if (!v10)
          {
            goto LABEL_34;
          }

          v11 = v10;
          LODWORD(v26) = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v9, v10);
          }

          if (*a1)
          {
            v12 = (*a1)(a1, v9, v11, &v26, 1, a4, 0);
            v13 = v26;
            free(v9);
            v9 = 0;
            if (!v12 || v13 != v11)
            {
              goto LABEL_31;
            }

            LOBYTE(v26) = 75;
            if (!_ETLResponseRingBuffer)
            {
              TelephonyUtilRingBufferInitialize();
            }

            v9 = 0;
            if (!ETLFindMatchingResponseUsingBuffer(a1, v21, &_ETLResponseRingBuffer, &v26, a4) || v26 != 75)
            {
              goto LABEL_31;
            }

            LODWORD(v26) = 0;
            LOWORD(v29) = -21846;
            v28 = -21846;
            if (ETLSubsysParseHeader(v21, &v29, &v28, &v26))
            {
              if (v29 == 253)
              {
                if (v28 == 78)
                {
                  if ((DWORD2(v21[0]) - v26) <= 4)
                  {
                    _ETLDebugPrint("ETLMaverickParseResponseMHILoopbackMode", "Received response has only %u bytes, need %u bytes\n");
                  }

                  else
                  {
                    v14 = *&v21[0] + v26;
                    v9 = 1;
                    if (!*(v14 + 1) || !*v14)
                    {
                      goto LABEL_31;
                    }

                    _ETLDebugPrint("ETLMaverickParseResponseMHILoopbackMode", "Received response with failure status [%d]\n");
                  }

                  goto LABEL_30;
                }

                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
              }

              else
              {
                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
              }
            }

            _ETLDebugPrint("ETLMaverickParseResponseMHILoopbackMode", "Failed to parse BSP response header\n", v17, v19);
          }

          else
          {
LABEL_34:
            free(v9);
          }

LABEL_30:
          v9 = 0;
          goto LABEL_31;
        }

        _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 13, FreeSpace);
        v15 = "There is no more free spaces.\n";
LABEL_29:
        _ETLDebugPrint("ETLMaverickAddMHILoopbackModeHeader", v15, v18, v20);
        goto LABEL_30;
      }

      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    }

    v15 = "Failed to create command header\n";
    goto LABEL_29;
  }

  _ETLDebugPrint("ETLMaverickMHILoopbackMode", "Transport cannot be NULL\n", a3, a4);
  return 0;
}

uint64_t ETLMaverickRFSelfTestTrigger(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), unsigned __int16 *a2, uint64_t a3)
{
  if (!a1)
  {
    _ETLDebugPrint("ETLMaverickRFSelfTestTrigger", "Transport parameter is NULL\n", a3);
    return 0;
  }

  if (!a2)
  {
    _ETLDebugPrint("ETLMaverickRFSelfTestTrigger", "Trigger info parameter is NULL\n", a3);
    return 0;
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickRFSelfTestTrigger", "Failed to create command frame\n");
    goto LABEL_26;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
LABEL_24:
    _ETLDebugPrint("ETLMaverickAddRFSubCommandHeader", "Failed on creating RF Command Header\n");
LABEL_25:
    _ETLDebugPrint("ETLMaverickAddRFSelfTestTriggerInfo", "Failed on creating RF Sub Command Header\n");
    goto LABEL_26;
  }

  v13 = 4455243;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_24;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLMaverickAddRFSubCommandHeader", "Not enough room, need %zu, have %zu\n");
    goto LABEL_25;
  }

  HDLCFrameInjectUnsignedShort();
  if (HDLCFrameGetFreeSpace() <= 3 || (HDLCFrameInjectUnsignedShort(), HDLCFrameInjectUnsignedShort(), HDLCFrameGetFreeSpace() <= 0x103))
  {
    _ETLDebugPrint("ETLMaverickAddRFSelfTestTriggerInfo", "Not enough room, need %zu, have %zu\n");
    goto LABEL_26;
  }

  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  if (!ETLSendCommand(a1, v9, a3))
  {
    goto LABEL_26;
  }

  if (!ETLSubsysFindMatchingResponse(a1, v7, a3))
  {
    goto LABEL_26;
  }

  v13 = 0;
  v12 = -21846;
  v11 = -21846;
  if (!ETLSubsysParseHeader(v7, &v12, &v11, &v13))
  {
    goto LABEL_26;
  }

  if (v12 != 251)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_26;
  }

  if (v11 != 67)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_26;
  }

  if (DWORD2(v7[0]) - v13 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseRFSelfTestTriggerResponse", "Received response has only %zu bytes, need %zu\n");
    goto LABEL_26;
  }

  if (*(*&v7[0] + v13) != 11)
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if (*(*&v7[0] + v13 + 2) != 1)
  {
    _ETLDebugPrint("ETLMaverickParseRFSelfTestTriggerResponse", "Received response with failure status [%d]\n");
    goto LABEL_26;
  }

  v5 = 1;
LABEL_27:
  HDLCFrameFree();
  HDLCFrameFree();
  return v5;
}

uint64_t ETLMaverickRFSelfTestResult(uint64_t (**a1)(void, uint64_t, uint64_t, unsigned int *, uint64_t, uint64_t, void), _WORD *a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      memset(v17, 0, sizeof(v17));
      v18 = 0;
      if ((HDLCFrameCreateUplink() & 1) == 0)
      {
        _ETLDebugPrint("ETLMaverickRFSelfTestResult", "Failed to create command frame\n");
        goto LABEL_33;
      }

      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        v24 = 4455243;
        if (HDLCFrameInject())
        {
          if (HDLCFrameGetFreeSpace() > 1)
          {
            HDLCFrameInjectUnsignedShort();
            if (HDLCFrameGetFreeSpace() <= 3)
            {
              _ETLDebugPrint("ETLMaverickAddRFSelfTestResultHeader", "Not enough room, need %zu, have %zu\n");
            }

            else
            {
              HDLCFrameInjectUnsignedShort();
              HDLCFrameInjectUnsignedShort();
              v6 = malloc((2 * DWORD2(v19) + 32));
              if (!v6)
              {
LABEL_34:
                HDLCFrameFree();
                HDLCFrameFree();
                return v6;
              }

              v7 = HDLCFrameEncode();
              if (!v7)
              {
                goto LABEL_38;
              }

              v8 = v7;
              v24 = -1431655766;
              if ((_ETLDebugFlags & 2) != 0)
              {
                off_2A18A5818(&str_3, 0, v6, v7);
              }

              if (*a1)
              {
                v9 = (*a1)(a1, v6, v8, &v24, 1, a3, 0);
                v10 = v24;
                free(v6);
                v6 = 0;
                if (!v9 || v10 != v8)
                {
                  goto LABEL_34;
                }

                if (ETLSubsysFindMatchingResponse(a1, v17, a3))
                {
                  v24 = 0;
                  v23 = -21846;
                  v22 = -21846;
                  if (ETLSubsysParseHeader(v17, &v23, &v22, &v24))
                  {
                    if (v23 == 251)
                    {
                      if (v22 == 67)
                      {
                        v11 = v24;
                        v12 = DWORD2(v17[0]) - v24;
                        v13 = v24 + 6;
                        v24 += 6;
                        if (v12 <= 5)
                        {
                          _ETLDebugPrint("ETLMaverickParseRFSelfTestResultResponse", "Received response has only %zu bytes, need %zu\n");
                        }

                        else
                        {
                          v14 = *&v17[0] + v11;
                          if (*(*&v17[0] + v11) == 21)
                          {
                            if (*(v14 + 4) == 100)
                            {
                              if (*(v14 + 2) == 1)
                              {
                                if (DWORD2(v17[0]) - v13 > 0x205)
                                {
                                  v15 = (*&v17[0] + v13);
                                  *a2 = *v15;
                                  a2[1] = v15[1];
                                  a2[2] = v15[2];
                                  a2[3] = v15[3];
                                  a2[4] = v15[4];
                                  a2[5] = v15[5];
                                  a2[6] = v15[6];
                                  a2[7] = v15[7];
                                  a2[8] = v15[8];
                                  a2[9] = v15[9];
                                  a2[10] = v15[10];
                                  a2[11] = v15[11];
                                  a2[12] = v15[12];
                                  a2[13] = v15[13];
                                  a2[14] = v15[14];
                                  a2[15] = v15[15];
                                  a2[16] = v15[16];
                                  a2[17] = v15[17];
                                  a2[18] = v15[18];
                                  a2[19] = v15[19];
                                  a2[20] = v15[20];
                                  a2[21] = v15[21];
                                  a2[22] = v15[22];
                                  a2[23] = v15[23];
                                  a2[24] = v15[24];
                                  a2[25] = v15[25];
                                  a2[26] = v15[26];
                                  a2[27] = v15[27];
                                  a2[28] = v15[28];
                                  a2[29] = v15[29];
                                  a2[30] = v15[30];
                                  a2[31] = v15[31];
                                  a2[32] = v15[32];
                                  a2[33] = v15[33];
                                  a2[34] = v15[34];
                                  a2[35] = v15[35];
                                  a2[36] = v15[36];
                                  a2[37] = v15[37];
                                  a2[38] = v15[38];
                                  a2[39] = v15[39];
                                  a2[40] = v15[40];
                                  a2[41] = v15[41];
                                  a2[42] = v15[42];
                                  a2[43] = v15[43];
                                  a2[44] = v15[44];
                                  a2[45] = v15[45];
                                  a2[46] = v15[46];
                                  a2[47] = v15[47];
                                  a2[48] = v15[48];
                                  a2[49] = v15[49];
                                  a2[50] = v15[50];
                                  a2[51] = v15[51];
                                  a2[52] = v15[52];
                                  a2[53] = v15[53];
                                  a2[54] = v15[54];
                                  a2[55] = v15[55];
                                  a2[56] = v15[56];
                                  a2[57] = v15[57];
                                  a2[58] = v15[58];
                                  a2[59] = v15[59];
                                  a2[60] = v15[60];
                                  a2[61] = v15[61];
                                  a2[62] = v15[62];
                                  a2[63] = v15[63];
                                  a2[64] = v15[64];
                                  a2[65] = v15[65];
                                  a2[66] = v15[66];
                                  a2[67] = v15[67];
                                  a2[68] = v15[68];
                                  a2[69] = v15[69];
                                  a2[70] = v15[70];
                                  a2[71] = v15[71];
                                  a2[72] = v15[72];
                                  a2[73] = v15[73];
                                  a2[74] = v15[74];
                                  a2[75] = v15[75];
                                  a2[76] = v15[76];
                                  a2[77] = v15[77];
                                  a2[78] = v15[78];
                                  a2[79] = v15[79];
                                  a2[80] = v15[80];
                                  a2[81] = v15[81];
                                  a2[82] = v15[82];
                                  a2[83] = v15[83];
                                  a2[84] = v15[84];
                                  a2[85] = v15[85];
                                  a2[86] = v15[86];
                                  a2[87] = v15[87];
                                  a2[88] = v15[88];
                                  a2[89] = v15[89];
                                  a2[90] = v15[90];
                                  a2[91] = v15[91];
                                  a2[92] = v15[92];
                                  a2[93] = v15[93];
                                  a2[94] = v15[94];
                                  a2[95] = v15[95];
                                  a2[96] = v15[96];
                                  a2[97] = v15[97];
                                  a2[98] = v15[98];
                                  a2[99] = v15[99];
                                  a2[100] = v15[100];
                                  a2[101] = v15[101];
                                  a2[102] = v15[102];
                                  a2[103] = v15[103];
                                  a2[104] = v15[104];
                                  a2[105] = v15[105];
                                  a2[106] = v15[106];
                                  a2[107] = v15[107];
                                  a2[108] = v15[108];
                                  a2[109] = v15[109];
                                  a2[110] = v15[110];
                                  a2[111] = v15[111];
                                  a2[112] = v15[112];
                                  a2[113] = v15[113];
                                  a2[114] = v15[114];
                                  a2[115] = v15[115];
                                  a2[116] = v15[116];
                                  a2[117] = v15[117];
                                  a2[118] = v15[118];
                                  a2[119] = v15[119];
                                  a2[120] = v15[120];
                                  a2[121] = v15[121];
                                  a2[122] = v15[122];
                                  a2[123] = v15[123];
                                  a2[124] = v15[124];
                                  a2[125] = v15[125];
                                  a2[126] = v15[126];
                                  a2[127] = v15[127];
                                  a2[128] = v15[128];
                                  a2[129] = v15[129];
                                  a2[130] = v15[130];
                                  a2[131] = v15[131];
                                  a2[132] = v15[132];
                                  a2[133] = v15[133];
                                  a2[134] = v15[134];
                                  a2[135] = v15[135];
                                  a2[136] = v15[136];
                                  a2[137] = v15[137];
                                  a2[138] = v15[138];
                                  a2[139] = v15[139];
                                  a2[140] = v15[140];
                                  a2[141] = v15[141];
                                  a2[142] = v15[142];
                                  a2[143] = v15[143];
                                  a2[144] = v15[144];
                                  a2[145] = v15[145];
                                  a2[146] = v15[146];
                                  a2[147] = v15[147];
                                  a2[148] = v15[148];
                                  a2[149] = v15[149];
                                  a2[150] = v15[150];
                                  a2[151] = v15[151];
                                  a2[152] = v15[152];
                                  a2[153] = v15[153];
                                  a2[154] = v15[154];
                                  a2[155] = v15[155];
                                  a2[156] = v15[156];
                                  a2[157] = v15[157];
                                  a2[158] = v15[158];
                                  a2[159] = v15[159];
                                  a2[160] = v15[160];
                                  a2[161] = v15[161];
                                  a2[162] = v15[162];
                                  a2[163] = v15[163];
                                  a2[164] = v15[164];
                                  a2[165] = v15[165];
                                  a2[166] = v15[166];
                                  a2[167] = v15[167];
                                  a2[168] = v15[168];
                                  a2[169] = v15[169];
                                  a2[170] = v15[170];
                                  a2[171] = v15[171];
                                  a2[172] = v15[172];
                                  a2[173] = v15[173];
                                  a2[174] = v15[174];
                                  a2[175] = v15[175];
                                  a2[176] = v15[176];
                                  a2[177] = v15[177];
                                  a2[178] = v15[178];
                                  a2[179] = v15[179];
                                  a2[180] = v15[180];
                                  a2[181] = v15[181];
                                  a2[182] = v15[182];
                                  a2[183] = v15[183];
                                  a2[184] = v15[184];
                                  a2[185] = v15[185];
                                  a2[186] = v15[186];
                                  a2[187] = v15[187];
                                  a2[188] = v15[188];
                                  a2[189] = v15[189];
                                  a2[190] = v15[190];
                                  a2[191] = v15[191];
                                  a2[192] = v15[192];
                                  a2[193] = v15[193];
                                  a2[194] = v15[194];
                                  a2[195] = v15[195];
                                  a2[196] = v15[196];
                                  a2[197] = v15[197];
                                  a2[198] = v15[198];
                                  a2[199] = v15[199];
                                  a2[200] = v15[200];
                                  a2[201] = v15[201];
                                  a2[202] = v15[202];
                                  a2[203] = v15[203];
                                  a2[204] = v15[204];
                                  a2[205] = v15[205];
                                  a2[206] = v15[206];
                                  a2[207] = v15[207];
                                  a2[208] = v15[208];
                                  a2[209] = v15[209];
                                  a2[210] = v15[210];
                                  a2[211] = v15[211];
                                  a2[212] = v15[212];
                                  a2[213] = v15[213];
                                  a2[214] = v15[214];
                                  a2[215] = v15[215];
                                  a2[216] = v15[216];
                                  a2[217] = v15[217];
                                  a2[218] = v15[218];
                                  a2[219] = v15[219];
                                  a2[220] = v15[220];
                                  a2[221] = v15[221];
                                  a2[222] = v15[222];
                                  a2[223] = v15[223];
                                  a2[224] = v15[224];
                                  a2[225] = v15[225];
                                  a2[226] = v15[226];
                                  a2[227] = v15[227];
                                  a2[228] = v15[228];
                                  a2[229] = v15[229];
                                  a2[230] = v15[230];
                                  a2[231] = v15[231];
                                  a2[232] = v15[232];
                                  a2[233] = v15[233];
                                  a2[234] = v15[234];
                                  a2[235] = v15[235];
                                  a2[236] = v15[236];
                                  a2[237] = v15[237];
                                  a2[238] = v15[238];
                                  a2[239] = v15[239];
                                  a2[240] = v15[240];
                                  a2[241] = v15[241];
                                  a2[242] = v15[242];
                                  a2[243] = v15[243];
                                  a2[244] = v15[244];
                                  a2[245] = v15[245];
                                  a2[246] = v15[246];
                                  a2[247] = v15[247];
                                  a2[248] = v15[248];
                                  a2[249] = v15[249];
                                  a2[250] = v15[250];
                                  a2[251] = v15[251];
                                  a2[252] = v15[252];
                                  a2[253] = v15[253];
                                  a2[254] = v15[254];
                                  a2[255] = v15[255];
                                  a2[256] = v15[256];
                                  a2[257] = v15[257];
                                  a2[258] = v15[258];
                                  v6 = 1;
                                  goto LABEL_34;
                                }

                                _ETLDebugPrint("ETLMaverickParseRFSelfTestResultResponse", "Received result has only %zu bytes, need %zu\n");
                              }

                              else
                              {
                                _ETLDebugPrint("ETLMaverickParseRFSelfTestResultResponse", "Received response with failure status [%d]\n");
                              }
                            }

                            else
                            {
                              _ETLDebugPrint("ETLMaverickParseRFSelfTestResultResponse", "Received response with progress in-complete [%d %%]\n");
                            }
                          }

                          else
                          {
                            _ETLDebugPrint("ETLMaverickParseRFSelfTestResultResponse", "Received response with invalid sub-command code [%d]\n");
                          }
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
                }
              }

              else
              {
LABEL_38:
                free(v6);
              }
            }

LABEL_33:
            v6 = 0;
            goto LABEL_34;
          }

          _ETLDebugPrint("ETLMaverickAddRFSubCommandHeader", "Not enough room, need %zu, have %zu\n");
LABEL_32:
          _ETLDebugPrint("ETLMaverickAddRFSelfTestResultHeader", "Failed on creating RF Sub Command Header\n");
          goto LABEL_33;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      }

      _ETLDebugPrint("ETLMaverickAddRFSubCommandHeader", "Failed on creating RF Command Header\n");
      goto LABEL_32;
    }

    _ETLDebugPrint("ETLMaverickRFSelfTestResult", "Result info parameter is NULL\n", a3);
  }

  else
  {
    _ETLDebugPrint("ETLMaverickRFSelfTestResult", "Transport parameter is NULL\n", a3);
  }

  return 0;
}

uint64_t ETLMaverickGetBasebandInitStatusEx(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), _DWORD *a2, uint64_t a3, int a4)
{
  v4 = 0;
  if (a1 && a2)
  {
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    memset(v16, 0, sizeof(v16));
    v17 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        v21 = 5373259;
        if (HDLCFrameInject())
        {
          v9 = malloc((2 * DWORD2(v18) + 32));
          if (v9)
          {
            v10 = v9;
            v11 = HDLCFrameEncode();
            if (v11)
            {
              v12 = -1431655766;
              v21 = -1431655766;
              if ((_ETLDebugFlags & 2) != 0)
              {
                off_2A18A5818(&str_3, 0, v10, v11);
              }

              if (*a1)
              {
                v13 = (*a1)(a1, v10, v11, &v21, 1, a3, 0);
                v12 = v21;
              }

              else
              {
                v13 = 0;
              }

              if (v12 == v11)
              {
                LODWORD(v11) = v13;
              }

              else
              {
                LODWORD(v11) = 0;
              }
            }

            free(v10);
            if (!a4)
            {
              goto LABEL_29;
            }

            goto LABEL_16;
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
      _ETLDebugPrint("ETLMaverickGetBasebandInitStatusEx", "Failed to create command frame\n");
    }

    LODWORD(v11) = 0;
    if (!a4)
    {
LABEL_29:
      if (!v11)
      {
        goto LABEL_45;
      }

      LOBYTE(v21) = 75;
      if (!_ETLResponseRingBuffer)
      {
        TelephonyUtilRingBufferInitialize();
      }

      v4 = 0;
      if (!ETLFindMatchingResponseUsingBuffer(a1, v16, &_ETLResponseRingBuffer, &v21, a3) || v21 != 75)
      {
        goto LABEL_46;
      }

      goto LABEL_34;
    }

LABEL_16:
    LOBYTE(v21) = 75;
    *a2 = 0;
    if (!v11)
    {
      goto LABEL_45;
    }

    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a1, v16, &_ETLResponseRingBuffer, &v21, a3))
    {
      goto LABEL_45;
    }

    if (v21 != 75)
    {
      if (v21 == 19)
      {
        _ETLDebugPrint("ETLMaverickGetBasebandInitStatusEx", "BB Init status handler is not regisered yet. Treat it as not done\n");
LABEL_23:
        v4 = 1;
LABEL_46:
        HDLCFrameFree();
        HDLCFrameFree();
        return v4;
      }

LABEL_45:
      v4 = 0;
      goto LABEL_46;
    }

LABEL_34:
    if (DWORD2(v16[0]) < 4)
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
    }

    else
    {
      v14 = **&v16[0];
      if (**&v16[0] == 75)
      {
        if (BYTE1(v14) == 253)
        {
          if (HIWORD(v14) == 81)
          {
            if ((DWORD2(v16[0]) - 4) > 3)
            {
              *a2 = *(*&v16[0] + 4);
              goto LABEL_23;
            }

            _ETLDebugPrint("ETLMaverickParseParseBasebandInitStatusResponse", "Received response has only %u bytes, need %u bytes\n");
            goto LABEL_45;
          }

          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
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

    _ETLDebugPrint("ETLMaverickParseParseBasebandInitStatusResponse", "Failed on parsing BSP Response.\n");
    goto LABEL_45;
  }

  return v4;
}

uint64_t ETLMaverickIPALoopbackV2(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2)
{
  if (!a1)
  {
    _ETLDebugPrint("ETLMaverickIPALoopbackV2", "Transport cannot be NULL\n");
    return 0;
  }

  memset(v16, 0, sizeof(v16));
  v17 = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickIPALoopbackV2", "Failed to create command frame\n");
    return 0;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
LABEL_13:
    _ETLDebugPrint("ETLMaverickAddDataSubCommandHeader", "Failed on creating Data Command Header\n");
LABEL_14:
    _ETLDebugPrint("ETLMaverickAddIPALoopbackV2Header", "Failed to create command header with subcommand\n");
    goto LABEL_15;
  }

  v18[0] = 268461131;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_13;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLMaverickAddDataSubCommandHeader", "Not enough room, need %zu, have %zu\n");
    goto LABEL_14;
  }

  v4 = HDLCFrameInjectUnsignedShort();
  MaverickIPALoopbackV2ParametersType = capabilities::etl::getMaverickIPALoopbackV2ParametersType(v4);
  if (MaverickIPALoopbackV2ParametersType)
  {
    if (MaverickIPALoopbackV2ParametersType != 1)
    {
      _ETLDebugPrint("ETLMaverickAddIPALoopbackV2Header", "Invalid radio for IPA Loopback V2 Header");
      goto LABEL_15;
    }

    v6 = 23;
  }

  else
  {
    v6 = 14;
  }

  v18[0] = 1;
  v18[1] = v6;
  v18[2] = 1;
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace <= 0xB)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 12, FreeSpace);
    _ETLDebugPrint("ETLMaverickAddIPALoopbackV2Header", "There is no more free space\n", v11, v13);
    goto LABEL_15;
  }

  if (!HDLCFrameInject() || !ETLSendCommand(a1, v16, a2) || !ETLSubsysFindMatchingResponse(a1, v14, a2))
  {
    goto LABEL_15;
  }

  v18[0] = 0;
  v20 = -21846;
  v19 = -21846;
  if (!ETLSubsysParseHeader(v14, &v20, &v19, v18))
  {
LABEL_32:
    _ETLDebugPrint("ETLMaverickParseIPALoopbackV2Response", "Failed on parsing Data Response.\n", v10, v12);
    goto LABEL_15;
  }

  if (v20 != 100)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_32;
  }

  if (v19 != 4096)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_32;
  }

  if ((DWORD2(v14[0]) - v18[0]) > 4)
  {
    v8 = 1;
    goto LABEL_16;
  }

  _ETLDebugPrint("ETLMaverickParseIPALoopbackV2Response", "Received response has only %u bytes, need %u bytes\n");
LABEL_15:
  v8 = 0;
LABEL_16:
  HDLCFrameFree();
  HDLCFrameFree();
  return v8;
}

const char *ETLMaverickAPWakeReasonToString(int a1)
{
  v1 = "Invalid";
  if (a1 == 2)
  {
    v1 = "Forced";
  }

  if (a1 == 1)
  {
    return "Data Activity";
  }

  else
  {
    return v1;
  }
}

uint64_t ETLMaverickMHIPeriodicRemoteWake(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        v24 = 5176651;
        if (HDLCFrameInject())
        {
          FreeSpace = HDLCFrameGetFreeSpace();
          if (FreeSpace <= 3)
          {
            _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 4, FreeSpace);
            _ETLDebugPrint("ETLMaverickAddMHIPeriodicRemoteWakeHeader", "There is no more free space.\n", v14, v16);
            goto LABEL_29;
          }

          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedShort();
          v7 = malloc((2 * DWORD2(v19) + 32));
          if (!v7)
          {
LABEL_30:
            HDLCFrameFree();
            HDLCFrameFree();
            return v7;
          }

          v8 = HDLCFrameEncode();
          if (!v8)
          {
            goto LABEL_33;
          }

          v9 = v8;
          v24 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v7, v8);
          }

          if (!*a1)
          {
LABEL_33:
            free(v7);
            goto LABEL_29;
          }

          v10 = (*a1)(a1, v7, v9, &v24, 1, a4, 0);
          v11 = v24;
          free(v7);
          v7 = 0;
          if (!v10 || v11 != v9)
          {
            goto LABEL_30;
          }

          LOBYTE(v24) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v7 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v17, &_ETLResponseRingBuffer, &v24, a4) || v24 != 75)
          {
            goto LABEL_30;
          }

          v24 = 0;
          v23 = -21846;
          v22 = -21846;
          if (ETLSubsysParseHeader(v17, &v23, &v22, &v24))
          {
            if (v23 == 253)
            {
              if (v22 == 78)
              {
                if (DWORD2(v17[0]) - v24 <= 4)
                {
                  _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponse", "Received response has only %u bytes, need %u bytes\n");
                }

                else
                {
                  if (*(*&v17[0] + v24 + 1) == 1 && *(*&v17[0] + v24) == 2)
                  {
                    v7 = 1;
                    goto LABEL_30;
                  }

                  _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponse", "Received response with failure status [%u] and command type [%u]\n");
                }

LABEL_29:
                v7 = 0;
                goto LABEL_30;
              }

              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
            }
          }

          _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponse", "Failed to parse BSP response header\n", v13, v15);
          goto LABEL_29;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      }

      _ETLDebugPrint("ETLMaverickAddMHIPeriodicRemoteWakeHeader", "Failed to create command header\n");
      goto LABEL_29;
    }

    _ETLDebugPrint("ETLMaverickMHIPeriodicRemoteWake", "Failed to create command frame\n");
    goto LABEL_29;
  }

  _ETLDebugPrint("ETLMaverickMHIPeriodicRemoteWake", "Transport cannot be NULL\n", a3, a4);
  return 0;
}

uint64_t ETLMaverickMHIPeriodicRemoteWakeV2(uint64_t (**a1)(void, uint64_t, uint64_t, unsigned int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a2;
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    memset(v23, 0, sizeof(v23));
    v24 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        v30 = 916811;
        if (HDLCFrameInject())
        {
          FreeSpace = HDLCFrameGetFreeSpace();
          if (FreeSpace <= 5)
          {
            _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 6, FreeSpace);
            _ETLDebugPrint("ETLMaverickAddMHIPeriodicRemoteWakeHeaderV2", "There is no more free space.\n", v20, v22);
          }

          else
          {
            HDLCFrameInjectUnsignedShort();
            HDLCFrameInjectUnsignedInt();
            v8 = malloc((2 * DWORD2(v25) + 32));
            if (!v8)
            {
LABEL_29:
              HDLCFrameFree();
              HDLCFrameFree();
              return v8;
            }

            v9 = HDLCFrameEncode();
            if (!v9)
            {
              goto LABEL_32;
            }

            v10 = v9;
            v30 = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, v8, v9);
            }

            if (*a1)
            {
              v11 = (*a1)(a1, v8, v10, &v30, 1, a4, 0);
              v12 = v30;
              free(v8);
              v8 = 0;
              if (!v11 || v12 != v10)
              {
                goto LABEL_29;
              }

              LOBYTE(v30) = 75;
              if (!_ETLResponseRingBuffer)
              {
                TelephonyUtilRingBufferInitialize();
              }

              v8 = 0;
              if (!ETLFindMatchingResponseUsingBuffer(a1, v23, &_ETLResponseRingBuffer, &v30, a4) || v30 != 75)
              {
                goto LABEL_29;
              }

              v30 = 0;
              v29 = -21846;
              v28 = -21846;
              if (ETLSubsysParseHeader(v23, &v29, &v28, &v30))
              {
                if (v29 == 253)
                {
                  if (v28 == 13)
                  {
                    if (DWORD2(v23[0]) - v30 <= 0x15)
                    {
                      _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "Received response has only %u bytes, need %u bytes\n");
                    }

                    else
                    {
                      v13 = *&v23[0] + v30;
                      if (!*v13)
                      {
                        v15 = *(v13 + 6);
                        v16 = *(v13 + 10);
                        v17 = *(v13 + 14);
                        v18 = *(v13 + 18);
                        _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "Status: %s\n", "success");
                        if (v4 == 1)
                        {
                          _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "Wakeup reason: %s\n");
                        }

                        else if (v4)
                        {
                          _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "Invalid subCMD: %u\n");
                        }

                        else
                        {
                          _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "Delay: %u ms\n");
                        }

                        v8 = 1;
                        _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "MHI channel %d mask: %u\n", 1, v18);
                        _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "MHI channel %d mask: %u\n", 2, v17);
                        _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "MHI channel %d mask: %u\n", 3, v16);
                        _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "MHI channel %d mask: %u\n", 4, v15);
                        goto LABEL_29;
                      }

                      _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "Received response with failure status [%u]\n");
                    }

                    goto LABEL_28;
                  }

                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
                }

                else
                {
                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
                }
              }

              _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "Failed to parse BSP response header\n", v19, v21);
            }

            else
            {
LABEL_32:
              free(v8);
            }
          }

LABEL_28:
          v8 = 0;
          goto LABEL_29;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      }

      _ETLDebugPrint("ETLMaverickAddMHIPeriodicRemoteWakeHeaderV2", "Failed to create command header\n");
      goto LABEL_28;
    }

    _ETLDebugPrint("ETLMaverickMHIPeriodicRemoteWakeV2", "Failed to create command frame\n");
    goto LABEL_28;
  }

  _ETLDebugPrint("ETLMaverickMHIPeriodicRemoteWakeV2", "Transport cannot be NULL\n", a3, a4);
  return 0;
}

uint64_t ETLMaverickADPLEnable(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    _ETLDebugPrint("ETLMaverickADPLEnable", "transport cannot be NULL\n", a3);
    return 0;
  }

  memset(v15, 0, sizeof(v15));
  v16 = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
LABEL_21:
    v10 = 0;
    goto LABEL_22;
  }

  v19 = 1073767499;
  v5 = HDLCFrameInject();
  if ((v5 & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_21;
  }

  capabilities::etl::DPLVersion(v5);
  if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedInt() || !ETLSendCommand(a1, v15, a3) || !ETLSubsysFindMatchingResponse(a1, v13, a3))
  {
    goto LABEL_21;
  }

  v19 = 0;
  v18 = -21846;
  v17 = -21846;
  v6 = ETLSubsysParseHeader(v13, &v18, &v17, &v19);
  if (!v6)
  {
    goto LABEL_25;
  }

  if (v18 != 100)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_25;
  }

  if (v17 != 0x4000)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_25;
  }

  if (DWORD2(v13[0]) - v19 <= 1)
  {
LABEL_25:
    _ETLDebugPrint("ETLMaverickADPLParseResponse", "Received response has only %u bytes, need %u bytes\n");
    goto LABEL_21;
  }

  v7 = (*&v13[0] + v19);
  v8 = *v7;
  v9 = capabilities::etl::DPLVersion(v6);
  if (v8 != v9)
  {
    v12 = capabilities::etl::DPLVersion(v9);
    _ETLDebugPrint("ETLMaverickADPLParseResponse", "Received response with version [%u] while expecting [%u]\n", v8, v12);
    goto LABEL_27;
  }

  if (v7[1] != 1)
  {
LABEL_27:
    _ETLDebugPrint("ETLMaverickADPLParseResponse", "Received response with failure status [%u]\n");
    goto LABEL_21;
  }

  v10 = 1;
LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return v10;
}

uint64_t ETLMaverickGetResetProperties(uint64_t (**a1)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        v19 = 9436491;
        if (HDLCFrameInject())
        {
          v6 = malloc((2 * DWORD2(v16) + 32));
          if (!v6)
          {
LABEL_26:
            HDLCFrameFree();
            HDLCFrameFree();
            return v6;
          }

          v7 = HDLCFrameEncode();
          if (!v7)
          {
            goto LABEL_28;
          }

          v8 = v7;
          v19 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v6, v7);
          }

          if (*a1)
          {
            v9 = (*a1)(a1, v6, v8, &v19, 1, a3, 0);
            v10 = v19;
            free(v6);
            v6 = 0;
            if (!v9 || v10 != v8)
            {
              goto LABEL_26;
            }

            LOBYTE(v19) = 75;
            if (!_ETLResponseRingBuffer)
            {
              TelephonyUtilRingBufferInitialize();
            }

            v6 = 0;
            if (!ETLFindMatchingResponseUsingBuffer(a1, v14, &_ETLResponseRingBuffer, &v19, a3) || v19 != 75)
            {
              goto LABEL_26;
            }

            if (DWORD2(v14[0]) < 4)
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
            }

            else
            {
              v11 = *&v14[0];
              v12 = **&v14[0];
              if (**&v14[0] == 75)
              {
                if (BYTE1(v12) == 253)
                {
                  if (HIWORD(v12) == 143)
                  {
                    if ((DWORD2(v14[0]) - 4) > 6)
                    {
                      *a2 = *(*&v14[0] + 4);
                      *(a2 + 2) = *(v11 + 5);
                      *(a2 + 4) = *(v11 + 7);
                      v6 = 1;
                      goto LABEL_26;
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

            _ETLDebugPrint("ETLMaverickGetResetPropertiesParseResponse", "Received response has only %u bytes, need %u bytes\n");
          }

          else
          {
LABEL_28:
            free(v6);
          }
        }

        else
        {
          _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
        }
      }
    }

    v6 = 0;
    goto LABEL_26;
  }

  _ETLDebugPrint("ETLMaverickGetResetProperties", "transport cannot be NULL\n", a3);
  return 0;
}

uint64_t ETLMaverickQDSSEnable(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    _ETLDebugPrint("ETLMaverickQDSSEnable", "transport cannot be NULL\n", a3);
    return 1;
  }

  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_33;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
LABEL_33:
    HDLCFrameFree();
    HDLCFrameFree();
    return 0;
  }

  v23 = 16865867;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_33;
  }

  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_33;
  }

  v6 = malloc((2 * DWORD2(v18) + 32));
  if (!v6)
  {
    goto LABEL_33;
  }

  v7 = v6;
  v8 = HDLCFrameEncode();
  if (!v8)
  {
    goto LABEL_35;
  }

  v9 = v8;
  v23 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v7, v8);
  }

  if (!*a1)
  {
LABEL_35:
    free(v7);
    goto LABEL_33;
  }

  v10 = (*a1)(a1, v7, v9, &v23, 1, a3, 0);
  v11 = v23;
  free(v7);
  if (!v10 || v11 != v9)
  {
    goto LABEL_33;
  }

  LOBYTE(v23) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  if (!ETLFindMatchingResponseUsingBuffer(a1, &v15, &_ETLResponseRingBuffer, &v23, a3))
  {
    goto LABEL_33;
  }

  if (v23 != 75)
  {
    goto LABEL_33;
  }

  v23 = 0;
  v22 = -21846;
  v21 = -21846;
  if (!ETLSubsysParseHeader(&v15, &v22, &v21, &v23))
  {
    goto LABEL_33;
  }

  if (v22 != 90)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_33;
  }

  if (v21 != 257)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_33;
  }

  HDLCFrameFree();
  HDLCFrameFree();
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  if (!HDLCFrameCreateUplink() || !ETLMaverickQDSSBuildCommand(&v18, a2, 1) || !ETLSendCommand(a1, &v18, a3) || !ETLSubsysFindMatchingResponse(a1, &v15, a3))
  {
    goto LABEL_33;
  }

  v12 = ETLMaverickQDSSParseResponse(v15, DWORD2(v15));
  HDLCFrameFree();
  HDLCFrameFree();
  if (!v12)
  {
    return 0;
  }

  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  if (HDLCFrameCreateUplink() && ETLMaverickQDSSBuildCommand(&v18, a2, 2) && ETLSendCommand(a1, &v18, a3) && ETLSubsysFindMatchingResponse(a1, &v15, a3))
  {
    v13 = ETLMaverickQDSSParseResponse(v15, DWORD2(v15));
  }

  else
  {
    v13 = 0;
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return v13;
}

uint64_t ETLMaverickQDSSBuildCommand(uint64_t a1, uint64_t a2, uint64_t a3)
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

  if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedChar();
}

uint64_t ETLMaverickQDSSParseResponse(unsigned int *a1, unsigned int a2)
{
  if (a2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a2, 4uLL);
    return 0;
  }

  else
  {
    v2 = *a1;
    if (*a1 == 75)
    {
      if (BYTE1(v2) == 18)
      {
        v3 = HIWORD(v2);
        if (v3 == 548)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v3, 548);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v2), 18);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", *a1, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickSetFlags(void *a1, int a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  if (a1)
  {
    *a4 = 0;
    _ETLDebugPrint("ETLMaverickSetFlags", "Setting enabled to 0x%x\n", a2);
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
        goto LABEL_24;
      }

      v25 = 7994699;
      if ((HDLCFrameInject() & 1) == 0)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v16);
        goto LABEL_24;
      }

      if (HDLCFrameGetFreeSpace() <= 1)
      {
        _ETLDebugPrint("ETLMaverickCreateSetFlagsCommand", "Not enough room, need %zu, have %u\n");
        goto LABEL_24;
      }

      if (HDLCFrameInjectUnsignedInt())
      {
        v9 = malloc((2 * DWORD2(v20) + 32));
        if (!v9)
        {
LABEL_25:
          HDLCFrameFree();
          HDLCFrameFree();
          return v9;
        }

        v10 = HDLCFrameEncode();
        if (!v10)
        {
          goto LABEL_27;
        }

        v11 = v10;
        v25 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v9, v10);
        }

        if (!*a1)
        {
LABEL_27:
          free(v9);
          goto LABEL_24;
        }

        v12 = (*a1)(a1, v9, v11, &v25, 1, a5, 0);
        v13 = v25;
        free(v9);
        v9 = 0;
        if (!v12 || v13 != v11)
        {
          goto LABEL_25;
        }

        if (!ETLSubsysFindMatchingResponse(a1, v18, a5))
        {
          goto LABEL_24;
        }

        v25 = 0;
        v24 = -21846;
        v23 = -21846;
        if (ETLSubsysParseHeader(v18, &v24, &v23, &v25))
        {
          if (v24 == 253)
          {
            if (v23 == 121)
            {
              *a4 = 0;
              if (DWORD2(v18[0]) - v25 > 7)
              {
                v14 = (*&v18[0] + v25);
                *a3 = *v14;
                LODWORD(v14) = v14[1];
                *a4 = v14;
                _ETLDebugPrint("ETLMaverickParseSetFlagsResponse", "Received response w/ flag [%u] and version [%u]\n", *a3, v14);
                v9 = 1;
                goto LABEL_25;
              }

              _ETLDebugPrint("ETLMaverickParseSetFlagsResponse", "Received response has only %u bytes, need %u bytes\n");
              goto LABEL_24;
            }

            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
          }
        }

        _ETLDebugPrint("ETLMaverickParseSetFlagsResponse", "Failed to parse BSP response header\n", v16, v17);
      }
    }

LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  _ETLDebugPrint("ETLMaverickSetFlags", "transport cannot be NULL\n", a3, a4, a5);
  return 0;
}

uint64_t ETLMaverickParseCSNResponse(unsigned int *a1, _DWORD *a2, _BYTE *a3, int a4)
{
  *a2 = 0;
  *a3 = 0;
  v4 = a1[2];
  v5 = v4 - 4;
  if (v4 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a1[2], 4uLL);
    return 0;
  }

  else
  {
    v6 = **a1;
    if (v6 == 75)
    {
      if (BYTE1(v6) == 253)
      {
        v7 = HIWORD(v6);
        if (v7 == a4)
        {
          if (v5 <= 0x11)
          {
            _ETLDebugPrint("ETLMaverickParseCSNResponse", "Received response has only %u bytes, need %u\n", v5, 18);
            return 0;
          }

          else
          {
            v8 = *(*a1 + 4);
            *a3 = v8;
            switch(v8)
            {
              case 3:
                result = 1;
                *a2 = 1;
                break;
              case 2:
                return 1;
              case 1:
                *a2 = 2;
                return 1;
              default:
                return 0;
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v7, a4);
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

  return result;
}

uint64_t ETLMaverickGetCardType(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickGetCardType", "Failed to create command frame\n", a3, a4);
LABEL_20:
    v17 = 0;
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v7, v8);
    goto LABEL_20;
  }

  v34 = 5504331;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v9, v10);
    goto LABEL_20;
  }

  v28 = -86;
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_20;
  }

  v11 = malloc((2 * DWORD2(v31) + 32));
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v11;
  v13 = HDLCFrameEncode();
  if (!v13)
  {
    goto LABEL_43;
  }

  v14 = v13;
  v34 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v12, v13);
  }

  if (!*a1)
  {
LABEL_43:
    free(v12);
    goto LABEL_20;
  }

  v15 = (*a1)(a1, v12, v14, &v34, 1, a4, 0);
  v16 = v34;
  free(v12);
  v17 = 0;
  if (v15 && v16 == v14)
  {
    LOBYTE(v34) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v17 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v29, &_ETLResponseRingBuffer, &v34, a4) && v34 == 75)
    {
      v17 = ETLMaverickParseCSNResponse(v29, a2, &v28, 83);
      if (v28 == 2)
      {
        while (1)
        {
          while (1)
          {
            do
            {
              do
              {
                v19 = v17;
                usleep(0x186A0u);
                LOBYTE(v17) = 0;
              }

              while ((v19 & 1) == 0);
              v20 = malloc((2 * DWORD2(v31) + 32));
              LOBYTE(v17) = 0;
            }

            while (!v20);
            v21 = v20;
            v22 = HDLCFrameEncode();
            if (v22)
            {
              break;
            }

LABEL_22:
            free(v21);
            LOBYTE(v17) = 0;
          }

          v23 = v22;
          v34 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            (off_2A18A5818)();
            v24 = *a1;
            if (!*a1)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v24 = *a1;
            if (!*a1)
            {
              goto LABEL_22;
            }
          }

          v25 = v24(a1, v21, v23, &v34, 1, a4, 0);
          v26 = v34;
          free(v21);
          LOBYTE(v17) = 0;
          if (v25)
          {
            v27 = v26 == v23;
          }

          else
          {
            v27 = 0;
          }

          if (v27)
          {
            LOBYTE(v34) = 75;
            if (!_ETLResponseRingBuffer)
            {
              TelephonyUtilRingBufferInitialize();
            }

            LOBYTE(v17) = 0;
            if (ETLFindMatchingResponseUsingBuffer(a1, v29, &_ETLResponseRingBuffer, &v34, a4) && v34 == 75)
            {
              v17 = ETLMaverickParseCSNResponse(v29, a2, &v28, 83);
              if (v28 != 2)
              {
                break;
              }
            }
          }
        }
      }
    }
  }

LABEL_21:
  HDLCFrameFree();
  HDLCFrameFree();
  return v17;
}

uint64_t ETLCDMAMakeMEID(_DWORD *a1, int *a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    v4 = *a2;
    *(a1 + 3) = *(a2 + 3);
    *a1 = v4;
  }

  return v3;
}

uint64_t ETLCDMAMakeMEIDFromString(_BYTE *a1, char *__s)
{
  v3 = 0;
  if (a1 && __s && (v3 = strlen(__s), v3 == 14))
  {
    v4 = TelephonyUtilDecodeHexWithDefault();
    v5 = TelephonyUtilDecodeHexWithDefault();
    if (((v5 | (16 * v4)) & 0x80000000) == 0)
    {
      *a1 = v5 | (16 * v4);
      v6 = TelephonyUtilDecodeHexWithDefault();
      v7 = TelephonyUtilDecodeHexWithDefault();
      if (((v7 | (16 * v6)) & 0x80000000) == 0)
      {
        a1[1] = v7 | (16 * v6);
        v8 = TelephonyUtilDecodeHexWithDefault();
        v9 = TelephonyUtilDecodeHexWithDefault();
        if (((v9 | (16 * v8)) & 0x80000000) == 0)
        {
          a1[2] = v9 | (16 * v8);
          v10 = TelephonyUtilDecodeHexWithDefault();
          v11 = TelephonyUtilDecodeHexWithDefault();
          if (((v11 | (16 * v10)) & 0x80000000) == 0)
          {
            a1[3] = v11 | (16 * v10);
            v12 = TelephonyUtilDecodeHexWithDefault();
            v13 = TelephonyUtilDecodeHexWithDefault();
            if (((v13 | (16 * v12)) & 0x80000000) == 0)
            {
              a1[4] = v13 | (16 * v12);
              v14 = TelephonyUtilDecodeHexWithDefault();
              v15 = TelephonyUtilDecodeHexWithDefault();
              if (((v15 | (16 * v14)) & 0x80000000) == 0)
              {
                a1[5] = v15 | (16 * v14);
                v16 = TelephonyUtilDecodeHexWithDefault();
                v17 = TelephonyUtilDecodeHexWithDefault() | (16 * v16);
                if ((v17 & 0x80000000) == 0)
                {
                  a1[6] = v17;
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    _ETLDebugPrint("ETLCDMAMakeMEIDFromString", "MEID length is %zu, expected %u\n", v3, 14);
  }

  return 0;
}

uint64_t ETLCDMAMakeStringFromMEID(char *a1, unsigned int a2, unsigned __int8 *a3)
{
  if (a1)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && a2 > 0xE;
  if (v5 == 1)
  {
    TelephonyUtilEncodeHex();
    *a1 = -86;
    a1[1] = -86;
    TelephonyUtilEncodeHex();
    a1[2] = -86;
    a1[3] = -86;
    TelephonyUtilEncodeHex();
    a1[4] = -86;
    a1[5] = -86;
    TelephonyUtilEncodeHex();
    a1[6] = -86;
    a1[7] = -86;
    TelephonyUtilEncodeHex();
    a1[8] = -86;
    a1[9] = -86;
    TelephonyUtilEncodeHex();
    a1[10] = -86;
    a1[11] = -86;
    TelephonyUtilEncodeHex();
    a1[12] = -86;
    a1[13] = -86;
    a1[14] = 0;
  }

  else
  {
    _ETLDebugPrint("ETLCDMAMakeStringFromMEID", "buffer capacity is %u, need %u\n", a2, 15);
  }

  return v5;
}

uint64_t ETLCDMAMakeStringFromMEIDRegular(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && a2 > 0xE;
  if (v5 == 1)
  {
    TelephonyUtilBinToHex();
  }

  return v5;
}

uint64_t ETLCDMAGetMEID(uint64_t (**a1)(void, void *, uint64_t, _OWORD *, uint64_t, uint64_t, void), _DWORD *a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = -1431655766;
  v6 = -1431655766;
  memset(v7, 0, sizeof(v7));
  result = ETLNVRead(a1, 1943, v7, 0x80u, &v6, &v5, a3);
  if (result)
  {
    if (v5 != 5 && v5 || v6 < 7)
    {
      return 0;
    }

    else
    {
      *a2 = v7[0];
      *(a2 + 3) = *(v7 + 3);
      return 1;
    }
  }

  return result;
}

BOOL ETLCDMAIsValidMEID(unsigned __int8 *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  memset(__s2, 170, 15);
  ETLCDMAMakeStringFromMEID(__s2, 0xFu, a1);
  return strncmp(kDefaultMEID, __s2, 0xEuLL) != 0;
}

uint64_t APPLIB_API_MAV_SendFuseCommand(void *a1, uint64_t a2, __int16 a3, __int16 a4, int *a5, int a6)
{
  if (a6 != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v6;
  v12 = v7;
  v9[0] = a4;
  v9[1] = a3;
  v10 = *a5;
  return APPLIB_API_SUBSYS_SendCommand(a1, a2, 253, 11, v9, 8);
}

uint64_t APPLIB_API_MAV_ParseFuseResponse(uint64_t a1, unsigned int a2, _WORD *a3, _DWORD *a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  result = 0;
  if (*a1 == 75 && *(a1 + 1) == 253)
  {
    if (*(a1 + 2) != 11)
    {
      return 0;
    }

    *a3 = *(a1 + 4);
    *a4 = *(a1 + 6);
    return 1;
  }

  return result;
}

uint64_t APPLIB_API_MAV_ParseAPWakeResponse(uint64_t a1, unsigned int a2, uint64_t a3, _WORD *a4)
{
  *a4 = -1;
  if (a2 < 4)
  {
    return 0;
  }

  result = 0;
  if (*a1 == 75 && *(a1 + 1) == 253)
  {
    if (*(a1 + 2) != 13)
    {
      return 0;
    }

    *a4 = *(a1 + 6);
    return 1;
  }

  return result;
}

uint64_t APPLIB_DIAG_CreateFile(char *a1, int a2, const void *a3, int a4)
{
  v46 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 7 <= a2)
  {
    bzero(a1, a2);
    *a1 = 523851;
    memcpy(a1 + 4, a3, a4);
    v9 = crc_16_l_table[a1[4] ^ 0xA4];
    v10 = crc_16_l_table[(a1[5] ^ v9) ^ 4];
    v11 = crc_16_l_table[(a1[6] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[7] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[10] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[11] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[12] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[13] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a1[14] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[15] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[16] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[17] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[18] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[19] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[20] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[21] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[22] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[23] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[24] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[25] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[26] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[27] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[28] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[29] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[30] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[31] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[32] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[33] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[34] ^ v38 ^ HIBYTE(v37))];
    *(a1 + 18) = crc_16_l_table[(a1[35] ^ v39 ^ HIBYTE(v38))] ^ ~(v39 >> 8);
    if (a2 >= 76)
    {
      bzero(__src, 0x800uLL);
      v40 = 0;
      v41 = 0;
      do
      {
        while (1)
        {
          v42 = a1[v40];
          v43 = v41;
          v44 = v41 + 1;
          if ((v42 - 125) > 1)
          {
            break;
          }

          v41 += 2;
          __src[v44] = v42 & 0x5F;
          __src[v43] = 125;
          if (++v40 == 38)
          {
            goto LABEL_10;
          }
        }

        ++v41;
        __src[v43] = v42;
        ++v40;
      }

      while (v40 != 38);
LABEL_10:
      memcpy(a1, __src, v41);
      result = (v41 + 1);
      a1[v41] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GetFileInfo(char *a1, int a2, const void *a3, int a4)
{
  v46 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 7 <= a2)
  {
    bzero(a1, a2);
    *a1 = 785995;
    memcpy(a1 + 4, a3, a4);
    v9 = crc_16_l_table[a1[4] ^ 4];
    v10 = crc_16_l_table[a1[5] ^ 0xAD ^ v9];
    v11 = crc_16_l_table[(a1[6] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[7] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[10] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[11] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[12] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[13] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a1[14] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[15] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[16] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[17] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[18] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[19] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[20] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[21] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[22] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[23] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[24] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[25] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[26] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[27] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[28] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[29] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[30] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[31] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[32] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[33] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[34] ^ v38 ^ HIBYTE(v37))];
    *(a1 + 18) = crc_16_l_table[(a1[35] ^ v39 ^ HIBYTE(v38))] ^ ~(v39 >> 8);
    if (a2 >= 76)
    {
      bzero(__src, 0x800uLL);
      v40 = 0;
      v41 = 0;
      do
      {
        while (1)
        {
          v42 = a1[v40];
          v43 = v41;
          v44 = v41 + 1;
          if ((v42 - 125) > 1)
          {
            break;
          }

          v41 += 2;
          __src[v44] = v42 & 0x5F;
          __src[v43] = 125;
          if (++v40 == 38)
          {
            goto LABEL_10;
          }
        }

        ++v41;
        __src[v43] = v42;
        ++v40;
      }

      while (v40 != 38);
LABEL_10:
      memcpy(a1, __src, v41);
      result = (v41 + 1);
      a1[v41] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_DeleteFile(char *a1, int a2, const void *a3, int a4)
{
  v46 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 7 <= a2)
  {
    bzero(a1, a2);
    *a1 = 589387;
    memcpy(a1 + 4, a3, a4);
    v9 = crc_16_l_table[a1[4] ^ 0x6CLL];
    v10 = crc_16_l_table[(a1[5] ^ v9) ^ 0x87];
    v11 = crc_16_l_table[(a1[6] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[7] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[10] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[11] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[12] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[13] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a1[14] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[15] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[16] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[17] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[18] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[19] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[20] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[21] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[22] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[23] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[24] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[25] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[26] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[27] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[28] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[29] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[30] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[31] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[32] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[33] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[34] ^ v38 ^ HIBYTE(v37))];
    *(a1 + 18) = crc_16_l_table[(a1[35] ^ v39 ^ HIBYTE(v38))] ^ ~(v39 >> 8);
    if (a2 >= 76)
    {
      bzero(__src, 0x800uLL);
      v40 = 0;
      v41 = 0;
      do
      {
        while (1)
        {
          v42 = a1[v40];
          v43 = v41;
          v44 = v41 + 1;
          if ((v42 - 125) > 1)
          {
            break;
          }

          v41 += 2;
          __src[v44] = v42 & 0x5F;
          __src[v43] = 125;
          if (++v40 == 38)
          {
            goto LABEL_10;
          }
        }

        ++v41;
        __src[v43] = v42;
        ++v40;
      }

      while (v40 != 38);
LABEL_10:
      memcpy(a1, __src, v41);
      result = (v41 + 1);
      a1[v41] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_WriteFile(char *a1, int a2, const void *a3, int a4, int a5, _OWORD *a6)
{
  v29 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 135 <= a2)
  {
    bzero(a1, a2);
    *a1 = 720459;
    *(a1 + 1) = a5;
    memcpy(a1 + 8, a3, a4);
    v13 = a6[2];
    v14 = a6[3];
    v15 = a6[1];
    *(a1 + 40) = *a6;
    *(a1 + 88) = v14;
    *(a1 + 72) = v13;
    *(a1 + 56) = v15;
    v16 = a6[6];
    v17 = a6[7];
    v18 = a6[5];
    *(a1 + 104) = a6[4];
    *(a1 + 152) = v17;
    *(a1 + 136) = v16;
    *(a1 + 120) = v18;
    v19 = 1344;
    LOWORD(v20) = -1;
    v21 = a1;
    do
    {
      v22 = *v21++;
      v20 = crc_16_l_table[(v22 ^ v20)] ^ ((v20 & 0xFF00) >> 8);
      v19 -= 8;
    }

    while (v19);
    *(a1 + 84) = ~v20;
    if (a2 >= 340)
    {
      bzero(__src, 0x800uLL);
      v23 = 0;
      v24 = 0;
      do
      {
        while (1)
        {
          v25 = a1[v23];
          v26 = v24;
          v27 = v24 + 1;
          if ((v25 - 125) > 1)
          {
            break;
          }

          v24 += 2;
          __src[v27] = v25 & 0x5F;
          __src[v26] = 125;
          if (++v23 == 170)
          {
            goto LABEL_12;
          }
        }

        ++v24;
        __src[v26] = v25;
        ++v23;
      }

      while (v23 != 170);
LABEL_12:
      memcpy(a1, __src, v24);
      result = (v24 + 1);
      a1[v24] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_ReadFile(char *a1, int a2, const void *a3, int a4, int a5)
{
  v52 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 135 <= a2)
  {
    bzero(a1, a2);
    *a1 = 654923;
    *(a1 + 1) = a5;
    memcpy(a1 + 8, a3, a4);
    v11 = crc_16_l_table[a5 ^ 0xB4];
    v12 = crc_16_l_table[(v11 ^ BYTE1(a5)) ^ 0x9E];
    v13 = crc_16_l_table[(v12 ^ HIBYTE(v11) ^ BYTE2(a5))];
    v14 = crc_16_l_table[(a1[7] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[8] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[9] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[10] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[11] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a1[12] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[13] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[14] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[15] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[16] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[17] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[18] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[19] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[20] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[21] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[22] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[23] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[24] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[25] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[26] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[27] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[28] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[29] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[30] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[31] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[32] ^ v38 ^ HIBYTE(v37))];
    v40 = crc_16_l_table[(a1[33] ^ v39 ^ HIBYTE(v38))];
    v41 = crc_16_l_table[(a1[34] ^ v40 ^ HIBYTE(v39))];
    v42 = crc_16_l_table[(a1[35] ^ v41 ^ HIBYTE(v40))];
    v43 = crc_16_l_table[(a1[36] ^ v42 ^ HIBYTE(v41))];
    v44 = crc_16_l_table[(a1[37] ^ v43 ^ HIBYTE(v42))];
    v45 = crc_16_l_table[(a1[38] ^ v44 ^ HIBYTE(v43))];
    *(a1 + 20) = crc_16_l_table[(a1[39] ^ v45 ^ HIBYTE(v44))] ^ ~(v45 >> 8);
    if (a2 >= 84)
    {
      bzero(__src, 0x800uLL);
      v46 = 0;
      v47 = 0;
      do
      {
        while (1)
        {
          v48 = a1[v46];
          v49 = v47;
          v50 = v47 + 1;
          if ((v48 - 125) > 1)
          {
            break;
          }

          v47 += 2;
          __src[v50] = v48 & 0x5F;
          __src[v49] = 125;
          if (++v46 == 42)
          {
            goto LABEL_10;
          }
        }

        ++v47;
        __src[v49] = v48;
        ++v46;
      }

      while (v46 != 42);
LABEL_10:
      memcpy(a1, __src, v47);
      result = (v47 + 1);
      a1[v47] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_ReadICCID_EFS_File(void *a1, unsigned int a2)
{
  v44 = *MEMORY[0x29EDCA608];
  if (a2 < 512)
  {
    return 0xFFFFFFFFLL;
  }

  memset(v42, 0, 25);
  v3 = a2;
  bzero(a1, a2);
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, v3);
  *a1 = 654923;
  *(a1 + 2) = 778922355;
  *(a1 + 6) = 30836;
  *(a1 + 14) = 116;
  *(a1 + 15) = v42[0];
  *(a1 + 3) = *(v42 + 9);
  v4 = crc_16_l_table[*(a1 + 7) ^ 0x6ELL];
  v5 = crc_16_l_table[*(a1 + 8) ^ 0x6A ^ v4];
  v6 = crc_16_l_table[(*(a1 + 9) ^ v5 ^ HIBYTE(v4))];
  v7 = crc_16_l_table[(*(a1 + 10) ^ v6 ^ HIBYTE(v5))];
  v8 = crc_16_l_table[(*(a1 + 11) ^ v7 ^ HIBYTE(v6))];
  v9 = crc_16_l_table[(v8 ^ HIBYTE(v7)) ^ 0x74];
  v10 = crc_16_l_table[(v9 ^ HIBYTE(v8)) ^ 0x78];
  v11 = crc_16_l_table[(v10 ^ HIBYTE(v9)) ^ 0x74];
  v12 = crc_16_l_table[(*(a1 + 15) ^ v11 ^ HIBYTE(v10))];
  v13 = crc_16_l_table[(*(a1 + 16) ^ v12 ^ HIBYTE(v11))];
  v14 = crc_16_l_table[(*(a1 + 17) ^ v13 ^ HIBYTE(v12))];
  v15 = crc_16_l_table[(*(a1 + 18) ^ v14 ^ HIBYTE(v13))];
  v16 = crc_16_l_table[(*(a1 + 19) ^ v15 ^ HIBYTE(v14))];
  v17 = crc_16_l_table[(*(a1 + 20) ^ v16 ^ HIBYTE(v15))];
  v18 = crc_16_l_table[(*(a1 + 21) ^ v17 ^ HIBYTE(v16))];
  v19 = crc_16_l_table[(*(a1 + 22) ^ v18 ^ HIBYTE(v17))];
  v20 = crc_16_l_table[(*(a1 + 23) ^ v19 ^ HIBYTE(v18))];
  v21 = crc_16_l_table[(*(a1 + 24) ^ v20 ^ HIBYTE(v19))];
  v22 = crc_16_l_table[(*(a1 + 25) ^ v21 ^ HIBYTE(v20))];
  v23 = crc_16_l_table[(*(a1 + 26) ^ v22 ^ HIBYTE(v21))];
  v24 = crc_16_l_table[(*(a1 + 27) ^ v23 ^ HIBYTE(v22))];
  v25 = crc_16_l_table[(*(a1 + 28) ^ v24 ^ HIBYTE(v23))];
  v26 = crc_16_l_table[(*(a1 + 29) ^ v25 ^ HIBYTE(v24))];
  v27 = crc_16_l_table[(*(a1 + 30) ^ v26 ^ HIBYTE(v25))];
  v28 = crc_16_l_table[(*(a1 + 31) ^ v27 ^ HIBYTE(v26))];
  v29 = crc_16_l_table[(*(a1 + 32) ^ v28 ^ HIBYTE(v27))];
  v30 = crc_16_l_table[(*(a1 + 33) ^ v29 ^ HIBYTE(v28))];
  v31 = crc_16_l_table[(*(a1 + 34) ^ v30 ^ HIBYTE(v29))];
  v32 = crc_16_l_table[(*(a1 + 35) ^ v31 ^ HIBYTE(v30))];
  v33 = crc_16_l_table[(*(a1 + 36) ^ v32 ^ HIBYTE(v31))];
  v34 = crc_16_l_table[(*(a1 + 37) ^ v33 ^ HIBYTE(v32))];
  v35 = crc_16_l_table[(*(a1 + 38) ^ v34 ^ HIBYTE(v33))];
  *(a1 + 20) = crc_16_l_table[(*(a1 + 39) ^ v35 ^ HIBYTE(v34))] ^ ~(v35 >> 8);
  bzero(__src, 0x800uLL);
  v36 = 0;
  v37 = 0;
  do
  {
    while (1)
    {
      v38 = *(a1 + v36);
      v39 = v37;
      v40 = v37 + 1;
      if ((v38 - 125) > 1)
      {
        break;
      }

      v37 += 2;
      __src[v40] = v38 & 0x5F;
      __src[v39] = 125;
      if (++v36 == 42)
      {
        goto LABEL_7;
      }
    }

    ++v37;
    __src[v39] = v38;
    ++v36;
  }

  while (v36 != 42);
LABEL_7:
  memcpy(a1, __src, v37);
  result = (v37 + 1);
  *(a1 + v37) = 126;
  return result;
}

uint64_t ETLMaverickAddSecurityCommandHeader(uint64_t a1, uint64_t a2)
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

uint64_t ETLMaverickParseSecurityResponseHeader(uint64_t a1, int a2, _WORD *a3, _DWORD *a4)
{
  result = ETLMaverickParseBSPResponseHeader(a1, a4, 12);
  if (result)
  {
    v9 = *a4;
    if ((*(a1 + 8) - v9) <= 3)
    {
      _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n");
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

      _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n");
    }

    return 0;
  }

  return result;
}

uint64_t ETLMaverickSecurityCreateCheckCalibrationBackupCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v2 = HDLCFrameGetFreeSpace();
    if (v2 <= 1)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 2, v2);
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

uint64_t ETLMaverickSecurityParseCheckCalibrationBackupResponse(int **a1, _WORD *a2)
{
  v2 = *(a1 + 2);
  v3 = v2 - 4;
  if (v2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v4 = *a1;
    v5 = **a1;
    if (v5 == 75)
    {
      if (BYTE1(v5) == 253)
      {
        v6 = HIWORD(v5);
        if (v6 == 12)
        {
          if (v3 <= 3)
          {
            _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", 4, v3);
            return 0;
          }

          else
          {
            v7 = *(v4 + 2);
            if (v7 == 13)
            {
              *a2 = *(v4 + 3);
              return 1;
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", v7, 13);
              return 0;
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v6, 12);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v5), 253);
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

uint64_t ETLMaverickCreateNVBackupCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v2 = HDLCFrameGetFreeSpace();
    if (v2 <= 1)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 2, v2);
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

uint64_t ETLMaverickParseNVBackupResponse(int **a1)
{
  v1 = *(a1 + 2);
  v2 = v1 - 4;
  if (v1 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v3 = *a1;
    v4 = **a1;
    if (v4 == 75)
    {
      if (BYTE1(v4) == 253)
      {
        v5 = HIWORD(v4);
        if (v5 == 12)
        {
          if (v2 <= 3)
          {
            _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", 4, v2);
            return 0;
          }

          else
          {
            v6 = *(v3 + 2);
            if (v6 == 7)
            {
              if (*(v3 + 3))
              {
                _ETLDebugPrint("ETLMaverickParseNVBackupResponse", "Status was %u\n", *(v3 + 3));
                return 0;
              }

              else
              {
                return 1;
              }
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", v6, 7);
              return 0;
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v5, 12);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v4), 253);
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

uint64_t ETLMaverickCreateNVRestoreCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v2 = HDLCFrameGetFreeSpace();
    if (v2 <= 1)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 2, v2);
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

uint64_t ETLMaverickParseNVRestoreResponse(int **a1)
{
  v1 = *(a1 + 2);
  v2 = v1 - 4;
  if (v1 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v3 = *a1;
    v4 = **a1;
    if (v4 == 75)
    {
      if (BYTE1(v4) == 253)
      {
        v5 = HIWORD(v4);
        if (v5 == 12)
        {
          if (v2 <= 3)
          {
            _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", 4, v2);
            return 0;
          }

          else
          {
            v6 = *(v3 + 2);
            if (v6 == 8)
            {
              if (*(v3 + 3))
              {
                _ETLDebugPrint("ETLMaverickExpectStatus", "Status was %u\n", *(v3 + 3));
                return 0;
              }

              else
              {
                return 1;
              }
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", v6, 8);
              return 0;
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v5, 12);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v4), 253);
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

uint64_t ETLMaverickSecurityCreateReadSerialNumberAndChipIDCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v2 = HDLCFrameGetFreeSpace();
    if (v2 <= 1)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 2, v2);
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

uint64_t ETLMaverickSecurityCreateReadSerialNumberAndChipIDCommand64Bit(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v2 = HDLCFrameGetFreeSpace();
    if (v2 <= 1)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 2, v2);
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

uint64_t ETLMaverickSecurityParseReadSerialNumberAndChipIDResponse(int **a1, _DWORD *a2, _DWORD *a3, unsigned int a4, _DWORD *a5)
{
  v5 = *(a1 + 2);
  v6 = v5 - 4;
  if (v5 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  v7 = *a1;
  v8 = **a1;
  if (v8 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
    return 0;
  }

  if (BYTE1(v8) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v8), 253);
    return 0;
  }

  v9 = HIWORD(v8);
  if (v9 != 12)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v9, 12);
    return 0;
  }

  if (v6 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", 4, v6);
    return 0;
  }

  if (*(v7 + 2) != 3)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", *(v7 + 2), 3);
    return 0;
  }

  if (*(v7 + 3))
  {
    _ETLDebugPrint("ETLMaverickExpectStatus", "Status was %u\n", *(v7 + 3));
    return 0;
  }

  v11 = v5 - 8;
  if (v11 <= 7)
  {
    _ETLDebugPrint("ETLMaverickSecurityParseReadSerialNumberAndChipIDResponse", "Only have %u bytes, need %u\n", v11, 8);
  }

  else if (a4 >= 4)
  {
    *a2 = v7[2];
    *a3 = 32;
    *a5 = v7[3];
    return 1;
  }

  return 0;
}

uint64_t ETLMaverickSecurityParseReadSerialNumberAndChipIDResponse64Bit(int **a1, void *a2, _DWORD *a3, unsigned int a4, _DWORD *a5)
{
  v5 = *(a1 + 2);
  v6 = v5 - 4;
  if (v5 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  v7 = *a1;
  v8 = **a1;
  if (v8 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
    return 0;
  }

  if (BYTE1(v8) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v8), 253);
    return 0;
  }

  v9 = HIWORD(v8);
  if (v9 != 12)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v9, 12);
    return 0;
  }

  if (v6 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", 4, v6);
    return 0;
  }

  if (*(v7 + 2) != 37)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", *(v7 + 2), 37);
    return 0;
  }

  if (*(v7 + 3))
  {
    _ETLDebugPrint("ETLMaverickExpectStatus", "Status was %u\n", *(v7 + 3));
    return 0;
  }

  v11 = v5 - 8;
  if (v11 <= 0xB)
  {
    _ETLDebugPrint("ETLMaverickSecurityParseReadSerialNumberAndChipIDResponse64Bit", "Only have %u bytes, need %u\n", v11, 12);
  }

  else if (a4 >= 8)
  {
    *a2 = *(v7 + 1);
    *a3 = 64;
    *a5 = v7[4];
    return 1;
  }

  return 0;
}

uint64_t ETLMaverickSecurityCreateReadNonceCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v2 = HDLCFrameGetFreeSpace();
    if (v2 <= 1)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 2, v2);
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

uint64_t ETLMaverickSecurityParseReadNonceResponse(int **a1, void *a2, _DWORD *a3, uint64_t a4)
{
  v4 = *(a1 + 2);
  if (v4 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4);
    return 0;
  }

  v5 = *a1;
  v6 = **a1;
  if (v6 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4);
    return 0;
  }

  if (BYTE1(v6) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4);
    return 0;
  }

  if (HIWORD(v6) != 12)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4);
    return 0;
  }

  if (v4 - 4 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", a3, a4);
    return 0;
  }

  if (v5[2] != 2)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", a3, a4);
    return 0;
  }

  if (v5[3])
  {
    _ETLDebugPrint("ETLMaverickExpectStatus", "Status was %u\n", a3, a4);
    return 0;
  }

  v10 = v4 - 8;
  v11 = a4;
  _ETLDebugPrint("ETLMaverickSecurityParseReadNonceResponse", "Nonce is %u bytes\n", v4 - 8);
  if (v10 > v11)
  {
    return 0;
  }

  memcpy(a2, v5 + 4, v10);
  *a3 = 8 * v10;
  return 1;
}

void *ETLMaverickNVBackup(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickNVBackup", "Failed to create uplink frame\n", v11, v12, v13, v14, v15);
    return 0;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  v19 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    return 0;
  }

  result = HDLCFrameInjectUnsignedShort();
  if (result)
  {
    result = malloc((2 * DWORD2(v16) + 32));
    if (result)
    {
      v5 = result;
      v6 = HDLCFrameEncode();
      if (!v6)
      {
        goto LABEL_24;
      }

      v7 = v6;
      v19 = -1431655766;
      if ((_ETLDebugFlags & 2) != 0)
      {
        off_2A18A5818(&str_3, 0, v5, v6);
      }

      if (*a1)
      {
        v8 = (*a1)(a1, v5, v7, &v19, 1, a2, 0);
        v9 = v19;
        free(v5);
        result = 0;
        if (v8 && v9 == v7)
        {
          LOBYTE(v19) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v10 = ETLFindMatchingResponseUsingBuffer(a1, &v13, &_ETLResponseRingBuffer, &v19, a2);
          result = 0;
          if (v10 && v19 == 75)
          {
            return ETLMaverickParseNVBackupResponse(&v13);
          }
        }
      }

      else
      {
LABEL_24:
        free(v5);
        return 0;
      }
    }
  }

  return result;
}

void *ETLMaverickNVRestore(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickNVRestore", "Failed to create uplink frame\n", v11, v12, v13, v14, v15);
    return 0;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  v19 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    return 0;
  }

  result = HDLCFrameInjectUnsignedShort();
  if (result)
  {
    result = malloc((2 * DWORD2(v16) + 32));
    if (result)
    {
      v5 = result;
      v6 = HDLCFrameEncode();
      if (!v6)
      {
        goto LABEL_24;
      }

      v7 = v6;
      v19 = -1431655766;
      if ((_ETLDebugFlags & 2) != 0)
      {
        off_2A18A5818(&str_3, 0, v5, v6);
      }

      if (*a1)
      {
        v8 = (*a1)(a1, v5, v7, &v19, 1, a2, 0);
        v9 = v19;
        free(v5);
        result = 0;
        if (v8 && v9 == v7)
        {
          LOBYTE(v19) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v10 = ETLFindMatchingResponseUsingBuffer(a1, &v13, &_ETLResponseRingBuffer, &v19, a2);
          result = 0;
          if (v10 && v19 == 75)
          {
            return ETLMaverickParseNVRestoreResponse(&v13);
          }
        }
      }

      else
      {
LABEL_24:
        free(v5);
        return 0;
      }
    }
  }

  return result;
}

void *ETLMaverickReadSerialNumberAndChipID(void *a1, _DWORD *a2, _DWORD *a3, unsigned int a4, _DWORD *a5, uint64_t a6)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_21;
  }

  v23 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_21;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_21:
    SerialNumberAndChipIDResponse = 0;
    goto LABEL_22;
  }

  SerialNumberAndChipIDResponse = malloc((2 * DWORD2(v20) + 32));
  if (!SerialNumberAndChipIDResponse)
  {
    goto LABEL_22;
  }

  v13 = HDLCFrameEncode();
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  v23 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, SerialNumberAndChipIDResponse, v13);
  }

  if (!*a1)
  {
LABEL_23:
    free(SerialNumberAndChipIDResponse);
    goto LABEL_21;
  }

  v15 = (*a1)(a1, SerialNumberAndChipIDResponse, v14, &v23, 1, a6, 0);
  v16 = v23;
  free(SerialNumberAndChipIDResponse);
  SerialNumberAndChipIDResponse = 0;
  if (v15 && v16 == v14)
  {
    LOBYTE(v23) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    SerialNumberAndChipIDResponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v18, &_ETLResponseRingBuffer, &v23, a6) && v23 == 75)
    {
      SerialNumberAndChipIDResponse = ETLMaverickSecurityParseReadSerialNumberAndChipIDResponse(v18, a2, a3, a4, a5);
    }
  }

LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return SerialNumberAndChipIDResponse;
}

void *ETLMaverickReadSerialNumberAndChipID64Bit(void *a1, void *a2, _DWORD *a3, unsigned int a4, _DWORD *a5, uint64_t a6)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_21;
  }

  v23 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_21;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_21:
    SerialNumberAndChipIDResponse64Bit = 0;
    goto LABEL_22;
  }

  SerialNumberAndChipIDResponse64Bit = malloc((2 * DWORD2(v20) + 32));
  if (!SerialNumberAndChipIDResponse64Bit)
  {
    goto LABEL_22;
  }

  v13 = HDLCFrameEncode();
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  v23 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, SerialNumberAndChipIDResponse64Bit, v13);
  }

  if (!*a1)
  {
LABEL_23:
    free(SerialNumberAndChipIDResponse64Bit);
    goto LABEL_21;
  }

  v15 = (*a1)(a1, SerialNumberAndChipIDResponse64Bit, v14, &v23, 1, a6, 0);
  v16 = v23;
  free(SerialNumberAndChipIDResponse64Bit);
  SerialNumberAndChipIDResponse64Bit = 0;
  if (v15 && v16 == v14)
  {
    LOBYTE(v23) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    SerialNumberAndChipIDResponse64Bit = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v18, &_ETLResponseRingBuffer, &v23, a6) && v23 == 75)
    {
      SerialNumberAndChipIDResponse64Bit = ETLMaverickSecurityParseReadSerialNumberAndChipIDResponse64Bit(v18, a2, a3, a4, a5);
    }
  }

LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return SerialNumberAndChipIDResponse64Bit;
}

uint64_t ETLMaverickReadPublicKeyHash(void *a1, void *a2, unsigned int a3, _DWORD *a4, uint64_t a5)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_25;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_25;
  }

  v25 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_25;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_25;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  v10 = malloc((2 * DWORD2(v22) + 32));
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = HDLCFrameEncode();
  if (!v11)
  {
    goto LABEL_27;
  }

  v12 = v11;
  v25 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v10, v11);
  }

  if (!*a1)
  {
LABEL_27:
    free(v10);
    goto LABEL_25;
  }

  v13 = (*a1)(a1, v10, v12, &v25, 1, a5, 0);
  v14 = v25;
  free(v10);
  v10 = 0;
  if (v13 && v14 == v12)
  {
    LOBYTE(v25) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v10 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v20, &_ETLResponseRingBuffer, &v25, a5) && v25 == 75)
    {
      v25 = 0;
      if (ETLMaverickParseBSPResponseHeader(v20, &v25, 12))
      {
        if (DWORD2(v20[0]) - v25 <= 3)
        {
          _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n");
        }

        else if (*(*&v20[0] + v25) == 16)
        {
          v15 = *(*&v20[0] + v25 + 2);
          v16 = v25 + 4;
          v25 += 4;
          if (v15)
          {
            _ETLDebugPrint("ETLMaverickExpectStatus", "Status was %u\n");
          }

          else if (DWORD2(v20[0]) - v16 >= 4)
          {
            v18 = (*&v20[0] + v16);
            v19 = *v18;
            *a4 = v19;
            if (v19 - 1 < a3)
            {
              memcpy(a2, v18 + 1, v19);
              v10 = 1;
              goto LABEL_26;
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n");
        }
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  HDLCFrameFree();
  HDLCFrameFree();
  return v10;
}

uint64_t ETLMaverickGetFusingStatus(void *a1, _DWORD *a2, uint64_t a3)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_25;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_25;
  }

  v20 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_25;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_25;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_25:
    v6 = 0;
    goto LABEL_26;
  }

  v6 = malloc((2 * DWORD2(v17) + 32));
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = HDLCFrameEncode();
  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = v7;
  v20 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v6, v7);
  }

  if (!*a1)
  {
LABEL_27:
    free(v6);
    goto LABEL_25;
  }

  v9 = (*a1)(a1, v6, v8, &v20, 1, a3, 0);
  v10 = v20;
  free(v6);
  v6 = 0;
  if (v9 && v10 == v8)
  {
    LOBYTE(v20) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v6 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v15, &_ETLResponseRingBuffer, &v20, a3) && v20 == 75)
    {
      v20 = 0;
      if (ETLMaverickParseBSPResponseHeader(v15, &v20, 12))
      {
        if (DWORD2(v15[0]) - v20 <= 3)
        {
          _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n");
        }

        else if (*(*&v15[0] + v20) == 17)
        {
          v11 = *(*&v15[0] + v20 + 2);
          v12 = v20 + 4;
          v20 += 4;
          if (v11)
          {
            _ETLDebugPrint("ETLMaverickExpectStatus", "Status was %u\n");
          }

          else if (DWORD2(v15[0]) - v12 >= 4)
          {
            v14 = (*&v15[0] + v12);
            if (*v14 == 4)
            {
              *a2 = v14[1];
              v6 = 1;
              goto LABEL_26;
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n");
        }
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  HDLCFrameFree();
  HDLCFrameFree();
  return v6;
}

void *ETLMaverickReadNonce(void *a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_21;
  }

  v21 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_21;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_21:
    NonceResponse = 0;
    goto LABEL_22;
  }

  NonceResponse = malloc((2 * DWORD2(v18) + 32));
  if (!NonceResponse)
  {
    goto LABEL_22;
  }

  v11 = HDLCFrameEncode();
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = v11;
  v21 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, NonceResponse, v11);
  }

  if (!*a1)
  {
LABEL_23:
    free(NonceResponse);
    goto LABEL_21;
  }

  v13 = (*a1)(a1, NonceResponse, v12, &v21, 1, a5, 0);
  v14 = v21;
  free(NonceResponse);
  NonceResponse = 0;
  if (v13 && v14 == v12)
  {
    LOBYTE(v21) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    NonceResponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v16, &_ETLResponseRingBuffer, &v21, a5) && v21 == 75)
    {
      NonceResponse = ETLMaverickSecurityParseReadNonceResponse(v16, a2, a3, a4);
    }
  }

LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return NonceResponse;
}

uint64_t ETLMaverickManifestStatusInit(uint64_t a1)
{
  if (a1)
  {
    *a1 = xmmword_2977CA680;
    v2 = malloc(0x30uLL);
    *(a1 + 24) = v2;
    v3 = malloc(0x30uLL);
    *(a1 + 16) = v3;
    if (v2 && v3)
    {
      return 1;
    }

    else
    {
      _ETLDebugPrint("ETLMaverickManifestStatusInit", "failed allocating data for ckey hash = %p and skey hash = %p\n", v2, v3);
      v5 = *(a1 + 24);
      if (v5)
      {
        free(v5);
        *(a1 + 24) = 0;
      }

      result = *(a1 + 16);
      if (result)
      {
        free(result);
        result = 0;
        *(a1 + 16) = 0;
      }
    }
  }

  else
  {
    _ETLDebugPrint("ETLMaverickManifestStatusInit", "invalid manifest status to initialize, manifest_status = %p\n", 0);
    return 0;
  }

  return result;
}

BOOL ETLMaverickManifestStatusFree(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      free(v2);
      *(a1 + 24) = 0;
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      free(v3);
      *(a1 + 16) = 0;
    }

    return a1 != 0;
  }

  else
  {
    _ETLDebugPrint("ETLMaverickManifestStatusFree", "invalid manifest status to initialize, manifest_status = %p\n", 0);
    return 0;
  }
}

uint64_t ETLMaverickGetManifestStatus(void *a1, uint64_t *a2, uint64_t a3)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickGetManifestStatus", "Failed to create command frame\n");
    goto LABEL_27;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_27;
  }

  v25 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_27;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_27;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_27:
    v6 = 0;
    goto LABEL_28;
  }

  v6 = malloc((2 * DWORD2(v22) + 32));
  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = HDLCFrameEncode();
  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = v7;
  v25 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v6, v7);
  }

  if (!*a1)
  {
LABEL_29:
    free(v6);
    goto LABEL_27;
  }

  v9 = (*a1)(a1, v6, v8, &v25, 1, a3, 0);
  v10 = v25;
  free(v6);
  v6 = 0;
  if (v9 && v10 == v8)
  {
    LOBYTE(v25) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v6 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v20, &_ETLResponseRingBuffer, &v25, a3) && v25 == 75)
    {
      v25 = 0;
      if (ETLMaverickParseBSPResponseHeader(v20, &v25, 12))
      {
        if (DWORD2(v20[0]) - v25 <= 3)
        {
          _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n");
        }

        else
        {
          v11 = *&v20[0];
          if (*(*&v20[0] + v25) == 12)
          {
            v12 = *(*&v20[0] + v25 + 2);
            v13 = v25 + 4;
            v25 = v13;
            v14 = *a2;
            v15 = 2 * *a2 + 6;
            v16 = DWORD2(v20[0]) - v13;
            if (v15 - 2 <= v16)
            {
              if (v16 < v15)
              {
                _ETLDebugPrint("ETLMaverickSecurityParseReadManifestStatusResponse", "Manifest response size %u is small %u, ignoring status check\n", v16, v15);
                v13 = v25 - 2;
                v25 -= 2;
                v11 = *&v20[0];
LABEL_33:
                v18 = (v11 + v13);
                *(a2 + 4) = *v18;
                *(a2 + 5) = v18[1];
                *(a2 + 6) = v18[2];
                v19 = v18 + 3;
                memcpy(a2[2], v18 + 3, v14);
                memcpy(a2[3], v19 + v14, v14);
                v6 = 1;
                goto LABEL_28;
              }

              if (!v12)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n");
          }
        }
      }

      goto LABEL_27;
    }
  }

LABEL_28:
  HDLCFrameFree();
  HDLCFrameFree();
  return v6;
}

uint64_t ETLMaverickGetCarrierID(void *a1, _BYTE *a2, uint64_t a3)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  if (!a2)
  {
    _ETLDebugPrint("ETLMaverickGetCarrierID", "Invalid arguments\n", a3);
    goto LABEL_25;
  }

  a2[7] = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
LABEL_25:
    _ETLDebugPrint("ETLMaverickGetCarrierID", "Failed to create command frame\n");
    goto LABEL_26;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_26;
  }

  v23 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_26;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_26;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_26:
    v6 = 0;
    goto LABEL_27;
  }

  v6 = malloc((2 * DWORD2(v20) + 32));
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = HDLCFrameEncode();
  if (!v7)
  {
    goto LABEL_31;
  }

  v8 = v7;
  v23 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v6, v7);
  }

  if (!*a1)
  {
LABEL_31:
    free(v6);
    goto LABEL_26;
  }

  v9 = (*a1)(a1, v6, v8, &v23, 1, a3, 0);
  v10 = v23;
  free(v6);
  v6 = 0;
  if (v9 && v10 == v8)
  {
    if (!ETLSubsysFindMatchingResponse(a1, v18, a3))
    {
      _ETLDebugPrint("ETLMaverickGetCarrierID", "Command not implemented\n");
      a2[7] = 0;
      v6 = 1;
      goto LABEL_27;
    }

    v23 = 0;
    if (ETLMaverickParseBSPResponseHeader(v18, &v23, 12))
    {
      if (DWORD2(v18[0]) - v23 <= 3)
      {
        _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n");
      }

      else if (*(*&v18[0] + v23) == 23)
      {
        v11 = *(*&v18[0] + v23 + 2);
        v12 = v23 + 4;
        v23 += 4;
        if (v11 == 6)
        {
          goto LABEL_36;
        }

        if (v11 || DWORD2(v18[0]) - v12 < 4)
        {
          goto LABEL_35;
        }

        v13 = (*&v18[0] + v12);
        v16 = *v13;
        v14 = v13 + 1;
        v15 = v16;
        if (!v16)
        {
LABEL_36:
          v6 = 1;
          a2[7] = 0;
          goto LABEL_27;
        }

        if (v15 <= 7)
        {
          memcpy(a2, v14, v15);
          v6 = 1;
          a2[7] = 1;
          goto LABEL_27;
        }

        _ETLDebugPrint("ETLMaverickSecurityParseReadCarrierIDResponse", "received carrier id length %u larger than expected %u\n");
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n");
      }
    }

LABEL_35:
    v6 = 0;
    a2[7] = 0;
  }

LABEL_27:
  HDLCFrameFree();
  HDLCFrameFree();
  return v6;
}

uint64_t ETLMaverickCheckCalibrationBackup(void *a1, _WORD *a2, uint64_t a3)
{
  *a2 = -1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_24;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_24;
  }

  v17 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_24;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_24;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_24:
    v6 = 0;
    goto LABEL_25;
  }

  v6 = malloc((2 * DWORD2(v14) + 32));
  if (v6)
  {
    v7 = HDLCFrameEncode();
    if (!v7)
    {
      goto LABEL_26;
    }

    v8 = v7;
    v17 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v6, v7);
    }

    if (!*a1)
    {
LABEL_26:
      free(v6);
      goto LABEL_24;
    }

    v9 = (*a1)(a1, v6, v8, &v17, 1, a3, 0);
    v10 = v17;
    free(v6);
    v6 = 0;
    if (v9)
    {
      if (v10 == v8)
      {
        LOBYTE(v17) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v6 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v12, &_ETLResponseRingBuffer, &v17, a3) && v17 == 75)
        {
          v17 = 0;
          v6 = 0;
          if (ETLMaverickParseBSPResponseHeader(v12, &v17, 12))
          {
            if (DWORD2(v12[0]) - v17 <= 3)
            {
              _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n");
            }

            else
            {
              if (*(*&v12[0] + v17) == 13)
              {
                *a2 = *(*&v12[0] + v17 + 2);
                v6 = 1;
                goto LABEL_25;
              }

              _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n");
            }

            goto LABEL_24;
          }
        }
      }
    }
  }

LABEL_25:
  HDLCFrameFree();
  HDLCFrameFree();
  return v6;
}

uint64_t ETLFTMRFCallResponse(int **a1, int a2)
{
  if (*(a1 + 2) < 4u)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
  }

  else
  {
    v4 = **a1;
    if (v4 == 75)
    {
      if (BYTE1(v4) == 11)
      {
        if (HIWORD(v4) != 251)
        {
          _ETLDebugPrint("ETLFTMRFCallResponse", "Received command code 0x%x doesn't match expected 0x%x\n");
        }
      }

      else
      {
        _ETLDebugPrint("ETLFTMRFCallResponse", "Received subsys 0x%x doesn't match expected 0x%x\n");
      }

      v5 = 1;
      v6 = *(a1 + 2) - 4;
      if (v6 <= 3)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
  }

  v5 = 0;
  v6 = *(a1 + 2);
  if (v6 <= 3)
  {
LABEL_15:
    _ETLDebugPrint("ETLFTMRFCallResponse", "response requires %u bytes, got %u\n", 4, v6);
    return 0;
  }

LABEL_9:
  v7 = &(*a1)[v5];
  v8 = *v7;
  if (v8 == a2)
  {
    if (*(v7 + 1) == 1)
    {
      return 1;
    }

    else
    {
      _ETLDebugPrint("ETLFTMRFCallResponse", "Call got failed. The status returns %u\n", *(v7 + 1));
      return 0;
    }
  }

  else
  {
    _ETLDebugPrint("ETLFTMRFCallResponse", "Expect Maverick CMD code %u is not matched with gottne %u\n", a2, v8);
    return 0;
  }
}

uint64_t ETLFTMRFCallSetup(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    _ETLDebugPrint("ETLFTMRFCallSetup", "Transport cannot be NULL\n", a3, a4);
    return 0;
  }

  v4 = a2;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  if (HDLCFrameCreateUplink())
  {
    if (HDLCFrameGetFreeSpace() < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    }

    else
    {
      v19 = 16452427;
      if (HDLCFrameInject())
      {
        if (HDLCFrameGetFreeSpace() <= 0xB)
        {
LABEL_20:
          _ETLDebugPrint("ETLFTMCreateRFCallSetup", "Not enough room, need %u, have %u\n");
          goto LABEL_21;
        }

        if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort())
        {
          goto LABEL_21;
        }

        if (v4 >= 7 || ((0x6Du >> v4) & 1) == 0)
        {
          _ETLDebugPrint("ETLFTMCreateRFCallSetup", "The technology cannot be interpreted %u\n");
          goto LABEL_21;
        }

        v7 = 4 * (v4 & 7);
        v8 = *(&unk_2977CA690 + v7);
        v9 = *(&unk_2977CA6AC + v7);
        if (HDLCFrameInjectUnsignedShort())
        {
          if (HDLCFrameGetFreeSpace() < v8)
          {
            goto LABEL_20;
          }

          if (v9 > 1)
          {
            if (v9 == 2)
            {
              if ((HDLCFrameInjectUnsignedShort() & 1) == 0 || !HDLCFrameInjectUnsignedShort())
              {
                goto LABEL_21;
              }
            }

            else if ((HDLCFrameInjectUnsignedShort() & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          else if (v9 && (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || (HDLCFrameInjectUnsignedShort() & 1) == 0))
          {
            goto LABEL_21;
          }

          if (ETLSendCommand(a1, v17, a4) && ETLSubsysFindMatchingResponse(a1, &v14, a4))
          {
            v11 = ETLFTMRFCallResponse(&v14, 82);
            goto LABEL_22;
          }
        }
      }

      else
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v12, v13, v14, v15, v16);
      }
    }
  }

  else
  {
    _ETLDebugPrint("ETLFTMRFCallSetup", "Failed to create command frame\n", v12, v13, v14, v15, v16);
  }

LABEL_21:
  v11 = 0;
LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return v11;
}

uint64_t ETLFTMRFCallExit(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), unsigned __int16 a2, uint64_t a3)
{
  if (!a1)
  {
    _ETLDebugPrint("ETLFTMRFCallExit", "Transport cannot be NULL\n", a3);
    return 0;
  }

  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLFTMRFCallExit", "Failed to create command frame\n", v7, v8, v9, v10, v11);
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_16;
  }

  v14 = 16452427;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_16;
  }

  if (HDLCFrameGetFreeSpace() <= 3)
  {
    _ETLDebugPrint("ETLFTMCreateRFCallExit", "Not enough room, need %u, have %u\n");
    goto LABEL_16;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !ETLSendCommand(a1, v12, a3) || !ETLSubsysFindMatchingResponse(a1, &v9, a3))
  {
    goto LABEL_16;
  }

  v5 = ETLFTMRFCallResponse(&v9, 83);
LABEL_17:
  HDLCFrameFree();
  HDLCFrameFree();
  return v5;
}

uint64_t ETLFTMFEMCommonDispatchResponse(int **a1, uint64_t a2)
{
  if (*(a1 + 2) < 4u)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
  }

  else
  {
    v4 = **a1;
    if (v4 == 75)
    {
      if (HIWORD(v4) != 20 || BYTE1(v4) != 11)
      {
        _ETLDebugPrint("ETLFTMFEMCommonDispatchResponse", "Received subsys 0x%x command code 0x%x doesn't match expected subsys 0x%x command code 0x%x\n", BYTE1(v4), HIWORD(v4), 11, 20);
      }

      v6 = 1;
      v7 = *(a1 + 2) - 4;
      if (v7 <= 9)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
  }

  v6 = 0;
  v7 = *(a1 + 2);
  if (v7 <= 9)
  {
LABEL_9:
    _ETLDebugPrint("ETLFTMFEMCommonDispatchResponse", "response requires %u bytes, got %u\n", 10, v7);
    return 0;
  }

LABEL_13:
  v9 = &(*a1)[v6];
  v10 = *v9;
  if (v10 == 1005)
  {
    *(a2 + 4) = *(v9 + 7);
    *a2 = *(v9 + 9);
    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLFTMFEMCommonDispatchResponse", "Expect Maverick CMD code %u is not matched with gottne %u\n", 1005, v10);
    return 0;
  }
}

const char *ETLFTMRfcInitStatusAsString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE6DEF0[a1];
  }
}

uint64_t ETLFTMGetFEMCommonInfo(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    _ETLDebugPrint("ETLFTMGetFEMCommonInfo", "Transport cannot be NULL\n", a3);
    return 0;
  }

  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLFTMGetFEMCommonInfo", "Failed to create command frame\n", v8, v9, v10, v11, v12);
LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_19;
  }

  v15 = 1313611;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_19;
  }

  if (HDLCFrameGetFreeSpace() <= 7)
  {
    _ETLDebugPrint("ETLFTMCreateFEMCommonDispatch", "Not enough room, need %u, have %u\n");
    goto LABEL_19;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !ETLSendCommand(a1, v13, a3) || !ETLSubsysFindMatchingResponse(a1, &v10, a3))
  {
    goto LABEL_19;
  }

  v6 = ETLFTMFEMCommonDispatchResponse(&v10, a2);
LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return v6;
}

uint64_t ETLUCalTxCreateCommand(uint64_t a1, int a2, uint64_t a3)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
LABEL_13:
    _ETLDebugPrint("ETLUCalTxCreateCommand", "Failed to add command header\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_13;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (a2)
  {
    if (a2 != 1)
    {
      _ETLDebugPrint("ETLUCalTxCreateCommand", "Wrong to arrive here\n");
    }

    return HDLCFrameInjectUnsignedShort() & 1;
  }

  if (FreeSpace <= 9)
  {
    _ETLDebugPrint("ETLUCalTxCreateCommand", "Remaining %u not enough %u\n");
    return 0;
  }

  v6 = HDLCFrameInjectUnsignedShort();
  result = 0;
  if (v6)
  {

    return HDLCFrameInject();
  }

  return result;
}

uint64_t ETLUCalTxParseResponse(unsigned int *a1)
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
        if (v4 == 26)
        {
          if (v2 <= 1)
          {
            _ETLDebugPrint("ETLUCalTxParseResponseWithStatus", "Payload length %u less than needed %u\n", v2, 2);
            return 0;
          }

          else if (*(*a1 + 4) == 1)
          {
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLUCalTxParseResponseWithStatus", "Status returned was %u, expected %u\n", *(*a1 + 4), 1);
            return 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v4, 26);
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

uint64_t ETLUCalTxOperation(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLUCalTxOperation", "Faild to create uplink frame\n");
    goto LABEL_26;
  }

  if (!ETLUCalTxCreateCommand(v20, a2, a3))
  {
LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

  v10 = malloc((2 * DWORD2(v20[0]) + 32));
  if (v10)
  {
    v11 = HDLCFrameEncode();
    if (!v11)
    {
      goto LABEL_28;
    }

    v12 = v11;
    v22 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v10, v11);
    }

    if (!*a1)
    {
LABEL_28:
      free(v10);
      goto LABEL_26;
    }

    v13 = (*a1)(a1, v10, v12, &v22, 1, a4, 0);
    v14 = v22;
    free(v10);
    v10 = 0;
    if (v13)
    {
      if (v14 == v12)
      {
        LOBYTE(v22) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v10 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v18, &_ETLResponseRingBuffer, &v22, a4) && v22 == 75)
        {
          _ETLDebugPrint("ETLUCalTxOperation", "Read done\n");
          if (DWORD2(v18[0]) < 4)
          {
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
          }

          else
          {
            v15 = **&v18[0];
            if (**&v18[0] == 75)
            {
              if (BYTE1(v15) == 253)
              {
                if (HIWORD(v15) == 26)
                {
                  if ((DWORD2(v18[0]) - 4) <= 1)
                  {
                    _ETLDebugPrint("ETLUCalTxParseResponseWithStatus", "Payload length %u less than needed %u\n");
                  }

                  else
                  {
                    v16 = *(*&v18[0] + 4);
                    if (a5)
                    {
                      *a5 = v16;
                    }

                    if (v16 == 1)
                    {
                      v10 = 1;
                      goto LABEL_27;
                    }

                    _ETLDebugPrint("ETLUCalTxParseResponseWithStatus", "Status returned was %u, expected %u\n");
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
  return v10;
}

uint64_t ETLCalGetSKU(uint64_t (**a1)(void, void *, uint64_t, _OWORD *, uint64_t, uint64_t, void), _DWORD *a2, uint64_t a3)
{
  v3 = 0;
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2)
    {
      v8 = 4;
      v9 = 0;
      memset(v10, 0, sizeof(v10));
      v5 = ETLNVRead(a1, 50020, v10, 0x100u, &v9, &v8, a3);
      v3 = 0;
      if (v5)
      {
        if (v8)
        {
          v6 = v8 == 5;
        }

        else
        {
          v6 = 1;
        }

        v3 = v6;
        if (v6 && v9 >= 3)
        {
          *a2 = LOWORD(v10[0]);
          return 1;
        }
      }
    }
  }

  return v3;
}

uint64_t ETLCalGetUmtsBand4Status(uint64_t (**a1)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), BOOL *a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    memset(v13, 0, sizeof(v13));
    v14 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        v18 = 3472715;
        if (HDLCFrameInject())
        {
          v3 = malloc((2 * DWORD2(v15) + 32));
          if (!v3)
          {
LABEL_28:
            HDLCFrameFree();
            HDLCFrameFree();
            return v3;
          }

          v7 = HDLCFrameEncode();
          if (!v7)
          {
            goto LABEL_30;
          }

          v8 = v7;
          v18 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v3, v7);
          }

          if (*a1)
          {
            v9 = (*a1)(a1, v3, v8, &v18, 1, a3, 0);
            v10 = v18;
            free(v3);
            v3 = 0;
            if (!v9 || v10 != v8)
            {
              goto LABEL_28;
            }

            LOBYTE(v18) = 75;
            if (!_ETLResponseRingBuffer)
            {
              TelephonyUtilRingBufferInitialize();
            }

            v3 = 0;
            if (!ETLFindMatchingResponseUsingBuffer(a1, v13, &_ETLResponseRingBuffer, &v18, a3) || v18 != 75)
            {
              goto LABEL_28;
            }

            if (DWORD2(v13[0]) < 4)
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
            }

            else
            {
              v11 = **&v13[0];
              if (**&v13[0] == 75)
              {
                if (BYTE1(v11) == 253)
                {
                  if (HIWORD(v11) == 52)
                  {
                    if ((DWORD2(v13[0]) - 4) > 1)
                    {
                      *a2 = *(*&v13[0] + 4) != 0;
                      v3 = 1;
                      goto LABEL_28;
                    }

                    _ETLDebugPrint("ETLCalGetUmtsBand4Status", "Payload length %u less than needed %u\n");
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
          }

          else
          {
LABEL_30:
            free(v3);
          }

LABEL_27:
          v3 = 0;
          goto LABEL_28;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      }

      _ETLDebugPrint("ETLCalGetUmtsBand4Status", "Failed to add command header\n");
      goto LABEL_27;
    }

    _ETLDebugPrint("ETLCalGetUmtsBand4Status", "Failed to create uplink frame\n");
    goto LABEL_27;
  }

  return v3;
}

BOOL ETLPM_GetVREGLevel(void *a1, char a2, int *a3, uint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v15 = -1431655766;
  v21 = -21846;
  memset(v22, 0, sizeof(v22));
  v19 = 271435;
  v20 = a2;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v7;
  v17 = v7;
  if (!HDLCFrameCreateUplink())
  {
    return 0;
  }

  HDLCFrameInject();
  v8 = HDLCFrameEncode();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (v8 < 1)
  {
    return 0;
  }

  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&unk_2977CAD33, 0, v22, v8);
  }

  if (!*a1)
  {
    return 0;
  }

  v10 = (*a1)(a1, v22, v9, &v15, 1, 1000, 0);
  result = 0;
  if (v10 && v15 == v9)
  {
    v18 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v12;
    v17 = v12;
    LOBYTE(v19) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    result = ETLFindMatchingResponseUsingBuffer(a1, &v16, &_ETLResponseRingBuffer, &v19, a4);
    if (result)
    {
      if (v19 == 75)
      {
        v13 = (DWORD2(v16) - 4) < 0xFFFFFFFD;
        if ((DWORD2(v16) - 4) > 0xFFFFFFFC)
        {
          v14 = 43690;
        }

        else
        {
          v14 = *(v16 + 5);
        }

        *a3 = v14;
      }

      else
      {
        v13 = 0;
      }

      HDLCFrameFree();
      return v13;
    }
  }

  return result;
}

uint64_t ETLCMCreateGetModeCommand(uint64_t a1)
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
      v3 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v3;
    }
  }

  return result;
}

uint64_t ETLCMParseGetModeResponse(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 8);
  v3 = v2 - 4;
  if (v2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 8), 4uLL);
    return 0;
  }

  v4 = *a1;
  if (**a1 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
    return 0;
  }

  if ((**a1 & 0xFFFFFF00) != 0xF00)
  {
    return 0;
  }

  if (v3 <= 0x2B)
  {
    _ETLDebugPrint("ETLCMParseGetModeResponse", "Need %u bytes, only have %u\n", 44, v3);
    return 0;
  }

  else
  {
    v5 = *(v4 + 4);
    v6 = *(v4 + 20);
    *(a2 + 28) = v4[2];
    *a2 = v5;
    a2[1] = v6;
    return 1;
  }
}

uint64_t ETLCMGetMode(uint64_t (**a1)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), _OWORD *a2, uint64_t a3)
{
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        v19 = 3915;
        if (HDLCFrameInject())
        {
          v6 = malloc((2 * DWORD2(v16) + 32));
          if (!v6)
          {
LABEL_26:
            HDLCFrameFree();
            HDLCFrameFree();
            return v6;
          }

          v7 = HDLCFrameEncode();
          if (!v7)
          {
            goto LABEL_28;
          }

          v8 = v7;
          v19 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v6, v7);
          }

          if (*a1)
          {
            v9 = (*a1)(a1, v6, v8, &v19, 1, a3, 0);
            v10 = v19;
            free(v6);
            v6 = 0;
            if (!v9 || v10 != v8)
            {
              goto LABEL_26;
            }

            LOBYTE(v19) = 75;
            if (!_ETLResponseRingBuffer)
            {
              TelephonyUtilRingBufferInitialize();
            }

            v6 = 0;
            if (!ETLFindMatchingResponseUsingBuffer(a1, v14, &_ETLResponseRingBuffer, &v19, a3) || v19 != 75)
            {
              goto LABEL_26;
            }

            if (DWORD2(v14[0]) < 4)
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
            }

            else if (**&v14[0] == 75)
            {
              if ((**&v14[0] & 0xFFFFFF00) == 0xF00)
              {
                if ((DWORD2(v14[0]) - 4) > 0x2B)
                {
                  v11 = *(*&v14[0] + 4);
                  v12 = *(*&v14[0] + 20);
                  *(a2 + 28) = *(*&v14[0] + 32);
                  *a2 = v11;
                  a2[1] = v12;
                  v6 = 1;
                  goto LABEL_26;
                }

                _ETLDebugPrint("ETLCMParseGetModeResponse", "Need %u bytes, only have %u\n");
              }
            }

            else
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
            }
          }

          else
          {
LABEL_28:
            free(v6);
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
      _ETLDebugPrint("ETLCMGetMode", "Failed to create command frame\n");
    }

    v6 = 0;
    goto LABEL_26;
  }

  return 0;
}

uint64_t ETLEVENTCreateSetMaskCommand(uint64_t a1, uint64_t a2, unsigned int a3)
{
  _ETLDebugPrint("ETLEVENTCreateSetMaskCommand", "Setting masks of %u bits\n", a3);
  if (a3 > 0x1000)
  {
    return 0;
  }

  v4 = (a3 + 7) >> 3;
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < v4 + 7)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v4 + 7, FreeSpace);
    return 0;
  }

  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInject();

  return HDLCFrameInjectUnsignedChar();
}

uint64_t ETLEVENTParseSetMaskResponse(unsigned __int8 **a1, _DWORD *a2, void *__dst, unsigned int *a4)
{
  v4 = *(a1 + 2);
  if (v4 <= 5)
  {
    _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Response has %u bytes, need %u\n", *(a1 + 2), 6);
    return 0;
  }

  else
  {
    v5 = *a1;
    if (**a1 == 130)
    {
      v6 = *(v5 + 1);
      *a2 = v6;
      if (v6)
      {
        return 0;
      }

      else
      {
        v8 = *(v5 + 4);
        *a4 = v8;
        v9 = v4 - 6;
        if (v8 > 0x1000 || (v8 + 7) >> 3 > v9)
        {
          _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Need %u bytes for mask of %u bits, only have %u\n", (v8 + 7) >> 3, v8, v9);
          return 0;
        }

        else
        {
          memcpy(__dst, (v5 + 6), (v8 + 7) >> 3);
          return 1;
        }
      }
    }

    else
    {
      _ETLDebugPrint("ETLExpectResponseCode", "Received response code is %u, expected %u\n", **a1, 130);
      return 0;
    }
  }
}

uint64_t ETLEVENTCreateGetMaskCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace <= 3)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 4, FreeSpace);
    return 0;
  }

  else
  {
    HDLCFrameInjectUnsignedChar();
    HDLCFrameInjectUnsignedChar();

    return HDLCFrameInjectUnsignedShort();
  }
}

uint64_t ETLEVENTParseGetMaskResponse(unsigned __int8 **a1, _DWORD *a2, void *__dst, unsigned int *a4)
{
  v4 = *(a1 + 2);
  if (v4 <= 5)
  {
    _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Response has %u bytes, need %u\n", *(a1 + 2), 6);
    return 0;
  }

  else
  {
    v5 = *a1;
    if (**a1 == 129)
    {
      v6 = *(v5 + 1);
      *a2 = v6;
      if (v6)
      {
        return 0;
      }

      else
      {
        v8 = *(v5 + 4);
        *a4 = v8;
        v9 = v4 - 6;
        if (v8 > 0x1000 || (v8 + 7) >> 3 > v9)
        {
          _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Need %u bytes for mask of %u bits, only have %u\n", (v8 + 7) >> 3, v8, v9);
          return 0;
        }

        else
        {
          memcpy(__dst, (v5 + 6), (v8 + 7) >> 3);
          return 1;
        }
      }
    }

    else
    {
      _ETLDebugPrint("ETLExpectResponseCode", "Received response code is %u, expected %u\n", **a1, 129);
      return 0;
    }
  }
}

uint64_t ETLEVENTCreateEnableCommand(uint64_t a1, uint64_t a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 2, FreeSpace);
    return 0;
  }

  else
  {
    HDLCFrameInjectUnsignedChar();

    return HDLCFrameInjectUnsignedChar();
  }
}

unint64_t ETLEVENTSetMask(void *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v16 = -126;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __s2[30] = v8;
  __s2[31] = v8;
  __s2[28] = v8;
  __s2[29] = v8;
  __s2[26] = v8;
  __s2[27] = v8;
  __s2[24] = v8;
  __s2[25] = v8;
  __s2[22] = v8;
  __s2[23] = v8;
  __s2[20] = v8;
  __s2[21] = v8;
  __s2[18] = v8;
  __s2[19] = v8;
  __s2[16] = v8;
  __s2[17] = v8;
  __s2[14] = v8;
  __s2[15] = v8;
  __s2[12] = v8;
  __s2[13] = v8;
  __s2[10] = v8;
  __s2[11] = v8;
  __s2[8] = v8;
  __s2[9] = v8;
  __s2[6] = v8;
  __s2[7] = v8;
  __s2[4] = v8;
  __s2[5] = v8;
  __s2[2] = v8;
  __s2[3] = v8;
  __s2[0] = v8;
  __s2[1] = v8;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLEVENTSetMask", "Failed to create command frame\n");
    goto LABEL_25;
  }

  if (!ETLEVENTCreateSetMaskCommand(v19, a2, a3))
  {
LABEL_25:
    v9 = 0;
    goto LABEL_26;
  }

  v9 = malloc((2 * DWORD2(v19[0]) + 32));
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = HDLCFrameEncode();
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = v10;
  v21 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v9, v10);
  }

  if (!*a1)
  {
LABEL_27:
    free(v9);
    goto LABEL_25;
  }

  v12 = (*a1)(a1, v9, v11, &v21, 1, a4, 0);
  v13 = v21;
  free(v9);
  v9 = 0;
  if (v12 && v13 == v11)
  {
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (ETLFindMatchingResponseUsingBuffer(a1, v17, &_ETLResponseRingBuffer, &v16, a4))
    {
      if (DWORD2(v17[0]) <= 5)
      {
        _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Response has %u bytes, need %u\n");
      }

      else if (**&v17[0] == 130)
      {
        if (!*(*&v17[0] + 1))
        {
          LODWORD(v14) = *(*&v17[0] + 4);
          if (v14 > 0x1000 || (v14 + 7) >> 3 > DWORD2(v17[0]) - 6)
          {
            _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Need %u bytes for mask of %u bits, only have %u\n");
          }

          else
          {
            __memcpy_chk();
            if (v14 >= a3)
            {
              v14 = a3;
            }

            else
            {
              v14 = v14;
            }

            if (!memcmp(a2, __s2, v14 >> 3))
            {
              v9 = (v14 & 7) == 0 || ((*(__s2 + (v14 >> 3)) ^ a2[v14 >> 3]) & ~(-1 << (v14 & 7))) == 0;
              goto LABEL_26;
            }
          }
        }
      }

      else
      {
        _ETLDebugPrint("ETLExpectResponseCode", "Received response code is %u, expected %u\n");
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  HDLCFrameFree();
  HDLCFrameFree();
  return v9;
}

uint64_t ETLEVENTGetMask(void *a1, void *a2, unsigned int *a3, uint64_t a4)
{
  v19 = -127;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLEVENTGetMask", "Failed to create command frame\n");
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() <= 3)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_22;
  }

  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  v8 = malloc((2 * DWORD2(v22) + 32));
  if (v8)
  {
    v9 = HDLCFrameEncode();
    if (!v9)
    {
      goto LABEL_24;
    }

    v10 = v9;
    v25 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v8, v9);
    }

    if (!*a1)
    {
LABEL_24:
      free(v8);
      goto LABEL_22;
    }

    v11 = (*a1)(a1, v8, v10, &v25, 1, a4, 0);
    v12 = v25;
    free(v8);
    v8 = 0;
    if (v11)
    {
      if (v12 == v10)
      {
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        if (ETLFindMatchingResponseUsingBuffer(a1, v20, &_ETLResponseRingBuffer, &v19, a4))
        {
          v13 = DWORD2(v20[0]);
          if (DWORD2(v20[0]) <= 5)
          {
            _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Response has %u bytes, need %u\n");
          }

          else
          {
            v14 = *&v20[0];
            if (**&v20[0] == 129)
            {
              if (!*(*&v20[0] + 1))
              {
                v15 = *(*&v20[0] + 4);
                *a3 = v15;
                v16 = v13 - 6;
                v17 = (v15 + 7) >> 3;
                if (v15 <= 0x1000 && v17 <= v16)
                {
                  memcpy(a2, (v14 + 6), v17);
                  v8 = 1;
                  goto LABEL_23;
                }

                _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Need %u bytes for mask of %u bits, only have %u\n");
              }
            }

            else
            {
              _ETLDebugPrint("ETLExpectResponseCode", "Received response code is %u, expected %u\n");
            }
          }
        }

        goto LABEL_22;
      }
    }
  }

LABEL_23:
  HDLCFrameFree();
  HDLCFrameFree();
  return v8;
}

void *ETLEVENTEnable(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = 96;
  _ETLDebugPrint("ETLEVENTEnable", "enable = %u\n", a2);
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLEVENTEnable", "Failed to create command frame\n");
    goto LABEL_16;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_16;
  }

  HDLCFrameInjectUnsignedChar();
  if (!HDLCFrameInjectUnsignedChar())
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  v5 = malloc((2 * DWORD2(v14) + 32));
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = HDLCFrameEncode();
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v17 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v5, v6);
  }

  if (!*a1)
  {
LABEL_18:
    free(v5);
    goto LABEL_16;
  }

  v8 = (*a1)(a1, v5, v7, &v17, 1, a3, 0);
  v9 = v17;
  free(v5);
  v5 = 0;
  if (v8 && v9 == v7)
  {
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v5 = ETLFindMatchingResponseUsingBuffer(a1, v12, &_ETLResponseRingBuffer, &v11, a3);
  }

LABEL_17:
  HDLCFrameFree();
  HDLCFrameFree();
  return v5;
}

uint64_t ETLEVENTProcessEvent(char *a1, size_t __size, unsigned int *a3, char *a4, unsigned int a5, _DWORD *a6)
{
  *a3 = 0;
  *a6 = 0;
  v6 = a5 - 2;
  if (a5 < 2)
  {
    return 0;
  }

  v7 = *a4;
  v8 = a4[1];
  *a6 = 2;
  v9 = a4 + 2;
  if ((v8 & 0x80000000) != 0)
  {
    if (v6 < 2)
    {
      goto LABEL_8;
    }

    v12 = 0;
    v13 = 0;
    LOBYTE(v10) = a4[2];
    LOBYTE(v11) = a4[3];
    v14 = 2;
    v15 = (v8 >> 5) & 3;
    v16 = a5 - 4;
    v17 = 4;
    *a6 = 4;
    if (v15 <= 1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (v6 < 8)
  {
    goto LABEL_8;
  }

  v10 = *v9 >> 8;
  v11 = *v9 >> 16;
  v12 = *v9;
  v13 = v11 & 0xFFFFFFFFFF00;
  v14 = 8;
  v15 = (v8 >> 5) & 3;
  v16 = a5 - 10;
  v17 = 10;
  *a6 = 10;
  if (v15 > 1)
  {
LABEL_10:
    if (v15 != 3)
    {
      if (v16 >= v15)
      {
        goto LABEL_17;
      }

      return 0;
    }

    if (v16)
    {
      v19 = v9[v14];
      v17 = v14 + 3;
      *a6 = v14 + 3;
      v15 = v19;
      if (v16 - 1 >= v19)
      {
        goto LABEL_17;
      }

      return 0;
    }

LABEL_8:
    result = 0;
    *a6 = 0;
    return result;
  }

LABEL_5:
  if (v15 && v16 < v15)
  {
    return 0;
  }

LABEL_17:
  v20 = v7 & 0xFFFFF0FF | ((v8 & 0xF) << 8);
  *a6 = v15 + v17;
  v21 = 5 * (v13 | v11) + ((((43685 * (v12 & 0xFFFF00FF | (v10 << 8))) >> 16) + ((((v12 | (v10 << 8)) - ((43685 * (v12 & 0xFFFF00FF | (v10 << 8))) >> 16)) & 0xFFFE) >> 1)) >> 13) + 2;
  v22 = v21 >> 2;
  v23 = ((v21 * 0x10624DD2F1A9FCuLL) >> 64) + 315964800;
  v24 = __size;
  v26 = snprintf(a1, __size, "[%02u:%02u:%02u:%06u] EVENT 0x%04x ", ((v23 * 0x123456789ABCE0uLL) >> 64) % 0x18, v23 / 0x3C - 60 * (((v23 / 0x3C * 0x888888888888889uLL) >> 64) >> 1), v23 % 0x3C, 1000 * (v22 - 1000 * ((v22 * 0x4189374BC6A7F0uLL) >> 64)), v20);
  if (v26 >= v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = v26;
  }

  *a3 = v27;
  if (v26 < v24)
  {
    if (v24 >= v26)
    {
      v28 = v24 - v26;
    }

    else
    {
      v28 = 0;
    }

    v29 = TelephonyUtilBinToHex();
    if (v29 >= v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = v29;
    }

    *a3 += v30;
  }

  return 1;
}

uint64_t ETLEVENTProcessEventItem(char *a1, unsigned int a2, _DWORD *a3, _WORD *a4, _BYTE *a5, uint64_t a6)
{
  *a3 = 0;
  v6 = a2 - 2;
  if (a2 < 2)
  {
    return 0;
  }

  v7 = a1[1];
  *a4 = (*a1 | (a1[1] << 8)) & 0xFFF;
  *a3 = 2;
  v8 = a1 + 2;
  if ((v7 & 0x80000000) == 0)
  {
    if (v6 >= 8)
    {
      *a6 = *v8;
      v9 = 8;
      goto LABEL_8;
    }

LABEL_6:
    result = 0;
    *a3 = 0;
    return result;
  }

  if (v6 < 2)
  {
    goto LABEL_6;
  }

  *(a6 + 1) = a1[2];
  *(a6 + 2) = a1[3];
  v9 = 2;
LABEL_8:
  v11 = (v7 >> 5) & 3;
  v12 = v6 - v9;
  *a3 += v9;
  if (v11 <= 1)
  {
    if (!v11)
    {
      *a5 = 0;
      result = 1;
      *a3 = *a3;
      return result;
    }

    v13 = 1;
    *a5 = 1;
    if (!v12)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (v11 == 2)
  {
    v13 = 2;
    *a5 = 2;
    if (v12 >= 2)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v12)
  {
    *a5 = v8[v9];
    ++*a3;
    v13 = *a5;
    if (v12 - 1 >= v13)
    {
LABEL_18:
      result = 1;
      *a3 += v13;
      return result;
    }

    return 0;
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t ETLEVENTProcessEventItemTSLength(unsigned __int8 *a1, unsigned int a2, _DWORD *a3, _WORD *a4, _BYTE *a5, uint64_t a6, unsigned int *a7)
{
  *a3 = 0;
  v7 = a2 - 2;
  if (a2 < 2)
  {
    return 0;
  }

  v8 = a1[1];
  *a4 = (*a1 | (v8 << 8)) & 0xFFF;
  if (a7)
  {
    *a7 = v8 >> 7;
    *a3 += 2;
    v9 = a1 + 2;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    *a3 = 2;
    v9 = a1 + 2;
    if ((v8 & 0x80) == 0)
    {
LABEL_4:
      if (v7 >= 8)
      {
        *a6 = *v9;
        v10 = 8;
        goto LABEL_10;
      }

LABEL_8:
      result = 0;
      *a3 = 0;
      return result;
    }
  }

  if (v7 < 2)
  {
    goto LABEL_8;
  }

  *(a6 + 1) = a1[2];
  *(a6 + 2) = a1[3];
  v10 = 2;
LABEL_10:
  v12 = (v8 >> 5) & 3;
  v13 = v7 - v10;
  *a3 += v10;
  if (v12 <= 1)
  {
    if (!v12)
    {
      *a5 = 0;
      result = 1;
      *a3 = *a3;
      return result;
    }

    v12 = 1;
LABEL_18:
    *a5 = v12;
    if (v13 < v12)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v12 == 2)
  {
    goto LABEL_18;
  }

  if (v13)
  {
    *a5 = v9[v10];
    ++*a3;
    v12 = *a5;
    if (v13 - 1 < v12)
    {
      return 0;
    }

LABEL_16:
    result = 1;
    *a3 += v12;
    return result;
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t ETLEVENTProcessHeader(uint64_t a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (a2 < 3 || *a1 != 96)
  {
    return 0;
  }

  *a3 = *(a1 + 1);
  *a4 = 3;
  return 1;
}

uint64_t ETLEVENTParseReport(char *a1, size_t __size, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  *a5 = 0;
  if (a4 < 3 || *a3 != 96)
  {
    return 0;
  }

  v16 = v5;
  v17 = v6;
  v8 = *(a3 + 1);
  *a5 = 3;
  if (!v8)
  {
    return 1;
  }

  v11 = (a3 + 3);
  while (1)
  {
    v14 = -1431655766;
    v15 = -1431655766;
    if ((ETLEVENTProcessEvent(a1, __size, &v14, v11, v8, &v15) & 1) == 0)
    {
      break;
    }

    v12 = v15;
    v11 += v15;
    *a5 += v15;
    a1 += v14;
    __size = __size - v14;
    v8 -= v12;
    if (!v8)
    {
      return 1;
    }
  }

  result = 0;
  *a5 = 0;
  return result;
}

uint64_t ETLEVENTParseEventReport(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v3 < 3)
  {
    return 0;
  }

  if (*v2 != 96 || *(v2 + 1) + 3 != v3)
  {
    return 0;
  }

  result = malloc(0x28uLL);
  if (!result)
  {
    return result;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0;
  v9 = v8 + 1;
  if (v9 > 0xFFFFFFFD)
  {
    goto LABEL_26;
  }

  v10 = v7[4];
  *result = (v7[3] | (v7[4] << 8)) & 0xFFF;
  v11 = v7 + 5;
  if ((v10 & 0x80000000) != 0)
  {
    if (v9 < 2)
    {
      goto LABEL_26;
    }

    *(result + 3) = v7[5];
    *(result + 4) = v7[6];
    v12 = 2;
  }

  else
  {
    if (v9 < 8)
    {
      goto LABEL_26;
    }

    *(result + 2) = *v11;
    v12 = 8;
  }

  v13 = (v10 >> 5) & 3;
  v14 = v9 - v12;
  v15 = v12 + 2;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v16 = 2;
      *(result + 24) = 2;
      goto LABEL_19;
    }

    if (v14)
    {
      v16 = *(v11 + v12);
      *(result + 24) = v16;
      --v14;
      v15 = v12 + 3;
      goto LABEL_19;
    }

LABEL_26:
    free(result);
    return 0;
  }

  if (!v13)
  {
    goto LABEL_26;
  }

  v16 = 1;
  *(result + 24) = 1;
LABEL_19:
  if (v14 < v16)
  {
    goto LABEL_26;
  }

  if (!v16)
  {
    goto LABEL_26;
  }

  v17 = result;
  v18 = malloc(v16);
  result = v17;
  *(v17 + 16) = v18;
  if (!v18)
  {
    goto LABEL_26;
  }

  memcpy(v18, &v7[v15 + 3], v16);
  v19 = a2[1];
  if (v19)
  {
    v20 = (v19 + 32);
  }

  else
  {
    v20 = a2;
  }

  *v20 = v17;
  a2[1] = v17;
  ++*(a2 + 4);
  return 1;
}