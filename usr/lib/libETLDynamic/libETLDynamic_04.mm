uint64_t ETLNVWriteWithStatus(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v6 = a4;
    v7 = a2;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    memset(v16, 0, sizeof(v16));
    v17 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (v6 <= 0x80)
      {
        if (HDLCFrameGetFreeSpace() <= 0x87)
        {
          _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
        }

        else
        {
          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedShort();
          if (HDLCFrameInject())
          {
            memset(v20, 0, sizeof(v20));
            HDLCFrameInject();
            if (HDLCFrameInjectUnsignedShort())
            {
              if (ETLSendCommand(a1, v18, a6))
              {
                LOBYTE(v20[0]) = 39;
                v11 = ETLFindMatchingResponse(a1, v16, v20, a6);
                v12 = 0;
                if (!v11 || LOBYTE(v20[0]) != 39)
                {
                  goto LABEL_18;
                }

                if (DWORD2(v16[0]) <= 2)
                {
                  _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "Response size %u not enough, need %u\n");
                }

                else
                {
                  v13 = *&v16[0];
                  if (*(*&v16[0] + 1) != v7)
                  {
                    _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "Returned item number %u mismatches expected %u\n", *(*&v16[0] + 1), v7);
                  }

                  v14 = *(v13 + 131);
                  *a5 = v14;
                  if (!v14)
                  {
                    v12 = 1;
                    goto LABEL_18;
                  }

                  _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "NV write response indicates failure with status code %u\n");
                }
              }
            }
          }
        }
      }
    }

    else
    {
      _ETLDebugPrint("ETLNVWriteWithStatus", "Failed to create command frame\n");
    }

    v12 = 0;
LABEL_18:
    HDLCFrameFree();
    HDLCFrameFree();
    return v12;
  }

  return 0;
}

uint64_t ETLMaverickNVReadFactory(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, void *a3, uint64_t a4, _WORD *a5, _DWORD *a6, uint64_t a7)
{
  if (a1 && a3 && a5 && a6)
  {
    if (a4 <= 0x7F)
    {
      _ETLDebugPrint("ETLMaverickNVReadFactory", "Buffer size (%u) should be more than %u\n", a3, a4, a5, a6, a7);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v28 = 0;
      v23 = 0u;
      v24 = 0u;
      v25 = 0;
      if (HDLCFrameCreateUplink())
      {
        if (HDLCFrameGetFreeSpace() < 4)
        {
          _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
        }

        else
        {
          v29 = 1900107;
          if (HDLCFrameInject())
          {
            MatchingResponse = HDLCFrameInjectUnsignedInt();
            if (!MatchingResponse)
            {
              goto LABEL_27;
            }

            MatchingResponse = malloc((2 * DWORD2(v26) + 32));
            if (!MatchingResponse)
            {
              goto LABEL_27;
            }

            v14 = MatchingResponse;
            v15 = HDLCFrameEncode();
            if (v15)
            {
              v16 = v15;
              v29 = -1431655766;
              if ((_ETLDebugFlags & 2) != 0)
              {
                off_2A18A5818(&str_3, 0, v14, v15);
              }

              if (*a1)
              {
                v17 = (*a1)(a1, v14, v16, &v29, 1, a7, 0);
                v18 = v29;
                free(v14);
                MatchingResponse = 0;
                if (v17 && v18 == v16)
                {
                  MatchingResponse = ETLSubsysFindMatchingResponse(a1, &v23, a7);
                  if (MatchingResponse)
                  {
                    MatchingResponse = ETLMaverickParseNVReadFactory(&v23, a3, a4, a5, a6);
                  }
                }

                goto LABEL_27;
              }
            }

            free(v14);
          }

          else
          {
            _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
          }
        }

        MatchingResponse = 0;
LABEL_27:
        v20 = MatchingResponse;
        HDLCFrameFree();
        HDLCFrameFree();
        return v20;
      }

      _ETLDebugPrint("ETLMaverickNVReadFactory", "Failed to create command frame\n");
    }
  }

  else
  {
    _ETLDebugPrint("ETLMaverickNVReadFactory", "Transport, destBuffer, amountRead, or status memory cannot be NULL\n", a3, a4, a5, a6, a7, v21, v22, v23, v24, v25);
  }

  return 0;
}

uint64_t ETLMaverickParseNVReadFactory(_DWORD **a1, void *__dst, uint64_t a3, _WORD *a4, _DWORD *a5)
{
  *a4 = 0;
  *a5 = 4;
  v5 = *(a1 + 2);
  v6 = v5 - 4;
  if (v5 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3);
LABEL_14:
    _ETLDebugPrint("ETLMaverickParseNVReadFactory", "Failed on parsing Factory Response Header.\n");
    return 0;
  }

  v7 = *a1;
  v8 = **a1;
  if (v8 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_14;
  }

  if (BYTE1(v8) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_14;
  }

  if (HIWORD(v8) != 28)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_14;
  }

  if (v6 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseNVReadFactory", "Received response has only %u bytes, need %u\n", v6, 4);
    return 0;
  }

  else
  {
    v9 = v7[2];
    if (v9 != 5 && v7[2])
    {
      *a5 = v9;
      _ETLDebugPrint("ETLMaverickParseNVReadFactory", "Failed on NV Read via Factory command.\n", a3);
      return 0;
    }

    else
    {
      *a5 = v9;
      v10 = v7[3];
      *a4 = v10;
      if (v10 <= a3)
      {
        memcpy(__dst, v7 + 4, v10);
        return 1;
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseNVReadFactory", "Read amount, %u, is greater than the destination buffer size (%u)\n", v10, a3);
        return 0;
      }
    }
  }
}

uint64_t ETLMaverickNVWriteFactory(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || !a3)
  {
    _ETLDebugPrint("ETLMaverickNVWriteFactory", "Transport or srcBuffer cannot be NULL\n", a3, a4, a5, v9, v10, v11, v12, v13);
    return 0;
  }

  if (a4 >= 0x2000)
  {
    _ETLDebugPrint("ETLMaverickNVWriteFactory", "Buffer size (%u) should be less than %u\n", a3, a4, a5);
    return 0;
  }

  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickNVWriteFactory", "Failed to create command frame\n");
    return 0;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
LABEL_18:
    v7 = 0;
    goto LABEL_19;
  }

  v16 = 1965643;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_18;
  }

  if (!HDLCFrameInjectUnsignedInt() || !HDLCFrameInject() || !ETLSendCommand(a1, v14, a5) || !ETLSubsysFindMatchingResponse(a1, &v11, a5))
  {
    goto LABEL_18;
  }

  v7 = ETLMaverickParseNVWriteFactory(&v11);
LABEL_19:
  HDLCFrameFree();
  HDLCFrameFree();
  return v7;
}

uint64_t ETLMaverickParseNVWriteFactory(unsigned int *a1)
{
  v1 = a1[2];
  v2 = v1 - 4;
  if (v1 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
LABEL_12:
    _ETLDebugPrint("ETLMaverickParseNVWriteFactory", "Failed on parsing Factory Response Header.\n");
    return 0;
  }

  v3 = **a1;
  if (v3 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_12;
  }

  if (BYTE1(v3) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_12;
  }

  if (HIWORD(v3) != 29)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_12;
  }

  if (v2 <= 1)
  {
    _ETLDebugPrint("ETLMaverickParseNVWriteFactory", "Received response has only %u bytes, need %u\n", v2, 2);
    return 0;
  }

  else if (*(*a1 + 4) >= 2u)
  {
    _ETLDebugPrint("ETLMaverickParseNVWriteFactory", "Failed on writing NV via Factory command\n");
    return 0;
  }

  else
  {
    return 1;
  }
}

double ETLPingParametersInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = xmmword_2977CA770;
  *(a1 + 32) = &__block_literal_global;
  *(a1 + 40) = &__block_literal_global_4;
  return result;
}

uint64_t ETLPing(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2)
{
  if (!*(a2 + 8))
  {
LABEL_5:
    v14 = 0;
    v15 = 0;
    v5 = *(a2 + 16);
    if (v5 && (v6 = *(a2 + 24)) != 0)
    {
      if (*(a2 + 28))
      {
        v7 = v6 + 4;
      }

      else
      {
        v7 = v6;
      }

      v8 = malloc(v7);
    }

    else
    {
      if ((*(a2 + 28) & 1) == 0)
      {
        if (*a2)
        {
          v10 = (a2 + 4);
LABEL_24:
          v11 = 0;
          while (1)
          {
            if (!ETLBBSendEcho(a1, &v14))
            {
LABEL_29:
              v8 = 0;
              v12 = 0;
              goto LABEL_36;
            }

            if (ETLBBCheckEchoResponse(a1, &v14, 1, *v10))
            {
              break;
            }

            if ((*(*(a2 + 32) + 16))(*(a2 + 32), v11))
            {
              v11 = (v11 + 1);
              if (v11 < *a2)
              {
                continue;
              }
            }

            goto LABEL_29;
          }

          v8 = 0;
LABEL_34:
          (*(*(a2 + 40) + 16))(*(a2 + 40), v11);
          goto LABEL_35;
        }

        v8 = 0;
        goto LABEL_35;
      }

      v6 = *(a2 + 24);
      LODWORD(v7) = v6 + 4;
      v9 = malloc(v6 + 4);
      v8 = v9;
      if (!v6)
      {
        v14 = v9;
        LODWORD(v15) = 4;
        if (*a2)
        {
LABEL_14:
          v10 = (a2 + 4);
          if (v8)
          {
            v11 = 0;
            do
            {
              *v8 = v11;
              if (!ETLBBSendEcho(a1, &v14))
              {
                break;
              }

              if (ETLBBCheckEchoResponse(a1, &v14, 1, *v10))
              {
                goto LABEL_34;
              }

              if (!(*(*(a2 + 32) + 16))(*(a2 + 32), v11))
              {
                break;
              }

              v11 = (v11 + 1);
            }

            while (v11 < *a2);
            v12 = 0;
            goto LABEL_36;
          }

          goto LABEL_24;
        }

LABEL_35:
        v12 = 1;
LABEL_36:
        free(v8);
        return v12;
      }
    }

    memcpy(v8 + 1, v5, v6);
    v14 = v8;
    LODWORD(v15) = v7;
    if (*a2)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

  v4 = 0;
  while (ETLBBPing(a1))
  {
    usleep(1000 * *(a2 + 12));
    if (++v4 >= *(a2 + 8))
    {
      goto LABEL_5;
    }
  }

  return 0;
}

void *ETLTimestampGetTimeval(void *result, uint64_t a2)
{
  v2 = (43685 * *result) >> 16;
  v3 = 5 * (*result >> 16) + ((v2 + (((*result - v2) & 0xFFFE) >> 1)) >> 13) + 2;
  *a2 = ((v3 * 0x10624DD2F1A9FCuLL) >> 64) + 315964800;
  *(a2 + 8) = 1000 * ((v3 >> 2) - 1000 * (((v3 >> 2) * 0x4189374BC6A7F0uLL) >> 64));
  return result;
}

uint64_t ETLTimestampFromTimeval(uint64_t result, void *a2)
{
  if (result)
  {
    if (a2)
    {
      *a2 = ((-25600 * (*(result + 8) % 1250)) | ((800 * *result + *(result + 8) / 1250) << 16)) - 16565655306240000;
    }
  }

  return result;
}

uint64_t ETLTimestampGetHoursMinutesSeconds(uint64_t result, _DWORD *a2, int *a3, _DWORD *a4)
{
  *a4 = result % 60;
  *a3 = (result / 60) % 60;
  v4 = (result / 3600 * 0x2AAAAAAAAAAAAAABLL) >> 64;
  *a2 = result / 3600 - 24 * ((v4 >> 63) + (v4 >> 2));
  return result;
}

uint64_t ETLTimestampsEqual(unint64_t *a1, unint64_t *a2)
{
  v2 = bswap64(*a1);
  v3 = bswap64(*a2);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return (v5 - v6);
}

uint64_t eUICC::GetVinylType::Perform(uint64_t a1)
{
  *&v15[4] = 0xAAAAAAAAAAAAAAAALL;
  v1 = *a1;
  if (!*a1)
  {
    *v15 = 22;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "transport", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 80);
    goto LABEL_31;
  }

  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_30;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_30;
  }

  LODWORD(__src[0]) = 8453451;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_30;
  }

  if ((HDLCFrameInjectUnsignedChar() & 1) == 0)
  {
LABEL_30:
    *v15 = 12;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 85);
    goto LABEL_31;
  }

  v3 = *(a1 + 12);
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v18 = 0;
  *__src = 0u;
  v17 = 0u;
  *&v15[4] = 0;
  *&v15[8] = 0;
  while (1)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v5 = malloc(0x20uLL);
    if (!v5)
    {
      goto LABEL_33;
    }

    v6 = v5;
    v7 = HDLCFrameEncode();
    if (!v7)
    {
      goto LABEL_32;
    }

    v8 = v7;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v6, v7);
    }

    if (!*v1)
    {
LABEL_32:
      free(v6);
LABEL_33:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 700);
      v13 = 5;
      goto LABEL_34;
    }

    v9 = (*v1)(v1, v6, v8, &__ns, 1, v3, 0);
    rep = __ns.__rep_;
    free(v6);
    if (v9)
    {
      v11 = rep == v8;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      goto LABEL_33;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(v1, __src, &_ETLResponseRingBuffer, &__ns, v3) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_33;
    }

    v12 = LODWORD(__src[1]) >= 6 ? 6 : LODWORD(__src[1]);
    memcpy(&v15[4], __src[0], v12);
    if (v15[8] != 2)
    {
      break;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ - v4.__d_.__rep_ > 1000000 * v3)
    {
      v13 = 60;
      goto LABEL_34;
    }
  }

  v13 = 0;
LABEL_34:
  HDLCFrameFree();
  *v15 = v13;
LABEL_31:
  HDLCFrameFree();
  return *v15;
}

uint64_t eUICC::GetData::Perform@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 4) = v3;
  v4 = (a2 + 4);
  *(a2 + 228) = v3;
  *(a2 + 244) = v3;
  *(a2 + 196) = v3;
  *(a2 + 212) = v3;
  *(a2 + 164) = v3;
  *(a2 + 180) = v3;
  *(a2 + 132) = v3;
  *(a2 + 148) = v3;
  *(a2 + 100) = v3;
  *(a2 + 116) = v3;
  *(a2 + 68) = v3;
  *(a2 + 84) = v3;
  *(a2 + 36) = v3;
  *(a2 + 52) = v3;
  *(a2 + 20) = v3;
  v5 = *a1;
  if (!*a1)
  {
    *a2 = 22;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "transport", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 114);
    return HDLCFrameFree();
  }

  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_30;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_30;
  }

  LODWORD(__src[0]) = 5700939;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_30;
  }

  if ((HDLCFrameInjectUnsignedChar() & 1) == 0)
  {
LABEL_30:
    *a2 = 12;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 119);
    return HDLCFrameFree();
  }

  v7 = *(a1 + 12);
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v21 = 0;
  *__src = 0u;
  v20 = 0u;
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  v4[11] = 0u;
  v4[12] = 0u;
  v4[13] = 0u;
  v4[14] = 0u;
  *(v4 + 238) = 0u;
  while (1)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc(0x20uLL);
    if (!v9)
    {
      goto LABEL_33;
    }

    v10 = v9;
    v11 = HDLCFrameEncode();
    if (!v11)
    {
      goto LABEL_32;
    }

    v12 = v11;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v10, v11);
    }

    if (!*v5)
    {
LABEL_32:
      free(v10);
LABEL_33:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 700);
      v17 = 5;
      goto LABEL_34;
    }

    v13 = (*v5)(v5, v10, v12, &__ns, 1, v7, 0);
    rep = __ns.__rep_;
    free(v10);
    if (v13)
    {
      v15 = rep == v12;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      goto LABEL_33;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(v5, __src, &_ETLResponseRingBuffer, &__ns, v7) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_33;
    }

    v16 = LODWORD(__src[1]) >= 0xFE ? 254 : LODWORD(__src[1]);
    memcpy(v4, __src[0], v16);
    if (*(a2 + 8) != 2)
    {
      break;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ > 1000000 * v7)
    {
      v17 = 60;
      goto LABEL_34;
    }
  }

  v17 = 0;
LABEL_34:
  HDLCFrameFree();
  *a2 = v17;
  return HDLCFrameFree();
}

uint64_t eUICC::SwitchMode::Perform(uint64_t a1)
{
  *&v9[4] = 0xAAAAAAAAAAAAAAAALL;
  v10 = -1431655766;
  *v9 = -1;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v1 = *a1;
  if (!*a1)
  {
    *v9 = 22;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "transport", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 159);
    goto LABEL_21;
  }

  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_19;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
LABEL_19:
    *v9 = 12;
    v3 = 166;
LABEL_20:
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", v3);
    goto LABEL_21;
  }

  v11 = 5766475;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_19;
  }

  if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || (HDLCFrameInjectUnsignedChar() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (!ETLSendCommand(v1, v7, *(a1 + 12)) || (ETLSubsysFindMatchingResponse(v1, v5, *(a1 + 12)) & 1) == 0)
  {
    *v9 = 5;
    v3 = 170;
    goto LABEL_20;
  }

  if (DWORD2(v5[0]) != 8)
  {
    *v9 = 40;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "sizeof(result) == HDLCFrameGetPayloadLength( &rsp)", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 171);
    goto LABEL_21;
  }

  if (*(*&v5[0] + 4) != 1)
  {
    *v9 = -4;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "VinylError::kStatusSuccess == result.cmd_ack_status", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 177);
    goto LABEL_21;
  }

  HDLCFrameFree();
  if (!HDLCFrameCreateUplink() || !ETLMaverickAddBSPCommandHeader(v7, 75) || (HDLCFrameInjectUnsignedShort() & 1) == 0)
  {
    *v9 = 12;
    v3 = 185;
    goto LABEL_20;
  }

  *v9 = eUICC::PollResult<eUICC::SwitchMode::Response::{unnamed type#1}>(v7, &v9[4], v1, *(a1 + 12));
LABEL_21:
  HDLCFrameFree();
  HDLCFrameFree();
  return *v9;
}

uint64_t eUICC::PollResult<eUICC::SwitchMode::Response::{unnamed type#1}>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  *a2 = 0;
  *(a2 + 8) = 0;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = v9;
    v11 = HDLCFrameEncode();
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = v11;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v10, v11);
    }

    if (!*a3)
    {
LABEL_21:
      free(v10);
LABEL_22:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 700);
      v17 = 5;
      goto LABEL_23;
    }

    v13 = (*a3)(a3, v10, v12, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v10);
    if (v13)
    {
      v15 = rep == v12;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      goto LABEL_22;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, v19, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_22;
    }

    if (DWORD2(v19[0]) < 0xC)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", DWORD2(v19[0]), 12);
    }

    else
    {
      v16 = *(*&v19[0] + 8);
      *a2 = **&v19[0];
      *(a2 + 8) = v16;
      if (v16 != 2)
      {
        v17 = 0;
        goto LABEL_23;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v17 = 60;
LABEL_23:
  HDLCFrameFree();
  return v17;
}

uint64_t eUICC::InstallTicket::Perform(uint64_t a1)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v1 = *a1;
  v2 = *(a1 + 24);
  if (v2 % 0x5DC)
  {
    v3 = v2 / 0x5DC + 1;
  }

  else
  {
    v3 = v2 / 0x5DC;
  }

  if (!v1)
  {
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "transport", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 223);
    goto LABEL_57;
  }

  if (!*(a1 + 16) || !v2 || !v3)
  {
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "request.data && request.data_len && segment_count", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 224);
LABEL_57:
    v25 = 22;
    v6 = 2863311530;
    goto LABEL_58;
  }

  v5 = 0;
  v6 = 2863311530;
  v28 = v3;
  while (2)
  {
    v29 = v5;
    if (!HDLCFrameCreateUplink())
    {
      goto LABEL_68;
    }

    if (HDLCFrameGetFreeSpace() < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
LABEL_68:
      v27 = 239;
      goto LABEL_69;
    }

    LODWORD(v36[0]) = 5897547;
    if ((HDLCFrameInject() & 1) == 0)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      goto LABEL_68;
    }

    if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || (HDLCFrameInject() & 1) == 0)
    {
      goto LABEL_68;
    }

    v7 = *(a1 + 32);
    v8 = malloc((2 * DWORD2(v33) + 32));
    if (!v8)
    {
LABEL_64:
      _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 243);
      v25 = 5;
      break;
    }

    v9 = v8;
    v10 = HDLCFrameEncode();
    if (!v10)
    {
      goto LABEL_63;
    }

    v11 = v10;
    LODWORD(v36[0]) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v9, v10);
    }

    if (!*v1)
    {
LABEL_63:
      free(v9);
      goto LABEL_64;
    }

    v12 = (*v1)(v1, v9, v11, v36, 1, v7, 0);
    v13 = v36[0];
    free(v9);
    if (!v12 || v13 != v11)
    {
      goto LABEL_64;
    }

    v14 = *(a1 + 32);
    LOBYTE(v36[0]) = 75;
    if (!_ETLResponseRingBuffer)
    {
      v15 = v14;
      TelephonyUtilRingBufferInitialize();
      v14 = v15;
    }

    if (!ETLFindMatchingResponseUsingBuffer(v1, v31, &_ETLResponseRingBuffer, v36, v14) || LOBYTE(v36[0]) != 75)
    {
      goto LABEL_64;
    }

    if (DWORD2(v31[0]) != 6)
    {
      _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "sizeof( result) == HDLCFrameGetPayloadLength( &rsp)", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 244);
      v25 = 40;
      break;
    }

    if (*(*&v31[0] + 4) != 1)
    {
      _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "VinylError::kStatusSuccess == result.cmd_ack_status", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 247);
      v25 = 4294967286;
      break;
    }

    HDLCFrameFree();
    if (!HDLCFrameCreateUplink())
    {
      goto LABEL_65;
    }

    FreeSpace = HDLCFrameGetFreeSpace();
    if (FreeSpace < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
      v27 = 254;
      goto LABEL_69;
    }

    LODWORD(v36[0]) = 4980043;
    if ((HDLCFrameInject() & 1) == 0)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      v27 = 254;
      goto LABEL_69;
    }

    if ((HDLCFrameInjectUnsignedShort() & 1) == 0)
    {
LABEL_65:
      v27 = 254;
LABEL_69:
      _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", v27);
      v25 = 12;
      break;
    }

    v17 = *(a1 + 32);
    v30.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v6 = 0;
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    while (1)
    {
      __ns.__rep_ = 100000000;
      std::this_thread::sleep_for (&__ns);
      v18 = malloc((2 * DWORD2(v33) + 32));
      if (!v18)
      {
        goto LABEL_60;
      }

      v19 = v18;
      v20 = HDLCFrameEncode();
      if (!v20)
      {
        goto LABEL_59;
      }

      v21 = v20;
      LODWORD(__ns.__rep_) = -1431655766;
      if ((_ETLDebugFlags & 2) != 0)
      {
        off_2A18A5818(&str_3, 0, v19, v20);
      }

      if (!*v1)
      {
LABEL_59:
        free(v19);
LABEL_60:
        _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 700);
        v25 = 5;
LABEL_61:
        HDLCFrameFree();
        _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "0 == response.error", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 258);
        goto LABEL_58;
      }

      v22 = (*v1)(v1, v19, v21, &__ns, 1, v17, 0);
      rep = __ns.__rep_;
      free(v19);
      if (v22)
      {
        v24 = rep == v21;
      }

      else
      {
        v24 = 0;
      }

      if (!v24)
      {
        goto LABEL_60;
      }

      LOBYTE(__ns.__rep_) = 75;
      if (!_ETLResponseRingBuffer)
      {
        TelephonyUtilRingBufferInitialize();
      }

      if (!ETLFindMatchingResponseUsingBuffer(v1, v36, &_ETLResponseRingBuffer, &__ns, v17) || LOBYTE(__ns.__rep_) != 75)
      {
        goto LABEL_60;
      }

      if (DWORD2(v36[0]) >= 0xB)
      {
        break;
      }

      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", DWORD2(v36[0]), 11);
LABEL_36:
      if (std::chrono::steady_clock::now().__d_.__rep_ - v30.__d_.__rep_ > 1000000 * v17)
      {
        v25 = 60;
        goto LABEL_61;
      }
    }

    v6 = **&v36[0];
    if (((*(*&v36[0] + 4) | ((*(*&v36[0] + 8) | (*(*&v36[0] + 10) << 16)) << 32)) & 0xFF00000000) == 0x200000000)
    {
      goto LABEL_36;
    }

    HDLCFrameFree();
    v25 = 0;
    v5 = v29 + 1;
    if (v29 + 1 != v28)
    {
      continue;
    }

    break;
  }

LABEL_58:
  HDLCFrameFree();
  return v25 | (v6 << 32);
}

uint64_t eUICC::StreamAPDU::Perform(uint64_t a1)
{
  *&v14[4] = 0xAAAAAAAAAAAAAAAALL;
  v15 = -1431655766;
  *v14 = -1;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v1 = _ETLDebugFlags & 2;
  _ETLDebugFlags &= ~2u;
  v2 = *a1;
  if (!*a1)
  {
    *v14 = 22;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "transport", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 294);
    goto LABEL_34;
  }

  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_32;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_32;
  }

  v16 = 5832011;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_32;
  }

  if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_32;
  }

  v4 = HDLCFrameInjectUnsignedChar();
  if (!v4 || !*(a1 + 14))
  {
LABEL_20:
    if (v4)
    {
      if (ETLSendCommand(v2, v12, *(a1 + 32)))
      {
        _ETLDebugFlags |= v1;
        if (ETLSubsysFindMatchingResponse(v2, v10, *(a1 + 32)))
        {
          if (DWORD2(v10[0]) != 6)
          {
            *v14 = 40;
            _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "sizeof( result) == HDLCFrameGetPayloadLength( &rsp)", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 320);
            goto LABEL_34;
          }

          if (*(*&v10[0] + 4) != 1)
          {
            *v14 = -10;
            _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "VinylError::kStatusSuccess == result.cmd_ack_status", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 323);
            goto LABEL_34;
          }

          HDLCFrameFree();
          if (HDLCFrameCreateUplink() && ETLMaverickAddBSPCommandHeader(v12, 75) && (HDLCFrameInjectUnsignedShort() & 1) != 0)
          {
            *v14 = eUICC::PollResult<eUICC::StreamAPDU::Response::{unnamed type#1}>(v12, &v14[4], v2, *(a1 + 32));
            goto LABEL_34;
          }

          *v14 = 12;
          v8 = 330;
        }

        else
        {
          *v14 = 5;
          v8 = 319;
        }
      }

      else
      {
        *v14 = 5;
        v8 = 313;
      }

LABEL_33:
      _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", v8);
      goto LABEL_34;
    }

LABEL_32:
    *v14 = 12;
    v8 = 310;
    goto LABEL_33;
  }

  v5 = 0;
  v6 = 1;
  while (*(a1 + 24) >= v6 - 1)
  {
    if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInject() || !HDLCFrameInjectUnsignedChar())
    {
      goto LABEL_32;
    }

    v4 = HDLCFrameInject();
    v5 += 32;
    if (v4)
    {
      v7 = v6 >= *(a1 + 14);
    }

    else
    {
      v7 = 1;
    }

    ++v6;
    if (v7)
    {
      goto LABEL_20;
    }
  }

  *v14 = 22;
  _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "i <= request.apdu_payload.apdu_data_size", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 304);
LABEL_34:
  _ETLDebugFlags |= v1;
  HDLCFrameFree();
  return *v14;
}

uint64_t eUICC::PollResult<eUICC::StreamAPDU::Response::{unnamed type#1}>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  *a2 = 0;
  *(a2 + 7) = 0;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = v9;
    v11 = HDLCFrameEncode();
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = v11;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v10, v11);
    }

    if (!*a3)
    {
LABEL_21:
      free(v10);
LABEL_22:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 700);
      v17 = 5;
      goto LABEL_23;
    }

    v13 = (*a3)(a3, v10, v12, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v10);
    if (v13)
    {
      v15 = rep == v12;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      goto LABEL_22;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, v19, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_22;
    }

    if (DWORD2(v19[0]) < 0xB)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", DWORD2(v19[0]), 11);
    }

    else
    {
      v16 = **&v19[0];
      *(a2 + 7) = *(*&v19[0] + 7);
      *a2 = v16;
      if (*(a2 + 8) != 2)
      {
        v17 = 0;
        goto LABEL_23;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v17 = 60;
LABEL_23:
  HDLCFrameFree();
  return v17;
}

uint64_t eUICC::InitPersoSession::Perform@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x90uLL);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  v4[8] = 0u;
  *v4 = -1;
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_2A1E53830;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v6 = *a1;
  if (!*a1)
  {
    v7 = 361;
    v8 = "transport";
    v9 = 22;
LABEL_15:
    *v4 = v9;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v8, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", v7);
    return HDLCFrameFree();
  }

  if (!HDLCFrameCreateUplink())
  {
LABEL_14:
    v7 = 370;
    v8 = "success";
    v9 = 12;
    goto LABEL_15;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_14;
  }

  v13 = 5963083;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_14;
  }

  if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedShort() || (HDLCFrameInject() & 1) == 0)
  {
    goto LABEL_14;
  }

  *v4 = eUICC::PollResult<eUICC::InitPersoSession::Response::contents>(v11, (v4 + 4), v6, *(a1 + 7));
  return HDLCFrameFree();
}

uint64_t eUICC::PollResult<eUICC::InitPersoSession::Response::contents>(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v21 = 0;
  *__src = 0u;
  v20 = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  *(a2 + 121) = 0u;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = v9;
    v11 = HDLCFrameEncode();
    if (!v11)
    {
      goto LABEL_24;
    }

    v12 = v11;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v10, v11);
    }

    if (!*a3)
    {
LABEL_24:
      free(v10);
LABEL_25:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 700);
      v17 = 5;
      goto LABEL_26;
    }

    v13 = (*a3)(a3, v10, v12, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v10);
    if (v13)
    {
      v15 = rep == v12;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, __src, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_25;
    }

    if (LODWORD(__src[1]) < 5)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", LODWORD(__src[1]), 5);
    }

    else
    {
      if (LODWORD(__src[1]) >= 0x89)
      {
        v16 = 137;
      }

      else
      {
        v16 = LODWORD(__src[1]);
      }

      memcpy(a2, __src[0], v16);
      if (*(a2 + 4) != 2)
      {
        v17 = 0;
        goto LABEL_26;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v17 = 60;
LABEL_26:
  HDLCFrameFree();
  return v17;
}

uint64_t eUICC::AuthPersoSession::Perform@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x210uLL);
  bzero(v4, 0x210uLL);
  *v4 = -1;
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_2A1E53880;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  v6 = _ETLDebugFlags & 2;
  _ETLDebugFlags &= ~2u;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v7 = *a1;
  if (!*a1)
  {
    v8 = 398;
    v9 = "transport";
    v10 = 22;
LABEL_15:
    *v4 = v10;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v9, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", v8);
    goto LABEL_16;
  }

  if (!HDLCFrameCreateUplink())
  {
LABEL_14:
    v8 = 407;
    v9 = "success";
    v10 = 12;
    goto LABEL_15;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_14;
  }

  v14 = 6028619;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_14;
  }

  if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedShort() || (HDLCFrameInject() & 1) == 0)
  {
    goto LABEL_14;
  }

  _ETLDebugFlags |= v6;
  *v4 = eUICC::PollResult<eUICC::AuthPersoSession::Response::contents>(v12, v4 + 4, v7, *(a1 + 516));
LABEL_16:
  _ETLDebugFlags |= v6;
  return HDLCFrameFree();
}

uint64_t eUICC::PollResult<eUICC::AuthPersoSession::Response::contents>(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v21 = 0;
  *__src = 0u;
  v20 = 0u;
  bzero(a2, 0x209uLL);
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = v9;
    v11 = HDLCFrameEncode();
    if (!v11)
    {
      goto LABEL_24;
    }

    v12 = v11;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v10, v11);
    }

    if (!*a3)
    {
LABEL_24:
      free(v10);
LABEL_25:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 700);
      v17 = 5;
      goto LABEL_26;
    }

    v13 = (*a3)(a3, v10, v12, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v10);
    if (v13)
    {
      v15 = rep == v12;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, __src, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_25;
    }

    if (LODWORD(__src[1]) < 5)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", LODWORD(__src[1]), 5);
    }

    else
    {
      if (LODWORD(__src[1]) >= 0x209)
      {
        v16 = 521;
      }

      else
      {
        v16 = LODWORD(__src[1]);
      }

      memcpy(a2, __src[0], v16);
      if (a2[4] != 2)
      {
        v17 = 0;
        goto LABEL_26;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v17 = 60;
LABEL_26:
  HDLCFrameFree();
  return v17;
}

uint64_t eUICC::FinalizePersoSession::Perform@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xCuLL);
  *v4 = 0;
  v4[2] = 0;
  *v4 = -1;
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_2A1E538D0;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v6 = *a1;
  if (!*a1)
  {
    v7 = 437;
    v8 = "transport";
    v9 = 22;
LABEL_15:
    *v4 = v9;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v8, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", v7);
    return HDLCFrameFree();
  }

  if (!HDLCFrameCreateUplink())
  {
LABEL_14:
    v7 = 446;
    v8 = "success";
    v9 = 12;
    goto LABEL_15;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_14;
  }

  v13 = 6094155;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_14;
  }

  if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedShort() || (HDLCFrameInject() & 1) == 0)
  {
    goto LABEL_14;
  }

  *v4 = eUICC::PollResult<eUICC::FinalizePersoSession::Response::contents>(v11, v4 + 4, v6, *(a1 + 68));
  return HDLCFrameFree();
}

uint64_t eUICC::PollResult<eUICC::FinalizePersoSession::Response::contents>(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v21 = 0;
  *__src = 0u;
  v20 = 0u;
  *a2 = 0;
  *(a2 + 3) = 0;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = v9;
    v11 = HDLCFrameEncode();
    if (!v11)
    {
      goto LABEL_24;
    }

    v12 = v11;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v10, v11);
    }

    if (!*a3)
    {
LABEL_24:
      free(v10);
LABEL_25:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 700);
      v17 = 5;
      goto LABEL_26;
    }

    v13 = (*a3)(a3, v10, v12, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v10);
    if (v13)
    {
      v15 = rep == v12;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, __src, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_25;
    }

    if (LODWORD(__src[1]) < 5)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", LODWORD(__src[1]), 5);
    }

    else
    {
      if (LODWORD(__src[1]) >= 7)
      {
        v16 = 7;
      }

      else
      {
        v16 = LODWORD(__src[1]);
      }

      memcpy(a2, __src[0], v16);
      if (a2[4] != 2)
      {
        v17 = 0;
        goto LABEL_26;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v17 = 60;
LABEL_26:
  HDLCFrameFree();
  return v17;
}

uint64_t eUICC::ValidatePerso::Perform@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x1780uLL);
  bzero(v4, 0x1780uLL);
  *v4 = -1;
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_2A1E53920;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  v6 = _ETLDebugFlags & 2;
  _ETLDebugFlags &= ~2u;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v7 = *a1;
  if (!*a1)
  {
    v8 = 474;
    v9 = "transport";
    v10 = 22;
LABEL_13:
    *v4 = v10;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v9, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", v8);
    goto LABEL_14;
  }

  if (!HDLCFrameCreateUplink())
  {
LABEL_12:
    v8 = 481;
    v9 = "success";
    v10 = 12;
    goto LABEL_13;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_12;
  }

  v14 = 6356299;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_12;
  }

  if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedShort() || (HDLCFrameInject() & 1) == 0)
  {
    goto LABEL_12;
  }

  _ETLDebugFlags |= v6;
  *v4 = eUICC::PollResult<eUICC::ValidatePerso::Response::contents>(v12, v4 + 4, v7, *(a1 + 20));
LABEL_14:
  _ETLDebugFlags |= v6;
  return HDLCFrameFree();
}

uint64_t eUICC::PollResult<eUICC::ValidatePerso::Response::contents>(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v21 = 0;
  *__src = 0u;
  v20 = 0u;
  bzero(a2, 0x1779uLL);
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = v9;
    v11 = HDLCFrameEncode();
    if (!v11)
    {
      goto LABEL_24;
    }

    v12 = v11;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v10, v11);
    }

    if (!*a3)
    {
LABEL_24:
      free(v10);
LABEL_25:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 700);
      v17 = 5;
      goto LABEL_26;
    }

    v13 = (*a3)(a3, v10, v12, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v10);
    if (v13)
    {
      v15 = rep == v12;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, __src, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_25;
    }

    if (LODWORD(__src[1]) < 5)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", LODWORD(__src[1]), 5);
    }

    else
    {
      if (LODWORD(__src[1]) >= 0x1779)
      {
        v16 = 6009;
      }

      else
      {
        v16 = LODWORD(__src[1]);
      }

      memcpy(a2, __src[0], v16);
      if (a2[4] != 2)
      {
        v17 = 0;
        goto LABEL_26;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v17 = 60;
LABEL_26:
  HDLCFrameFree();
  return v17;
}

uint64_t eUICC::DeleteProfile::Perform(uint64_t a1)
{
  *&v16[4] = 0xAAAAAAAAAAAAAAAALL;
  v1 = _ETLDebugFlags & 2;
  _ETLDebugFlags &= ~2u;
  v2 = *a1;
  if (!*a1)
  {
    *v16 = 22;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "transport", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 512);
    goto LABEL_12;
  }

  if (!HDLCFrameCreateUplink())
  {
LABEL_11:
    *v16 = 12;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 518);
    goto LABEL_12;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_11;
  }

  LODWORD(__src[0]) = 7011659;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_11;
  }

  if (!HDLCFrameInjectUnsignedChar() || (HDLCFrameInjectUnsignedChar() & 1) == 0)
  {
    goto LABEL_11;
  }

  _ETLDebugFlags |= v1;
  v4 = *(a1 + 12);
  v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v19 = 0;
  *__src = 0u;
  v18 = 0u;
  *&v16[4] = 0;
  *&v16[7] = 0;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v7 = malloc(0x20uLL);
    if (!v7)
    {
      goto LABEL_36;
    }

    v8 = v7;
    v9 = HDLCFrameEncode();
    if (!v9)
    {
      goto LABEL_35;
    }

    v10 = v9;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v8, v9);
    }

    if (!*v2)
    {
LABEL_35:
      free(v8);
LABEL_36:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 700);
      v15 = 5;
      goto LABEL_37;
    }

    v11 = (*v2)(v2, v8, v10, &__ns, 1, v4, 0);
    rep = __ns.__rep_;
    free(v8);
    if (v11)
    {
      v13 = rep == v10;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      goto LABEL_36;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(v2, __src, &_ETLResponseRingBuffer, &__ns, v4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_36;
    }

    if (LODWORD(__src[1]) < 5)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", LODWORD(__src[1]), 5);
    }

    else
    {
      if (LODWORD(__src[1]) >= 7)
      {
        v14 = 7;
      }

      else
      {
        v14 = LODWORD(__src[1]);
      }

      memcpy(&v16[4], __src[0], v14);
      if (v16[8] != 2)
      {
        v15 = 0;
        goto LABEL_37;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v5.__d_.__rep_ <= 1000000 * v4);
  v15 = 60;
LABEL_37:
  HDLCFrameFree();
  *v16 = v15;
LABEL_12:
  _ETLDebugFlags |= v1;
  HDLCFrameFree();
  return *v16;
}

uint64_t eUICC::GetCSN::Perform@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x1CuLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  *(v4 + 6) = 0;
  *v4 = -1;
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_2A1E53970;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  v6 = *a1;
  if (!*a1)
  {
    v10 = 548;
    v7 = "transport";
    v11 = 22;
LABEL_34:
    *v4 = v11;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v7, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", v10);
    return HDLCFrameFree();
  }

  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_32;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
LABEL_32:
    v10 = 553;
    v7 = "success";
LABEL_33:
    v11 = 12;
    goto LABEL_34;
  }

  LODWORD(__src[0]) = 5504331;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_32;
  }

  v7 = "success";
  if ((HDLCFrameInjectUnsignedChar() & 1) == 0)
  {
    v10 = 553;
    goto LABEL_33;
  }

  v8 = *(a1 + 12);
  v9.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *(v4 + 4) = 0;
  v25 = 0;
  rep = v9.__d_.__rep_;
  *__src = 0u;
  v24 = 0u;
  *(v4 + 12) = 0;
  *(v4 + 18) = 0;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v12 = malloc(0x20uLL);
    if (!v12)
    {
      goto LABEL_38;
    }

    v13 = v12;
    v14 = HDLCFrameEncode();
    if (!v14)
    {
      goto LABEL_37;
    }

    v15 = v14;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v13, v14);
    }

    if (!*v6)
    {
LABEL_37:
      free(v13);
LABEL_38:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 700);
      v20 = 5;
      goto LABEL_39;
    }

    v16 = (*v6)(v6, v13, v15, &__ns, 1, v8, 0);
    v17 = __ns.__rep_;
    free(v13);
    if (v16)
    {
      v18 = v17 == v15;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      goto LABEL_38;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(v6, __src, &_ETLResponseRingBuffer, &__ns, v8) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_38;
    }

    if (LODWORD(__src[1]) < 5)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", LODWORD(__src[1]), 5);
    }

    else
    {
      if (LODWORD(__src[1]) >= 0x16)
      {
        v19 = 22;
      }

      else
      {
        v19 = LODWORD(__src[1]);
      }

      memcpy(v4 + 4, __src[0], v19);
      if (*(v4 + 8) != 2)
      {
        v20 = 0;
        goto LABEL_39;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - rep <= 1000000 * v8);
  v20 = 60;
LABEL_39:
  HDLCFrameFree();
  *v4 = v20;
  return HDLCFrameFree();
}

unint64_t eUICC::GetSIMSKU::Perform(uint64_t a1)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v1 = *a1;
  if (!*a1)
  {
    v11 = -1431699456;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "transport", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 581);
    v12 = 43520;
    v14 = 22;
LABEL_23:
    v13 = 170;
    goto LABEL_24;
  }

  if (!HDLCFrameCreateUplink())
  {
LABEL_22:
    v11 = -1431699456;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 585);
    v12 = 43520;
    v14 = 12;
    goto LABEL_23;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_22;
  }

  v21 = 5242443;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_22;
  }

  v3 = *(a1 + 8);
  v4 = malloc((2 * DWORD2(v18) + 32));
  if (!v4)
  {
LABEL_26:
    v11 = -1431699456;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 589);
    v12 = 43520;
    v13 = 170;
    v14 = 5;
    goto LABEL_24;
  }

  v5 = v4;
  v6 = HDLCFrameEncode();
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  v21 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v5, v6);
  }

  if (!*v1)
  {
LABEL_25:
    free(v5);
    goto LABEL_26;
  }

  v8 = (*v1)(v1, v5, v7, &v21, 1, v3, 0);
  v9 = v21;
  free(v5);
  if (!v8 || v9 != v7)
  {
    goto LABEL_26;
  }

  v10 = *(a1 + 8);
  LOBYTE(v21) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  if (!ETLFindMatchingResponseUsingBuffer(v1, v16, &_ETLResponseRingBuffer, &v21, v10) || v21 != 75)
  {
    goto LABEL_26;
  }

  v11 = **&v16[0] & 0xFFFF0000;
  v12 = **&v16[0] & 0xFF00;
  v13 = **&v16[0];
  if (*(*&v16[0] + 4) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

LABEL_24:
  HDLCFrameFree();
  HDLCFrameFree();
  return v14 | ((v12 | v13 | v11) << 32);
}

uint64_t eUICC::StoreData::Perform@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  memset(a2 + 1, 170, 0x1780uLL);
  *a2 = -1;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v4 = *a1;
  if (!*a1)
  {
    *a2 = 22;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "transport", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 640);
    return HDLCFrameFree();
  }

  if (!*(a1 + 16) || (*(a1 + 24) - 1) >= 0x7FFF)
  {
    *a2 = 22;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "request.data && request.data_len && (request.data_len < kRequestMaxSize)", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 641);
    return HDLCFrameFree();
  }

  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
LABEL_22:
    *a2 = 12;
    v5 = 649;
LABEL_23:
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", v5);
    return HDLCFrameFree();
  }

  v11 = 10943819;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_22;
  }

  if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedShort() || (HDLCFrameInject() & 1) == 0)
  {
    goto LABEL_22;
  }

  if ((ETLSendCommand(v4, v9, *(a1 + 32)) & 1) == 0)
  {
    *a2 = 5;
    v5 = 652;
    goto LABEL_23;
  }

  if ((ETLSubsysFindMatchingResponse(v4, v7, *(a1 + 32)) & 1) == 0)
  {
    *a2 = 5;
    v5 = 655;
    goto LABEL_23;
  }

  if (DWORD2(v7[0]) != 6)
  {
    *a2 = 40;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "sizeof( result) == HDLCFrameGetPayloadLength( &rsp)", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 657);
    return HDLCFrameFree();
  }

  if (*(*&v7[0] + 4) != 1)
  {
    *a2 = -10;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", "VinylError::kStatusSuccess == result.cmd_ack_status", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 661);
    return HDLCFrameFree();
  }

  HDLCFrameFree();
  if (!HDLCFrameCreateUplink() || !ETLMaverickAddBSPCommandHeader(v9, 75) || (HDLCFrameInjectUnsignedShort() & 1) == 0)
  {
    *a2 = 12;
    v5 = 668;
    goto LABEL_23;
  }

  *a2 = eUICC::PollResult<eUICC::StoreData::Response::{unnamed type#1}>(v9, a2 + 4, v4, *(a1 + 32));
  return HDLCFrameFree();
}

uint64_t eUICC::PollResult<eUICC::StoreData::Response::{unnamed type#1}>(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v21 = 0;
  *__src = 0u;
  v20 = 0u;
  bzero(a2, 0x177DuLL);
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = v9;
    v11 = HDLCFrameEncode();
    if (!v11)
    {
      goto LABEL_24;
    }

    v12 = v11;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v10, v11);
    }

    if (!*a3)
    {
LABEL_24:
      free(v10);
LABEL_25:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", "success", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ETL/ExtendedLibrary/ETLEUICC.cpp", 700);
      v17 = 5;
      goto LABEL_26;
    }

    v13 = (*a3)(a3, v10, v12, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v10);
    if (v13)
    {
      v15 = rep == v12;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, __src, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_25;
    }

    if (LODWORD(__src[1]) < 9)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", LODWORD(__src[1]), 9);
    }

    else
    {
      if (LODWORD(__src[1]) >= 0x177D)
      {
        v16 = 6013;
      }

      else
      {
        v16 = LODWORD(__src[1]);
      }

      memcpy(a2, __src[0], v16);
      if (a2[8] != 2)
      {
        v17 = 0;
        goto LABEL_26;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v17 = 60;
LABEL_26:
  HDLCFrameFree();
  return v17;
}

BOOL ETLeUICCGetCSN(uint64_t a1, _OWORD *a2, char a3, int a4)
{
  v12 = 0;
  v11 = 0;
  v10 = a3;
  v13 = a4;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = a1;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  eUICC::GetCSN::Perform(&v9, &v7);
  if (a2 && !*v7 && *(v7 + 8) == 1)
  {
    *a2 = *(v7 + 10);
  }

  v5 = v8;
  if (!v8 || atomic_fetch_add((v8 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    return a2 != 0;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a2 != 0;
}

uint64_t ETLeUICCGetSimType(uint64_t a1, int *a2, char a3, int a4)
{
  *a2 = 0;
  v15 = 0;
  v14 = 0;
  v13 = a3;
  v16 = a4;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = a1;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  eUICC::GetCSN::Perform(&v12, &v10);
  v5 = *(v10 + 8);
  if (v5 == 1)
  {
    v7 = 2;
  }

  else
  {
    result = 0;
    if (v5 != 3)
    {
      goto LABEL_6;
    }

    v7 = 1;
  }

  *a2 = v7;
  result = 1;
LABEL_6:
  v8 = v11;
  if (v11)
  {
    if (!atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      return v9;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<eUICC::InitPersoSession::Response *,std::shared_ptr<eUICC::InitPersoSession::Response>::__shared_ptr_default_delete<eUICC::InitPersoSession::Response,eUICC::InitPersoSession::Response>,std::allocator<eUICC::InitPersoSession::Response>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::InitPersoSession::Response *,std::shared_ptr<eUICC::InitPersoSession::Response>::__shared_ptr_default_delete<eUICC::InitPersoSession::Response,eUICC::InitPersoSession::Response>,std::allocator<eUICC::InitPersoSession::Response>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::InitPersoSession::Response *,std::shared_ptr<eUICC::InitPersoSession::Response>::__shared_ptr_default_delete<eUICC::InitPersoSession::Response,eUICC::InitPersoSession::Response>,std::allocator<eUICC::InitPersoSession::Response>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002977CA812)
  {
    if (((v2 & 0x80000002977CA812 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002977CA812))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002977CA812 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<eUICC::InitPersoSession::Response>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<eUICC::AuthPersoSession::Response *,std::shared_ptr<eUICC::AuthPersoSession::Response>::__shared_ptr_default_delete<eUICC::AuthPersoSession::Response,eUICC::AuthPersoSession::Response>,std::allocator<eUICC::AuthPersoSession::Response>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::AuthPersoSession::Response *,std::shared_ptr<eUICC::AuthPersoSession::Response>::__shared_ptr_default_delete<eUICC::AuthPersoSession::Response,eUICC::AuthPersoSession::Response>,std::allocator<eUICC::AuthPersoSession::Response>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::AuthPersoSession::Response *,std::shared_ptr<eUICC::AuthPersoSession::Response>::__shared_ptr_default_delete<eUICC::AuthPersoSession::Response,eUICC::AuthPersoSession::Response>,std::allocator<eUICC::AuthPersoSession::Response>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002977CA903)
  {
    if (((v2 & 0x80000002977CA903 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002977CA903))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002977CA903 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<eUICC::FinalizePersoSession::Response *,std::shared_ptr<eUICC::FinalizePersoSession::Response>::__shared_ptr_default_delete<eUICC::FinalizePersoSession::Response,eUICC::FinalizePersoSession::Response>,std::allocator<eUICC::FinalizePersoSession::Response>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::FinalizePersoSession::Response *,std::shared_ptr<eUICC::FinalizePersoSession::Response>::__shared_ptr_default_delete<eUICC::FinalizePersoSession::Response,eUICC::FinalizePersoSession::Response>,std::allocator<eUICC::FinalizePersoSession::Response>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::FinalizePersoSession::Response *,std::shared_ptr<eUICC::FinalizePersoSession::Response>::__shared_ptr_default_delete<eUICC::FinalizePersoSession::Response,eUICC::FinalizePersoSession::Response>,std::allocator<eUICC::FinalizePersoSession::Response>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002977CA9F8)
  {
    if (((v2 & 0x80000002977CA9F8 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002977CA9F8))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002977CA9F8 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<eUICC::ValidatePerso::Response *,std::shared_ptr<eUICC::ValidatePerso::Response>::__shared_ptr_default_delete<eUICC::ValidatePerso::Response,eUICC::ValidatePerso::Response>,std::allocator<eUICC::ValidatePerso::Response>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::ValidatePerso::Response *,std::shared_ptr<eUICC::ValidatePerso::Response>::__shared_ptr_default_delete<eUICC::ValidatePerso::Response,eUICC::ValidatePerso::Response>,std::allocator<eUICC::ValidatePerso::Response>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::ValidatePerso::Response *,std::shared_ptr<eUICC::ValidatePerso::Response>::__shared_ptr_default_delete<eUICC::ValidatePerso::Response,eUICC::ValidatePerso::Response>,std::allocator<eUICC::ValidatePerso::Response>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002977CAAEALL)
  {
    if (((v2 & 0x80000002977CAAEALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002977CAAEALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002977CAAEALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<eUICC::GetCSN::Response *,std::shared_ptr<eUICC::GetCSN::Response>::__shared_ptr_default_delete<eUICC::GetCSN::Response,eUICC::GetCSN::Response>,std::allocator<eUICC::GetCSN::Response>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::GetCSN::Response *,std::shared_ptr<eUICC::GetCSN::Response>::__shared_ptr_default_delete<eUICC::GetCSN::Response,eUICC::GetCSN::Response>,std::allocator<eUICC::GetCSN::Response>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::GetCSN::Response *,std::shared_ptr<eUICC::GetCSN::Response>::__shared_ptr_default_delete<eUICC::GetCSN::Response,eUICC::GetCSN::Response>,std::allocator<eUICC::GetCSN::Response>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002977CABCDLL)
  {
    if (((v2 & 0x80000002977CABCDLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002977CABCDLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002977CABCDLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_Unlock(_BYTE *a1, unsigned int a2, unsigned __int8 *a3, int a4)
{
  v39 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 13 || a4 != 6)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 65;
  v8 = *a3;
  a1[1] = v8;
  v9 = a3[1];
  a1[2] = v9;
  v10 = a3[2];
  a1[3] = v10;
  v11 = a3[3];
  a1[4] = v11;
  v12 = a3[4];
  a1[5] = v12;
  v13 = a3[5];
  a1[6] = v13;
  v14 = crc_16_l_table[v8 ^ 0xA];
  v15 = crc_16_l_table[(v9 ^ v14) ^ 0x5C];
  v16 = crc_16_l_table[(v10 ^ v15 ^ HIBYTE(v14))];
  v17 = crc_16_l_table[(v11 ^ v16 ^ HIBYTE(v15))];
  v18 = crc_16_l_table[(v12 ^ v17 ^ HIBYTE(v16))];
  v19 = crc_16_l_table[(v13 ^ v18 ^ HIBYTE(v17))];
  v20 = v19 ^ ~(v18 >> 8);
  a1[7] = v20;
  v21 = BYTE1(v20);
  a1[8] = v21;
  if (a2 < 0x12)
  {
    return 0xFFFFFFFFLL;
  }

  v35 = v21;
  bzero(v38, 0x7FEuLL);
  __src = 65;
  if ((v8 - 125) <= 1)
  {
    v38[0] = v8 & 0x5F;
    v37 = 125;
    v22 = 3;
    v23 = 4;
    if ((v9 - 125) > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v37 = v8;
  v22 = 2;
  v23 = 3;
  if ((v9 - 125) <= 1)
  {
LABEL_10:
    *(&__src + v23) = v9 & 0x5F;
    LOBYTE(v9) = 125;
    LODWORD(v23) = v22 + 2;
  }

LABEL_11:
  *(&__src + v22) = v9;
  v24 = v23;
  v25 = v23 + 1;
  if ((v10 - 125) <= 1)
  {
    *(&__src + v25) = v10 & 0x5F;
    LODWORD(v25) = v24 + 2;
    LOBYTE(v10) = 125;
  }

  *(&__src + v24) = v10;
  v26 = v25 + 1;
  if ((v11 - 125) <= 1)
  {
    *(&__src + v26) = v11 & 0x5F;
    LOBYTE(v11) = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&__src + v25) = v11;
  v27 = v26;
  v28 = v26 + 1;
  if ((v12 - 125) <= 1)
  {
    *(&__src + v28) = v12 & 0x5F;
    LODWORD(v28) = v27 + 2;
    LOBYTE(v12) = 125;
  }

  v29 = ~(v19 ^ BYTE1(v18));
  *(&__src + v27) = v12;
  v30 = v28 + 1;
  if ((v13 - 125) <= 1)
  {
    *(&__src + v30) = v13 & 0x5F;
    LOBYTE(v13) = 125;
    LODWORD(v30) = v28 + 2;
  }

  *(&__src + v28) = v13;
  v31 = v30;
  v32 = v30 + 1;
  if ((v29 - 125) <= 1)
  {
    *(&__src + v32) = v29 & 0x5F;
    LODWORD(v32) = v31 + 2;
    LOBYTE(v29) = 125;
  }

  *(&__src + v31) = v29;
  v33 = v35;
  v34 = v32 + 1;
  if ((v35 - 125) <= 1)
  {
    *(&__src + v34) = v35 & 0x5F;
    v33 = 125;
    LODWORD(v34) = v32 + 2;
  }

  *(&__src + v32) = v33;
  memcpy(a1, &__src, v34);
  result = (v34 + 1);
  a1[v34] = 126;
  return result;
}

uint64_t APPLIB_DIAG_Lock(_WORD *a1, unsigned int a2)
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

uint64_t APPLIB_DIAG_CreateICCID_EFS_File(char *a1, unsigned int a2)
{
  v51 = *MEMORY[0x29EDCA608];
  if (a2 < 64)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = 0u;
  *(a1 + 1) = 0u;
  a1[48] = 0;
  *(a1 + 2) = 0u;
  *a1 = 8523;
  *(a1 + 1) = 0;
  a1[4] = 1;
  *(a1 + 5) = 0uLL;
  a1[21] = 0;
  a1[22] = 1;
  *(a1 + 23) = 0;
  a1[25] = 0;
  a1[26] = 1;
  a1[31] = 0;
  *(a1 + 27) = 0;
  *(a1 + 16) = 10;
  *(a1 + 34) = 778922355;
  *(a1 + 19) = 30836;
  a1[40] = 116;
  a1[41] = 0;
  v2 = crc_16_l_table[~*a1];
  v3 = crc_16_l_table[(a1[1] ^ ~v2)];
  v4 = crc_16_l_table[(a1[2] ^ v3 ^ HIBYTE(v2))];
  v5 = crc_16_l_table[(a1[3] ^ v4 ^ HIBYTE(v3))];
  v6 = crc_16_l_table[(a1[4] ^ v5 ^ HIBYTE(v4))];
  v7 = crc_16_l_table[(a1[5] ^ v6 ^ HIBYTE(v5))];
  v8 = crc_16_l_table[(a1[6] ^ v7 ^ HIBYTE(v6))];
  v9 = crc_16_l_table[(a1[7] ^ v8 ^ HIBYTE(v7))];
  v10 = crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))];
  v11 = crc_16_l_table[(a1[9] ^ v10 ^ HIBYTE(v9))];
  v12 = crc_16_l_table[(a1[10] ^ v11 ^ HIBYTE(v10))];
  v13 = crc_16_l_table[(a1[11] ^ v12 ^ HIBYTE(v11))];
  v14 = crc_16_l_table[(a1[12] ^ v13 ^ HIBYTE(v12))];
  v15 = crc_16_l_table[(a1[13] ^ v14 ^ HIBYTE(v13))];
  v16 = crc_16_l_table[(a1[14] ^ v15 ^ HIBYTE(v14))];
  v17 = crc_16_l_table[(a1[15] ^ v16 ^ HIBYTE(v15))];
  v18 = crc_16_l_table[(a1[16] ^ v17 ^ HIBYTE(v16))];
  v19 = crc_16_l_table[(a1[17] ^ v18 ^ HIBYTE(v17))];
  v20 = crc_16_l_table[(a1[18] ^ v19 ^ HIBYTE(v18))];
  v21 = crc_16_l_table[(a1[19] ^ v20 ^ HIBYTE(v19))];
  v22 = crc_16_l_table[(a1[20] ^ v21 ^ HIBYTE(v20))];
  v23 = crc_16_l_table[(a1[21] ^ v22 ^ HIBYTE(v21))];
  v24 = crc_16_l_table[(a1[22] ^ v23 ^ HIBYTE(v22))];
  v25 = crc_16_l_table[(a1[23] ^ v24 ^ HIBYTE(v23))];
  v26 = crc_16_l_table[(a1[24] ^ v25 ^ HIBYTE(v24))];
  v27 = crc_16_l_table[(a1[25] ^ v26 ^ HIBYTE(v25))];
  v28 = crc_16_l_table[(v27 ^ HIBYTE(v26)) ^ 1];
  v29 = crc_16_l_table[(a1[27] ^ v28 ^ HIBYTE(v27))];
  v30 = crc_16_l_table[(a1[28] ^ v29 ^ HIBYTE(v28))];
  v31 = crc_16_l_table[(a1[29] ^ v30 ^ HIBYTE(v29))];
  v32 = crc_16_l_table[(a1[30] ^ v31 ^ HIBYTE(v30))];
  v33 = crc_16_l_table[(a1[31] ^ v32 ^ HIBYTE(v31))];
  v34 = crc_16_l_table[(v33 ^ HIBYTE(v32)) ^ 0xA];
  v35 = crc_16_l_table[(v34 ^ HIBYTE(v33))];
  v36 = crc_16_l_table[(a1[34] ^ v35 ^ HIBYTE(v34))];
  v37 = crc_16_l_table[(a1[35] ^ v36 ^ HIBYTE(v35))];
  v38 = crc_16_l_table[(a1[36] ^ v37 ^ HIBYTE(v36))];
  v39 = crc_16_l_table[(a1[37] ^ v38 ^ HIBYTE(v37))];
  v40 = crc_16_l_table[(v39 ^ HIBYTE(v38)) ^ 0x74];
  v41 = crc_16_l_table[(v40 ^ HIBYTE(v39)) ^ 0x78];
  v42 = crc_16_l_table[(v41 ^ HIBYTE(v40)) ^ 0x74];
  *(a1 + 21) = crc_16_l_table[(v42 ^ HIBYTE(v41))] ^ ~(v42 >> 8);
  if (a2 < 0x58)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(__src, 0x800uLL);
  v45 = 0;
  v46 = 0;
  do
  {
    while (1)
    {
      v47 = a1[v45];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) > 1)
      {
        break;
      }

      v46 += 2;
      __src[v49] = v47 & 0x5F;
      __src[v48] = 125;
      if (++v45 == 44)
      {
        goto LABEL_9;
      }
    }

    ++v46;
    __src[v48] = v47;
    ++v45;
  }

  while (v45 != 44);
LABEL_9:
  memcpy(a1, __src, v46);
  result = (v46 + 1);
  a1[v46] = 126;
  return result;
}

uint64_t APPLIB_DIAG_GetICCID(char *a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2 < 64)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 46) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 4727168;
  a1[4] = 1;
  *(a1 + 5) = 0;
  a1[7] = 0;
  a1[8] = 119;
  *(a1 + 9) = 0;
  a1[11] = 0;
  *(a1 + 6) = 4097;
  *(a1 + 14) = 0uLL;
  a1[30] = 107;
  *(a1 + 31) = 0;
  a1[33] = 0;
  a1[34] = 107;
  *(a1 + 35) = 0;
  *(a1 + 38) = 0;
  a1[42] = 1;
  *(a1 + 43) = 0;
  *(a1 + 46) = 0;
  a1[50] = 10;
  v2 = 440;
  *(a1 + 51) = 0;
  LOWORD(v3) = -1;
  v4 = a1;
  do
  {
    v5 = *v4++;
    v3 = crc_16_l_table[(v5 ^ v3)] ^ ((v3 & 0xFF00) >> 8);
    v2 -= 8;
  }

  while (v2);
  *(a1 + 55) = ~v3;
  if (a2 < 114)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(__src, 0x800uLL);
  v8 = 0;
  v9 = 0;
  do
  {
    while (1)
    {
      v10 = a1[v8];
      v11 = v9;
      v12 = v9 + 1;
      if ((v10 - 125) > 1)
      {
        break;
      }

      v9 += 2;
      __src[v12] = v10 & 0x5F;
      __src[v11] = 125;
      if (++v8 == 57)
      {
        goto LABEL_11;
      }
    }

    ++v9;
    __src[v11] = v10;
    ++v8;
  }

  while (v8 != 57);
LABEL_11:
  memcpy(a1, __src, v9);
  result = (v9 + 1);
  a1[v9] = 126;
  return result;
}

uint64_t APPLIB_DIAG_Read_Meid(char *a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
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
    *a1 = -26842;
    v3 = 1064;
    a1[2] = 7;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_Write_Meid(char *a1, unsigned int a2, void *__src, int a4)
{
  if (a4 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 1943, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_Msl(uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    strcpy(a1, "&U");
    v3 = 1064;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = *(a1 + v8);
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      *(a1 + v9) = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_Write_Msl(char *a1, unsigned int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 85, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_Otksl(uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    strcpy(a1, "&U");
    v3 = 1064;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = *(a1 + v8);
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      *(a1 + v9) = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_Write_Otksl(char *a1, unsigned int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 219, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Write_AKey(char *a1, unsigned int a2, void *__src, int a4)
{
  if (a4 > 9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 25, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Write_AKeyCSum(char *a1, unsigned int a2, void *__src, int a4)
{
  if (a4 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 26, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Write_BlueToothAddr(char *a1, unsigned int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 50001, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_BlueToothAddr(char *a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
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
    *a1 = 20774;
    v3 = 1064;
    a1[2] = -61;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_Write_WiFi_MAC_Addr(char *a1, unsigned int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 50002, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_WiFi_MAC_Addr(char *a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
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
    *a1 = 21030;
    v3 = 1064;
    a1[2] = -61;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_Write_WiFi_Cal_Data(char *a1, unsigned int a2, void *__src, int a4)
{
  if (a4 > 64)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 50003, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_WiFi_Cal_Data(char *a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
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
    *a1 = 21286;
    v3 = 1064;
    a1[2] = -61;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_Write_USB2ETHERNET_MAC_Addr(char *a1, unsigned int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 50004, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_USB2ETHERNET_MAC_Addr(char *a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
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
    *a1 = 21542;
    v3 = 1064;
    a1[2] = -61;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t APPLIB_DIAG_GetSerialNumAndChipID(void *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 8)
  {
    bzero(a1, a2);
    *a1 = 0x9B390003000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x9B390003000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GetNonce(void *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 8)
  {
    bzero(a1, a2);
    *a1 = 0x82E10002000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x82E10002000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_SfpNvBackup(void *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 8)
  {
    bzero(a1, a2);
    *a1 = 0xFC590007000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0xFC590007000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_SfpNvRestore(void *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 8)
  {
    bzero(a1, a2);
    *a1 = 0x7F910008000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x7F910008000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_ReadRootManifest(_DWORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x17)
  {
    bzero(a1, a2);
    *a1 = 851275;
    a1[1] = 10;
    *(a1 + 4) = 5546;
    if (a2 >= 20)
    {
      *a1 = 0xA000CFD4BLL;
      *(a1 + 4) = 5546;
      *(a1 + 10) = 126;
      return 11;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_StartProvision(_WORD *a1, int a2, const void *a3, unsigned int a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (!a1 || 2 * a4 + 22 >= a2)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, a2);
  *a1 = 851531;
  a1[2] = 0;
  a1[3] = a4;
  memcpy(a1 + 4, a3, a4);
  v8 = 8 * (a4 + 8);
  if (8 * (a4 + 8))
  {
    LOWORD(v9) = -1;
    v10 = a1;
    do
    {
      v11 = *v10++;
      v9 = crc_16_l_table[(v11 ^ v9)] ^ ((v9 & 0xFF00) >> 8);
      v8 -= 8;
    }

    while (v8);
    v12 = ~v9;
    v13 = ~v9 >> 8;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *(a1 + a4 + 8) = v12;
  *(a1 + a4 + 9) = v13;
  v15 = a4 + 10;
  result = 0xFFFFFFFFLL;
  if (v15 <= 1024 && 2 * v15 <= a2)
  {
    bzero(__src, 0x800uLL);
    if (v15 < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v17 = a1;
      do
      {
        while (1)
        {
          v19 = *v17++;
          v18 = v19;
          v20 = v16;
          v21 = v16 + 1;
          if ((v19 - 125) > 1)
          {
            break;
          }

          v16 += 2;
          __src[v21] = v18 & 0x5F;
          __src[v20] = 125;
          if (!--v15)
          {
            goto LABEL_19;
          }
        }

        ++v16;
        __src[v20] = v18;
        --v15;
      }

      while (v15);
    }

LABEL_19:
    memcpy(a1, __src, v16);
    result = (v16 + 1);
    *(a1 + v16) = 126;
  }

  return result;
}

uint64_t APPLIB_DIAG_FinishProvision(_WORD *a1, int a2, const void *a3, unsigned int a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (!a1 || 2 * a4 + 22 >= a2)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, a2);
  *a1 = 851531;
  a1[2] = 1;
  a1[3] = a4;
  memcpy(a1 + 4, a3, a4);
  v8 = 8 * (a4 + 8);
  if (8 * (a4 + 8))
  {
    LOWORD(v9) = -1;
    v10 = a1;
    do
    {
      v11 = *v10++;
      v9 = crc_16_l_table[(v11 ^ v9)] ^ ((v9 & 0xFF00) >> 8);
      v8 -= 8;
    }

    while (v8);
    v12 = ~v9;
    v13 = ~v9 >> 8;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *(a1 + a4 + 8) = v12;
  *(a1 + a4 + 9) = v13;
  v15 = a4 + 10;
  result = 0xFFFFFFFFLL;
  if (v15 <= 1024 && 2 * v15 <= a2)
  {
    bzero(__src, 0x800uLL);
    if (v15 < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v17 = a1;
      do
      {
        while (1)
        {
          v19 = *v17++;
          v18 = v19;
          v20 = v16;
          v21 = v16 + 1;
          if ((v19 - 125) > 1)
          {
            break;
          }

          v16 += 2;
          __src[v21] = v18 & 0x5F;
          __src[v20] = 125;
          if (!--v15)
          {
            goto LABEL_19;
          }
        }

        ++v16;
        __src[v20] = v18;
        --v15;
      }

      while (v15);
    }

LABEL_19:
    memcpy(a1, __src, v16);
    result = (v16 + 1);
    *(a1 + v16) = 126;
  }

  return result;
}

uint64_t APPLIB_DIAG_WriteCalibrationManifest(_WORD *a1, int a2, const void *a3, unsigned int a4)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!a1 || 2 * a4 + 22 >= a2)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, a2);
  *a1 = 851531;
  a1[2] = 6;
  a1[3] = a4;
  memcpy(a1 + 4, a3, a4);
  v8 = a4 + 8;
  v9 = 8 * (a4 + 8);
  if (8 * (a4 + 8))
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
    *(a1 + v8) = ~v10;
    *(a1 + a4 + 9) = ~v10 >> 8;
    result = 0xFFFFFFFFLL;
    if (a4 > 0x3F6)
    {
      return result;
    }
  }

  else
  {
    *(a1 + v8) = 0;
    *(a1 + a4 + 9) = 0;
    result = 0xFFFFFFFFLL;
    if (a4 > 0x3F6)
    {
      return result;
    }
  }

  v14 = a4 + 10;
  if (2 * v14 <= a2)
  {
    bzero(__src, 0x800uLL);
    v15 = 0;
    v16 = 0;
    do
    {
      while (1)
      {
        v17 = *(a1 + v15);
        v18 = v16;
        v19 = v16 + 1;
        if ((v17 - 125) > 1)
        {
          break;
        }

        v16 += 2;
        __src[v19] = v17 & 0x5F;
        __src[v18] = 125;
        if (v14 == ++v15)
        {
          goto LABEL_16;
        }
      }

      ++v16;
      __src[v18] = v17;
      ++v15;
    }

    while (v14 != v15);
LABEL_16:
    memcpy(a1, __src, v16);
    result = (v16 + 1);
    *(a1 + v16) = 126;
  }

  return result;
}

uint64_t APPLIB_DIAG_ReadCalibrationBackup(void *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0xCFE90005000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0xCFE90005000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_BackupCalibrationData(void *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0xD6310004000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0xD6310004000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_RestoreCalibrationData(void *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0x66490009000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x66490009000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_ReadManifestStatus(void *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0x53D000C000CFD4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x53D000C000CFD4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_CheckCalibrationData(void *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0x129000D000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x129000D000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_ReadCalCounter(void *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0x2B41000E000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x2B41000E000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t ETLSMSCreateAddress(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if ((v4 & 0xF0) != 0)
  {
    v5 = 15;
  }

  else
  {
    v5 = v4;
  }

  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 1) = 0;
  memcpy((a1 + 1), __s, v5);
  return 1;
}

uint64_t ETLSMSCreateMessage(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if ((v4 & 0xF8u) <= 0xC7uLL)
  {
    v5 = v4;
  }

  else
  {
    v5 = -57;
  }

  *a1 = v5;
  *(a1 + 17) = 0u;
  *(a1 + 33) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 65) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 97) = 0u;
  *(a1 + 113) = 0u;
  *(a1 + 129) = 0u;
  *(a1 + 145) = 0u;
  *(a1 + 161) = 0u;
  *(a1 + 177) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 1) = 0u;
  memcpy((a1 + 1), __s, v5);
  return 1;
}

uint64_t ETLSMSCreateSendSMSCommand(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
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

  if (HDLCFrameGetFreeSpace() <= 0xD7)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    return 0;
  }

  if (*a2 > 0xFu || *a3 > 0xC7u || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInject() || !HDLCFrameInjectUnsignedChar())
  {
    return 0;
  }

  return HDLCFrameInject();
}

uint64_t ETLSMSParseSendSMSResponse(unsigned int *a1, _WORD *a2)
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
      if (BYTE1(v4) == 252)
      {
        v5 = HIWORD(v4);
        if (v5 == 1)
        {
          if (v3 <= 1)
          {
            _ETLDebugPrint("ETLSMSParseSendSMSResponse", "response requires %u bytes, got %u\n", 2, v3);
            return 0;
          }

          else
          {
            v6 = *(*a1 + 4);
            *a2 = v6;
            _ETLDebugPrint("ETLSMSParseSendSMSResponse", "Status was %u\n", v6);
            return 1;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v5, 1);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v4), 252);
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

uint64_t ETLSMSSendSMS(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, _WORD *a4, uint64_t a5)
{
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLSMSSendSMS", "Failed to create command frame\n");
    goto LABEL_24;
  }

  if (!ETLSMSCreateSendSMSCommand(v24, a2, a3))
  {
    goto LABEL_24;
  }

  v10 = malloc((2 * DWORD2(v24[0]) + 32));
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = v10;
  v12 = HDLCFrameEncode();
  if (!v12)
  {
    goto LABEL_26;
  }

  v13 = v12;
  v26 = -1431655766;
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

  v14 = (*a1)(a1, v11, v13, &v26, 1, a5, 0);
  v15 = v26;
  free(v11);
  if (v14)
  {
    v16 = v15 == v13;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    goto LABEL_24;
  }

  LOBYTE(v26) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v17 = ETLFindMatchingResponseUsingBuffer(a1, v22, &_ETLResponseRingBuffer, &v26, a5);
  v18 = 0;
  if (v17 && v26 == 75)
  {
    if (DWORD2(v22[0]) < 4)
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
    }

    else
    {
      v19 = **&v22[0];
      if (**&v22[0] == 75)
      {
        if (BYTE1(v19) == 252)
        {
          if (HIWORD(v19) == 1)
          {
            if ((DWORD2(v22[0]) - 4) > 1)
            {
              v20 = *(*&v22[0] + 4);
              *a4 = v20;
              _ETLDebugPrint("ETLSMSParseSendSMSResponse", "Status was %u\n", v20);
              v18 = 1;
              goto LABEL_25;
            }

            _ETLDebugPrint("ETLSMSParseSendSMSResponse", "response requires %u bytes, got %u\n");
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

LABEL_24:
    v18 = 0;
  }

LABEL_25:
  HDLCFrameFree();
  HDLCFrameFree();
  return v18;
}

uint64_t ETLFlushResponseFull(uint64_t a1)
{
  TelephonyUtilRingBufferReset();
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t ETLGetResponse(uint64_t a1, _BYTE **a2, _BYTE *a3, uint64_t a4)
{
  if (!_ETLResponseRingBuffer)
  {
    v7 = a1;
    TelephonyUtilRingBufferInitialize();
    a1 = v7;
  }

  result = ETLFrameReadFromTransport(a1, a2, &_ETLResponseRingBuffer, _ETLResponseHDLCReadParameters, a4);
  if (result)
  {
    v9 = *(a2 + 2);
    if ((_ETLDebugFlags & 2) != 0)
    {
      v10 = result;
      off_2A18A5818(&str_3, 1, *a2, v9);
      result = v10;
      LODWORD(v9) = *(a2 + 2);
    }

    if (v9)
    {
      *a3 = **a2;
    }
  }

  return result;
}

uint64_t ETLGetResponseUsingBuffer(uint64_t a1, _BYTE **a2, uint64_t *a3, _BYTE *a4, uint64_t a5)
{
  result = ETLFrameReadFromTransport(a1, a2, a3, _ETLResponseHDLCReadParameters, a5);
  if (result)
  {
    v8 = *(a2 + 2);
    if ((_ETLDebugFlags & 2) != 0)
    {
      v9 = result;
      off_2A18A5818(&str_3, 1, *a2, v8);
      result = v9;
      LODWORD(v8) = *(a2 + 2);
    }

    if (v8)
    {
      *a4 = **a2;
    }
  }

  return result;
}

BOOL ETLFindMatchingResponse(uint64_t a1, unsigned __int8 **a2, _BYTE *a3, uint64_t a4)
{
  if (!_ETLResponseRingBuffer)
  {
    v6 = a1;
    v7 = a2;
    TelephonyUtilRingBufferInitialize();
    a1 = v6;
    a2 = v7;
  }

  return ETLFindMatchingResponseUsingBuffer(a1, a2, &_ETLResponseRingBuffer, a3, a4);
}

BOOL ETLFindMatchingResponseUsingBuffer(uint64_t a1, unsigned __int8 **a2, uint64_t *a3, _BYTE *a4, uint64_t a5)
{
  v10 = mach_absolute_time();
  if (a5 == -1)
  {
    if (ETLFrameReadFromTransport(a1, a2, a3, _ETLResponseHDLCReadParameters, 0xFFFFFFFFLL))
    {
      do
      {
        v20 = *(a2 + 2);
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 1, *a2, v20);
          LODWORD(v20) = *(a2 + 2);
        }

        if (v20)
        {
          v13 = **a2;
          if (v13 == *a4)
          {
            return 1;
          }
        }

        else
        {
          v13 = 0;
          if (!*a4)
          {
            return 1;
          }
        }

        if ((v13 - 19) <= 0x34 && ((1 << (v13 - 19)) & 0x10800000000027) != 0)
        {
LABEL_26:
          _ETLDebugPrint("ETLFindMatchingResponseUsingBuffer", "Received error code %u\n", v13);
          *a4 = v13;
          return 1;
        }

        HDLCFrameFree();
      }

      while ((ETLFrameReadFromTransport(a1, a2, a3, _ETLResponseHDLCReadParameters, 0xFFFFFFFFLL) & 1) != 0);
    }
  }

  else
  {
    v11 = v10;
    while (ETLFrameReadFromTransport(a1, a2, a3, _ETLResponseHDLCReadParameters, a5))
    {
      v12 = *(a2 + 2);
      if ((_ETLDebugFlags & 2) != 0)
      {
        off_2A18A5818(&str_3, 1, *a2, v12);
        LODWORD(v12) = *(a2 + 2);
      }

      if (v12)
      {
        v13 = **a2;
        v14 = *a4;
        v15 = v13 == v14;
        if (v13 == v14)
        {
          return v15;
        }
      }

      else
      {
        v13 = 0;
        v15 = *a4 == 0;
        if (!*a4)
        {
          return v15;
        }
      }

      if ((v13 - 19) <= 0x34 && ((1 << (v13 - 19)) & 0x10800000000027) != 0)
      {
        goto LABEL_26;
      }

      HDLCFrameFree();
      v16 = mach_absolute_time();
      v17 = *&ETLGetTimeDifferenceMilliseconds_conversion;
      if (*&ETLGetTimeDifferenceMilliseconds_conversion == 0.0)
      {
        info = 0xAAAAAAAAAAAAAAAALL;
        mach_timebase_info(&info);
        LODWORD(v19) = info.denom;
        LODWORD(v18) = info.numer;
        v17 = v18 * 0.000001 / v19;
        ETLGetTimeDifferenceMilliseconds_conversion = *&v17;
      }

      if ((v17 * (v16 - v11)) >= a5)
      {
        return v15;
      }
    }
  }

  _ETLDebugPrint("ETLFindMatchingResponseUsingBuffer", "Failed to receive response from Baseband\n");
  return 0;
}

uint64_t ETLSendCommand(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = malloc((2 * *(a2 + 8) + 32));
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = HDLCFrameEncode();
  if (v7)
  {
    v8 = v7;
    v9 = -1431655766;
    v13 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v6, v7);
    }

    if (*a1)
    {
      v10 = (*a1)(a1, v6, v8, &v13, 1, a3, 0);
      v9 = v13;
    }

    else
    {
      v10 = 0;
    }

    if (v9 == v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  free(v6);
  return v11;
}

uint64_t ETLSendRaw(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (HDLCFrameCreateUplink())
  {
    v8 = HDLCFrameInjectUnsignedChar();
    if (v6 && v8)
    {
      if ((HDLCFrameInject() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (!v8)
    {
      goto LABEL_14;
    }

    v10 = malloc(0x55555574uLL);
    if (v10)
    {
      v11 = v10;
      v12 = HDLCFrameEncode();
      if (v12)
      {
        v13 = v12;
        v14 = -1431655766;
        v17 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v11, v12);
        }

        if (*a1)
        {
          v15 = (*a1)(a1, v11, v13, &v17, 1, a5, 0);
          v14 = v17;
        }

        else
        {
          v15 = 0;
        }

        if (v14 == v13)
        {
          v9 = v15;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      free(v11);
      goto LABEL_21;
    }

LABEL_14:
    v9 = 0;
LABEL_21:
    HDLCFrameFree();
    return v9;
  }

  return 0;
}

BOOL ETLRequireFreeSpace(uint64_t a1, unsigned int a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  v4 = FreeSpace;
  if (FreeSpace < a2)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", a2, FreeSpace);
  }

  return v4 >= a2;
}

BOOL ETLCheckPayloadLength(uint64_t a1, int a2, unsigned int a3)
{
  v4 = *(a1 + 8);
  v5 = v4 - a2;
  if (v4 - a2 < a3)
  {
    _ETLDebugPrint("ETLCheckPayloadLength", "Need %u bytes, but only have %u\n", a3, v4 - a2);
  }

  return v5 >= a3;
}

BOOL ETLExpectResponseCode(int a1, int a2)
{
  if (a1 != a2)
  {
    _ETLDebugPrint("ETLExpectResponseCode", "Received response code is %u, expected %u\n", a1, a2);
  }

  return a1 == a2;
}

uint64_t ETLNVRAMExtTranslateID(int a1, const char **a2)
{
  result = 0;
  if (a1 <= 67288)
  {
    if (a1 > 65767)
    {
      if (a1 == 65768)
      {
        v4 = "/nv/item_files/hsusb/device_composition";
      }

      else
      {
        if (a1 != 67288)
        {
          return result;
        }

        v4 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_thresh0";
      }
    }

    else if (a1 == 65633)
    {
      v4 = "/nv/item_files/modem/mmode/lte_bandpref";
    }

    else
    {
      if (a1 != 65728)
      {
        return result;
      }

      v4 = "/nv/item_files/modem/utils/a2/sps_dynamic_usb_endpoint";
    }
  }

  else if (a1 <= 67296)
  {
    if (a1 == 67289)
    {
      v4 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_thresh1";
    }

    else
    {
      if (a1 != 67290)
      {
        return result;
      }

      v4 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_enable";
    }
  }

  else
  {
    switch(a1)
    {
      case 67297:
        v4 = "/nv/item_files/gps/cgps/me/gnss_main_wwan_tx_antenna_im_jamming_power";
        break;
      case 67298:
        v4 = "/nv/item_files/gps/cgps/me/gnss_aux_wwan_tx_antenna_im_jamming_power";
        break;
      case 67299:
        v4 = "/nv/item_files/gps/cgps/me/gnss_wlan_bt_delta_tx_antenna_im_jamming_power";
        break;
      default:
        return result;
    }
  }

  *a2 = v4;
  a2[1] = 0xAAAAAAAA00000000;
  return 1;
}

uint64_t ETLNVRAMExtWrite(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5, int a6)
{
  *a5 = 0xFFFF;
  if (a2 <= 67288)
  {
    if (a2 > 65767)
    {
      if (a2 == 65768)
      {
        v7 = "/nv/item_files/hsusb/device_composition";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
      }

      if (a2 == 67288)
      {
        v7 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_thresh0";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
      }
    }

    else
    {
      if (a2 == 65633)
      {
        v7 = "/nv/item_files/modem/mmode/lte_bandpref";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
      }

      if (a2 == 65728)
      {
        v7 = "/nv/item_files/modem/utils/a2/sps_dynamic_usb_endpoint";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
      }
    }
  }

  else if (a2 <= 67296)
  {
    if (a2 == 67289)
    {
      v7 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_thresh1";
      return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
    }

    if (a2 == 67290)
    {
      v7 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_enable";
      return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
    }
  }

  else
  {
    switch(a2)
    {
      case 67297:
        v7 = "/nv/item_files/gps/cgps/me/gnss_main_wwan_tx_antenna_im_jamming_power";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
      case 67298:
        v7 = "/nv/item_files/gps/cgps/me/gnss_aux_wwan_tx_antenna_im_jamming_power";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
      case 67299:
        v7 = "/nv/item_files/gps/cgps/me/gnss_wlan_bt_delta_tx_antenna_im_jamming_power";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
    }
  }

  *a5 = 0x10000;
  return 0;
}

uint64_t ETLNVRAMExtRead(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), int a2, void *a3, unsigned int a4, _DWORD *a5, unsigned int *a6, unsigned int a7)
{
  *a5 = 0xFFFF;
  if (a2 <= 67288)
  {
    if (a2 > 65767)
    {
      if (a2 == 65768)
      {
        v9 = "/nv/item_files/hsusb/device_composition";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
      }

      if (a2 == 67288)
      {
        v9 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_thresh0";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
      }
    }

    else
    {
      if (a2 == 65633)
      {
        v9 = "/nv/item_files/modem/mmode/lte_bandpref";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
      }

      if (a2 == 65728)
      {
        v9 = "/nv/item_files/modem/utils/a2/sps_dynamic_usb_endpoint";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
      }
    }
  }

  else if (a2 <= 67296)
  {
    if (a2 == 67289)
    {
      v9 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_thresh1";
      return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
    }

    if (a2 == 67290)
    {
      v9 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_enable";
      return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
    }
  }

  else
  {
    switch(a2)
    {
      case 67297:
        v9 = "/nv/item_files/gps/cgps/me/gnss_main_wwan_tx_antenna_im_jamming_power";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
      case 67298:
        v9 = "/nv/item_files/gps/cgps/me/gnss_aux_wwan_tx_antenna_im_jamming_power";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
      case 67299:
        v9 = "/nv/item_files/gps/cgps/me/gnss_wlan_bt_delta_tx_antenna_im_jamming_power";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
    }
  }

  *a5 = 0x10000;
  return 0;
}

uint64_t APPLIB_DIAG_GPS_SA_RF_VERIF_MODE_SWITCH(_DWORD *a1, unsigned int a2, int a3)
{
  v17 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x12)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 6622539;
  *(a1 + 2) = 276;
  *(a1 + 6) = a3;
  v7 = crc_16_l_table[a3 ^ 0x3B] ^ 0xFFB0;
  *(a1 + 7) = crc_16_l_table[a3 ^ 0x3B] ^ 0xB0;
  v8 = HIBYTE(v7);
  *(a1 + 8) = HIBYTE(v7);
  if (a2 < 18)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v7;
  bzero(v16, 0x7F9uLL);
  __src = 6622539;
  v14 = 276;
  if ((a3 - 125) <= 1)
  {
    v16[0] = a3 & 0x5F;
    v15 = 125;
    v10 = 8;
    v11 = 9;
    if ((v9 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = a3;
  v10 = 7;
  v11 = 8;
  if ((v9 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v11) = v9 & 0x5F;
    LOBYTE(v9) = 125;
    LODWORD(v11) = v10 + 2;
  }

LABEL_10:
  *(&__src + v10) = v9;
  v12 = v11 + 1;
  if ((v8 - 125) <= 1)
  {
    *(&__src + v12) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v12) = v11 + 2;
  }

  *(&__src + v11) = v8;
  memcpy(a1, &__src, v12);
  result = (v12 + 1);
  *(a1 + v12) = 126;
  return result;
}

uint64_t APPLIB_DIAG_GPS_GEN8_HW_CONFIG(char *a1, unsigned int a2, uint64_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x16)
  {
    bzero(a1, a2);
    *a1 = 6622539;
    *(a1 + 2) = 12826;
    v7 = *(a3 + 4);
    *(a1 + 6) = *a3;
    a1[10] = v7;
    *(a1 + 11) = 0;
    a1[13] = 0;
    v8 = a1[6];
    v9 = crc_16_l_table[v8 ^ 0x33];
    v10 = crc_16_l_table[a1[7] ^ 0xD6 ^ v9];
    v11 = crc_16_l_table[(a1[8] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[9] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[10] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[crc_16_l_table[(v14 ^ HIBYTE(v13))] ^ (v14 >> 8)];
    *(a1 + 7) = v16 ^ ~HIBYTE(crc_16_l_table[(v14 ^ HIBYTE(v13))]);
    if (a2 >= 32)
    {
      bzero(v36, 0x7FFuLL);
      v17 = *a1;
      if ((v17 - 125) > 1)
      {
        v18 = 1;
      }

      else
      {
        v36[0] = v17 & 0x5F;
        v18 = 2;
        LOBYTE(v17) = 125;
      }

      __src = v17;
      v19 = a1[1];
      v20 = v18 + 1;
      if ((v19 - 125) <= 1)
      {
        v36[v20 - 1] = v19 & 0x5F;
        LODWORD(v20) = v18 + 2;
        LOBYTE(v19) = 125;
      }

      v36[v18 - 1] = v19;
      *&v36[v20 - 1] = 840564837;
      v21 = v20 + 5;
      if ((v8 - 125) <= 1)
      {
        v36[v21 - 1] = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v21) = v20 + 6;
      }

      v36[v20 + 3] = v8;
      v22 = a1[7];
      v23 = v21 + 1;
      if ((v22 - 125) <= 1)
      {
        v36[v23 - 1] = v22 & 0x5F;
        LOBYTE(v22) = 125;
        LODWORD(v23) = v21 + 2;
      }

      v36[v21 - 1] = v22;
      v24 = a1[8];
      v25 = v23 + 1;
      if ((v24 - 125) <= 1)
      {
        v36[v25 - 1] = v24 & 0x5F;
        LOBYTE(v24) = 125;
        LODWORD(v25) = v23 + 2;
      }

      v36[v23 - 1] = v24;
      v26 = a1[9];
      v27 = v25 + 1;
      if ((v26 - 125) <= 1)
      {
        v36[v27 - 1] = v26 & 0x5F;
        LOBYTE(v26) = 125;
        LODWORD(v27) = v25 + 2;
      }

      v36[v25 - 1] = v26;
      v28 = ~(v16 ^ BYTE1(v15));
      v29 = a1[10];
      v30 = v27 + 1;
      if ((v29 - 125) <= 1)
      {
        v36[v30 - 1] = v29 & 0x5F;
        LOBYTE(v29) = 125;
        LODWORD(v30) = v27 + 2;
      }

      v31 = ((v16 ^ ~(v15 >> 8)) >> 8);
      v36[v27 - 1] = v29;
      v32 = &v36[v30 - 1];
      *v32 = 0;
      v32[2] = 0;
      v33 = v30 + 4;
      if ((v28 - 125) <= 1)
      {
        v36[v33 - 1] = v28 & 0x5F;
        LOBYTE(v28) = 125;
        LODWORD(v33) = v30 + 5;
      }

      v36[v30 + 2] = v28;
      v34 = v33 + 1;
      if ((v31 - 125) <= 1)
      {
        v36[v34 - 1] = v31 & 0x5F;
        LOBYTE(v31) = 125;
        LODWORD(v34) = v33 + 2;
      }

      v36[v33 - 1] = v31;
      memcpy(a1, &__src, v34);
      result = (v34 + 1);
      a1[v34] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_FTM_GNSS_EXTERNAL_LNA(unsigned __int8 *a1, unsigned int a2, int a3)
{
  v31 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x11)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 2231115;
  a1[4] = -3;
  a1[6] = a3;
  v7 = a1[5];
  v8 = crc_16_l_table[crc_16_l_table[v7 ^ 0xBA] ^ a3 ^ 0xEC];
  v9 = crc_16_l_table[(a1[7] ^ v8 ^ HIBYTE(crc_16_l_table[v7 ^ 0xBA]))];
  v10 = crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))];
  v11 = crc_16_l_table[(a1[9] ^ v10 ^ HIBYTE(v9))];
  v12 = v11 ^ ~(v10 >> 8);
  *(a1 + 5) = v11 ^ ~HIBYTE(crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))]);
  if (a2 < 24)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v30, 0x7FAuLL);
  __src = 2231115;
  v28 = -3;
  if ((v7 - 125) <= 1)
  {
    v30[0] = v7 & 0x5F;
    v29 = 125;
    v13 = 7;
    v14 = 8;
    if ((a3 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v29 = v7;
  v13 = 6;
  v14 = 7;
  if ((a3 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v14) = a3 & 0x5F;
    LOBYTE(a3) = 125;
    LODWORD(v14) = v13 + 2;
  }

LABEL_10:
  *(&__src + v13) = a3;
  v15 = a1[7];
  v16 = v14 + 1;
  if ((v15 - 125) <= 1)
  {
    *(&__src + v16) = v15 & 0x5F;
    LOBYTE(v15) = 125;
    LODWORD(v16) = v14 + 2;
  }

  *(&__src + v14) = v15;
  v17 = a1[8];
  v18 = v16 + 1;
  if ((v17 - 125) <= 1)
  {
    *(&__src + v18) = v17 & 0x5F;
    LOBYTE(v17) = 125;
    LODWORD(v18) = v16 + 2;
  }

  *(&__src + v16) = v17;
  v19 = ~(v11 ^ BYTE1(v10));
  v20 = a1[9];
  v21 = v18;
  v22 = v18 + 1;
  if ((v20 - 125) <= 1)
  {
    *(&__src + v22) = v20 & 0x5F;
    LOBYTE(v20) = 125;
    LODWORD(v22) = v21 + 2;
  }

  v23 = (v11 ^ ~(v10 >> 8)) >> 8;
  *(&__src + v21) = v20;
  v24 = v22;
  v25 = v22 + 1;
  if ((v19 - 125) <= 1)
  {
    *(&__src + v25) = v19 & 0x5F;
    LOBYTE(v19) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&__src + v24) = v19;
  v26 = v25 + 1;
  if (BYTE1(v12) - 125 <= 1)
  {
    *(&__src + v26) = BYTE1(v12) & 0x5F;
    v23 = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&__src + v25) = v23;
  memcpy(a1, &__src, v26);
  result = (v26 + 1);
  a1[v26] = 126;
  return result;
}

uint64_t APPLIB_DIAG_GPS_GEN8_StartIQTest(unsigned __int8 *a1, unsigned int a2)
{
  v23 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 16)
  {
    bzero(a1, a2);
    *a1 = xmmword_2977CACB0;
    *(a1 + 8) = 2560;
    v5 = crc_16_l_table[a1[7] ^ 0x6DLL];
    v6 = crc_16_l_table[a1[8] ^ 0xA6 ^ v5];
    v7 = crc_16_l_table[(a1[9] ^ v6 ^ HIBYTE(v5))];
    v8 = crc_16_l_table[(a1[10] ^ v7 ^ HIBYTE(v6))];
    v9 = crc_16_l_table[(a1[11] ^ v8 ^ HIBYTE(v7))];
    v10 = crc_16_l_table[(a1[12] ^ v9 ^ HIBYTE(v8))];
    v11 = crc_16_l_table[(a1[13] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[14] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[15] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(v13 ^ HIBYTE(v12))];
    LOWORD(v13) = crc_16_l_table[v14 ^ (v13 >> 8) ^ 0xA];
    v15 = crc_16_l_table[(a1[18] ^ v13 ^ HIBYTE(v14))];
    LOWORD(v13) = crc_16_l_table[(a1[19] ^ v15 ^ BYTE1(v13))];
    v16 = crc_16_l_table[(a1[20] ^ v13 ^ HIBYTE(v15))];
    *(a1 + 11) = crc_16_l_table[(a1[21] ^ v16 ^ BYTE1(v13))] ^ ~(v16 >> 8);
    if (a2 >= 0x30)
    {
      bzero(__src, 0x800uLL);
      v17 = 0;
      v18 = 0;
      do
      {
        while (1)
        {
          v19 = a1[v17];
          v20 = v18;
          v21 = v18 + 1;
          if ((v19 - 125) > 1)
          {
            break;
          }

          v18 += 2;
          __src[v21] = v19 & 0x5F;
          __src[v20] = 125;
          if (++v17 == 24)
          {
            goto LABEL_9;
          }
        }

        ++v18;
        __src[v20] = v19;
        ++v17;
      }

      while (v17 != 24);
LABEL_9:
      memcpy(a1, __src, v18);
      result = (v18 + 1);
      a1[v18] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GPS_GEN8_SV_TRACK(char *a1, unsigned int a2, _DWORD *a3)
{
  v38 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x12)
  {
    bzero(a1, a2);
    *a1 = 6622539;
    *(a1 + 2) = 12827;
    v7 = *(a3 + 3);
    *(a1 + 6) = *a3;
    *(a1 + 9) = v7;
    v8 = a1[6];
    LOWORD(v7) = crc_16_l_table[v8 ^ 0xEB];
    v9 = crc_16_l_table[(a1[7] ^ v7) ^ 0xCF];
    LOWORD(v7) = crc_16_l_table[(a1[8] ^ v9 ^ BYTE1(v7))];
    v10 = crc_16_l_table[(a1[9] ^ v7 ^ HIBYTE(v9))];
    LOWORD(v7) = crc_16_l_table[(a1[10] ^ v10 ^ BYTE1(v7))];
    v11 = crc_16_l_table[(a1[11] ^ v7 ^ HIBYTE(v10))];
    v12 = crc_16_l_table[(a1[12] ^ v11 ^ BYTE1(v7))];
    *(a1 + 13) = v12 ^ ~HIBYTE(crc_16_l_table[(a1[11] ^ v7 ^ HIBYTE(v10))]);
    if (a2 >= 30)
    {
      bzero(v37, 0x7F9uLL);
      __src = 6622539;
      v35 = 12827;
      if ((v8 - 125) > 1)
      {
        v13 = 7;
      }

      else
      {
        v37[0] = v8 & 0x5F;
        v13 = 8;
        LOBYTE(v8) = 125;
      }

      v36 = v8;
      v14 = a1[7];
      v15 = v13 + 1;
      if ((v14 - 125) <= 1)
      {
        *(&__src + v15) = v14 & 0x5F;
        LOBYTE(v14) = 125;
        LODWORD(v15) = v13 + 2;
      }

      *(&__src + v13) = v14;
      v16 = a1[8];
      v17 = v15;
      v18 = v15 + 1;
      if ((v16 - 125) <= 1)
      {
        *(&__src + v18) = v16 & 0x5F;
        LODWORD(v18) = v17 + 2;
        LOBYTE(v16) = 125;
      }

      *(&__src + v17) = v16;
      v19 = a1[9];
      v20 = v18;
      v21 = v18 + 1;
      if ((v19 - 125) <= 1)
      {
        *(&__src + v21) = v19 & 0x5F;
        LOBYTE(v19) = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v19;
      v22 = a1[10];
      v23 = v21 + 1;
      if ((v22 - 125) <= 1)
      {
        *(&__src + v23) = v22 & 0x5F;
        LOBYTE(v22) = 125;
        LODWORD(v23) = v21 + 2;
      }

      *(&__src + v21) = v22;
      v24 = a1[11];
      v25 = v23 + 1;
      if ((v24 - 125) <= 1)
      {
        *(&__src + v25) = v24 & 0x5F;
        LOBYTE(v24) = 125;
        LODWORD(v25) = v23 + 2;
      }

      *(&__src + v23) = v24;
      v26 = ~(v12 ^ BYTE1(v11));
      v27 = a1[12];
      v28 = v25;
      v29 = v25 + 1;
      if ((v27 - 125) <= 1)
      {
        *(&__src + v29) = v27 & 0x5F;
        LOBYTE(v27) = 125;
        LODWORD(v29) = v28 + 2;
      }

      v30 = ((v12 ^ ~(v11 >> 8)) >> 8);
      *(&__src + v28) = v27;
      v31 = v29;
      v32 = v29 + 1;
      if ((v26 - 125) <= 1)
      {
        *(&__src + v32) = v26 & 0x5F;
        LOBYTE(v26) = 125;
        LODWORD(v32) = v31 + 2;
      }

      *(&__src + v31) = v26;
      v33 = v32 + 1;
      if ((v30 - 125) <= 1)
      {
        *(&__src + v33) = v30 & 0x5F;
        LOBYTE(v30) = 125;
        LODWORD(v33) = v32 + 2;
      }

      *(&__src + v32) = v30;
      memcpy(a1, &__src, v33);
      result = (v33 + 1);
      a1[v33] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_MemoryPoke_Byte(char *a1, unsigned int a2, int a3, void *__src, int a5)
{
  v23 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a5 && a3 && a1 && a2 >= 0xD && __src)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 5;
    *(a1 + 1) = a3;
    a1[5] = a5;
    memcpy(a1 + 6, __src, a5);
    v9 = 8 * (a5 + 6);
    if (8 * (a5 + 6))
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
      v13 = ~v10;
      v14 = ~v10 >> 8;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    a1[a5 + 6] = v13;
    a1[a5 + 7] = v14;
    v15 = (a5 + 8);
    result = 0xFFFFFFFFLL;
    if (v15 <= 1024 && 2 * v15 <= a2)
    {
      bzero(__srca, 0x800uLL);
      if (v15 < 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v17 = a1;
        do
        {
          while (1)
          {
            v19 = *v17++;
            v18 = v19;
            v20 = v16;
            v21 = v16 + 1;
            if ((v19 - 125) > 1)
            {
              break;
            }

            v16 += 2;
            __srca[v21] = v18 & 0x5F;
            __srca[v20] = 125;
            if (!--v15)
            {
              goto LABEL_20;
            }
          }

          ++v16;
          __srca[v20] = v18;
          --v15;
        }

        while (v15);
      }

LABEL_20:
      memcpy(a1, __srca, v16);
      result = (v16 + 1);
      a1[v16] = 126;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_MemoryPoke_Word(char *a1, unsigned int a2, int a3, void *__src, int a5)
{
  v23 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a5 && a3 && a1 && a2 >= 0xD && __src)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 6;
    *(a1 + 1) = a3;
    v8 = 2 * a5;
    a1[5] = a5;
    memcpy(a1 + 6, __src, 2 * a5);
    v9 = 8 * (v8 + 6);
    if ((v9 & 0xFFF0) != 0)
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
      v13 = ~v10;
      v14 = ~v10 >> 8;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    a1[v8 + 6] = v13;
    a1[v8 + 7] = v14;
    v15 = (v8 + 8);
    result = 0xFFFFFFFFLL;
    if (v15 <= 1024 && 2 * v15 <= a2)
    {
      bzero(__srca, 0x800uLL);
      if (v15 < 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v17 = a1;
        do
        {
          while (1)
          {
            v19 = *v17++;
            v18 = v19;
            v20 = v16;
            v21 = v16 + 1;
            if ((v19 - 125) > 1)
            {
              break;
            }

            v16 += 2;
            __srca[v21] = v18 & 0x5F;
            __srca[v20] = 125;
            if (!--v15)
            {
              goto LABEL_20;
            }
          }

          ++v16;
          __srca[v20] = v18;
          --v15;
        }

        while (v15);
      }

LABEL_20:
      memcpy(a1, __srca, v16);
      result = (v16 + 1);
      a1[v16] = 126;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_MemoryPoke_DWord(char *a1, unsigned int a2, int a3, void *__src, int a5)
{
  v21 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a5)
  {
    if (a3)
    {
      if (a1)
      {
        if (a2 >= 0xD)
        {
          if (__src)
          {
            *a1 = 0;
            *(a1 + 5) = 0;
            *a1 = 7;
            *(a1 + 1) = a3;
            v8 = 4 * a5;
            a1[5] = a5;
            memcpy(a1 + 6, __src, 4 * a5);
            v9 = 8 * (v8 + 6);
            LOWORD(v10) = -1;
            v11 = a1;
            do
            {
              v12 = *v11++;
              v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
              v9 -= 8;
            }

            while (v9);
            a1[v8 + 6] = ~v10;
            a1[v8 + 7] = ~v10 >> 8;
            v13 = (v8 + 8);
            result = 0xFFFFFFFFLL;
            if (v13 <= 1024 && 2 * v13 <= a2)
            {
              bzero(__srca, 0x800uLL);
              if (v13 < 1)
              {
                v14 = 0;
              }

              else
              {
                v14 = 0;
                v15 = a1;
                do
                {
                  while (1)
                  {
                    v17 = *v15++;
                    v16 = v17;
                    v18 = v14;
                    v19 = v14 + 1;
                    if ((v17 - 125) > 1)
                    {
                      break;
                    }

                    v14 += 2;
                    __srca[v19] = v16 & 0x5F;
                    __srca[v18] = 125;
                    if (!--v13)
                    {
                      goto LABEL_17;
                    }
                  }

                  ++v14;
                  __srca[v18] = v16;
                  --v13;
                }

                while (v13);
              }

LABEL_17:
              memcpy(a1, __srca, v14);
              result = (v14 + 1);
              a1[v14] = 126;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GPS_SessionControl(char *a1, int a2, char a3, void *__src, int a5)
{
  v22 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 39 && __src && a5)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 108;
    a1[1] = a3;
    *(a1 + 1) = a5;
    memcpy(a1 + 4, __src, a5);
    v9 = a5 + 4;
    v10 = 8 * (a5 + 4);
    if (8 * (a5 + 4))
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
      a1[v9] = ~v11;
      a1[a5 + 5] = ~v11 >> 8;
      result = 0xFFFFFFFFLL;
      if (a5 > 1018)
      {
        return result;
      }
    }

    else
    {
      a1[v9] = 0;
      a1[a5 + 5] = 0;
      result = 0xFFFFFFFFLL;
      if (a5 > 1018)
      {
        return result;
      }
    }

    v14 = (a5 + 6);
    if (2 * v14 <= a2)
    {
      bzero(__srca, 0x800uLL);
      if (a5 < -5)
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
            __srca[v20] = v17 & 0x5F;
            __srca[v19] = 125;
            if (!--v14)
            {
              goto LABEL_19;
            }
          }

          ++v15;
          __srca[v19] = v17;
          --v14;
        }

        while (v14);
      }

LABEL_19:
      memcpy(a1, __srca, v15);
      result = (v15 + 1);
      a1[v15] = 126;
    }
  }

  return result;
}

uint64_t LZ4_compress_limitedOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x2A1C7C4A8](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v128 = *MEMORY[0x29EDCA608];
  bzero(v127, 0x4000uLL);
  if (v8 > 65546)
  {
    if (v8 <= 0x7E000000)
    {
      v125 = v6;
      v67 = v12 + v8;
      v68 = v10;
      v69 = (v67 - 12);
      OUTLINED_FUNCTION_19();
      v119 = v70 - 8;
      v121 = v71;
      v123 = v70;
      v117 = v70 - 6;
      v72 = 0xFFFFLL;
      v14 = v12;
LABEL_66:
      v73 = v14 + 1;
      v74 = *(v14 + 1);
      do
      {
        v75 = (v74 * v4) >> 20;
        v76 = *&v127[2 * v75];
        *&v127[2 * v75] = v73 - v12;
        if (v12 + v76 + v72 >= v73)
        {
          OUTLINED_FUNCTION_28();
          if (v24)
          {
            OUTLINED_FUNCTION_17();
            do
            {
              v84 = v81;
              v85 = v82;
              v86 = v80 + v81;
              v87 = (v79 + v84);
              if (v86 <= v12 || v87 <= v14)
              {
                break;
              }

              v89 = *(v86 - 1);
              --v83;
              v81 = v84 - 1;
              v82 += v78;
            }

            while (*(v87 - 1) == v89);
            OUTLINED_FUNCTION_3();
            if (!(!v24 & v23))
            {
              if (v91 < 15)
              {
                *v68 = 16 * (v87 - v14);
              }

              else
              {
                *v68 = -16;
                if (v91 <= 0x10D)
                {
                  v98 = v84 + v92;
                }

                else
                {
                  OUTLINED_FUNCTION_10();
                  OUTLINED_FUNCTION_34();
                  OUTLINED_FUNCTION_1();
                  v115 = v93;
                  memset(v94, v95, v96);
                  OUTLINED_FUNCTION_2();
                  OUTLINED_FUNCTION_39();
                  OUTLINED_FUNCTION_13();
                  v90 = &v68[v97 + 2];
                  v98 = v97 + v115 + v84;
                }

                *v90 = v98;
                v90 = (v90 + 1);
              }

              v99 = (v90 + (v85 >> 32));
              do
              {
                v90 = OUTLINED_FUNCTION_30(v90);
              }

              while (!v23);
              while (1)
              {
                *v99 = v87 - v100;
                v68 = v99 + 1;
                v14 = v87 + 1;
                if ((v87 + 1) >= v69)
                {
LABEL_92:
                  if (v14 < v119)
                  {
                    OUTLINED_FUNCTION_27();
                    if (v24)
                    {
                      ++v14;
                    }
                  }

                  if (v14 < v117)
                  {
                    OUTLINED_FUNCTION_25();
                    if (v24)
                    {
                      v14 = (v14 + 2);
                    }
                  }

                  if (v14 < v121)
                  {
                    OUTLINED_FUNCTION_9();
                  }
                }

                else
                {
                  while (1)
                  {
                    OUTLINED_FUNCTION_29();
                    if (!v24)
                    {
                      break;
                    }

                    v14 += 2;
                    if (v14 >= v69)
                    {
                      goto LABEL_92;
                    }
                  }

                  OUTLINED_FUNCTION_8();
                  v14 = (v14 + (v101 >> 3));
                }

                OUTLINED_FUNCTION_7();
                if (!v24 & v23)
                {
                  break;
                }

                if (v103 < 15)
                {
                  OUTLINED_FUNCTION_11(v102);
                }

                else
                {
                  OUTLINED_FUNCTION_4(v102);
                  if (v23)
                  {
                    v4 = 510;
                    v105 = (v14 - v87 - 529) / 0x1FEu;
                    memset(v99 + 1, 255, v105 * 2 + 2);
                    OUTLINED_FUNCTION_2();
                    OUTLINED_FUNCTION_19();
                    v68 = &v99[v105 + 2];
                  }

                  if (v104 >= 0xFF)
                  {
                    *v68++ = -1;
                    LOBYTE(v104) = v104 + 1;
                  }

                  *v68++ = v104;
                }

                if (v14 > v69)
                {
                  goto LABEL_116;
                }

                *&v127[2 * ((*(v14 - 2) * v4) >> 20)] = v14 - 2 - v12;
                v106 = (*v14 * v4) >> 20;
                v100 = (v12 + *&v127[2 * v106]);
                *&v127[2 * v106] = v14 - v12;
                if ((v100 + v72) < v14 || *v100 != *v14)
                {
                  if (v14 + 2 <= v69)
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_116;
                }

                *v68 = 0;
                v99 = v68 + 1;
                v87 = v14;
              }
            }

            return 0;
          }
        }

        OUTLINED_FUNCTION_14();
      }

      while (v77 <= v69);
LABEL_116:
      v60 = v123 - v14;
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_24();
      if (v107 > v125)
      {
        return 0;
      }

      v109 = v60 - 15;
      if (v60 < 15)
      {
        *v68 = 16 * v60;
      }

      else
      {
        *v68 = -16;
        v110 = v68 + 1;
        if (v60 >= 0x10E)
        {
          OUTLINED_FUNCTION_40();
          if (v23)
          {
            v112 = v113;
          }

          OUTLINED_FUNCTION_12(v111, v112);
          v110 = OUTLINED_FUNCTION_15();
        }

        *v110 = v109;
        v68 = v110;
      }

      v114 = v68 + 1;
      goto LABEL_129;
    }

    return 0;
  }

  if (v8 > 0x7E000000)
  {
    return 0;
  }

  v13 = v12 + v8;
  v14 = v12;
  v15 = v10;
  if (v8 >= 0xE)
  {
    v124 = v6;
    v16 = (v13 - 12);
    OUTLINED_FUNCTION_19();
    v118 = (v17 - 8);
    v120 = v18;
    v122 = v17;
    v116 = (v17 - 6);
    v14 = v12;
    v126 = v10;
    v15 = v10;
LABEL_5:
    while (1)
    {
      OUTLINED_FUNCTION_41();
      v21 = v127[v20];
      v127[v20] = v19 - v12;
      if ((v12 + v21 + v22) >= v19 && *(v12 + v21) == *v19)
      {
        break;
      }

      OUTLINED_FUNCTION_32();
      if (!v24 & v23)
      {
LABEL_55:
        LODWORD(v10) = v126;
        v6 = v124;
        v13 = v122;
        goto LABEL_56;
      }
    }

    OUTLINED_FUNCTION_17();
    do
    {
      v31 = v28;
      v32 = v29;
      v33 = v27 + v28;
      v34 = (v26 + v31);
      if (v33 <= v12 || v34 <= v14)
      {
        break;
      }

      v36 = *(v33 - 1);
      --v30;
      v28 = v31 - 1;
      v29 += v25;
    }

    while (*(v34 - 1) == v36);
    OUTLINED_FUNCTION_3();
    if (!(!v24 & v23))
    {
      if (v38 < 15)
      {
        *v15 = 16 * (v34 - v14);
      }

      else
      {
        OUTLINED_FUNCTION_26();
        if (!v24 & v23)
        {
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_1();
          memset(v41, v42, v43);
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_39();
          v39 = OUTLINED_FUNCTION_5(v44 + v31);
          v47 = v46 + v45 + v31;
        }

        else
        {
          v47 = v31 + v40;
        }

        *v39 = v47;
        v37 = v39 + 1;
      }

      v48 = (v37 + (v32 >> 32));
      do
      {
        v37 = OUTLINED_FUNCTION_30(v37);
      }

      while (!v23);
      while (1)
      {
        *v48 = v34 - v49;
        v15 = v48 + 1;
        v14 = v34 + 1;
        if ((v34 + 1) >= v16)
        {
LABEL_31:
          if (v14 < v118)
          {
            OUTLINED_FUNCTION_27();
            if (v24)
            {
              ++v14;
            }
          }

          if (v14 < v116)
          {
            OUTLINED_FUNCTION_25();
            if (v24)
            {
              v14 = (v14 + 2);
            }
          }

          if (v14 < v120)
          {
            OUTLINED_FUNCTION_9();
          }
        }

        else
        {
          while (1)
          {
            OUTLINED_FUNCTION_29();
            if (!v24)
            {
              break;
            }

            v14 += 2;
            if (v14 >= v16)
            {
              goto LABEL_31;
            }
          }

          OUTLINED_FUNCTION_8();
          v14 = (v14 + (v50 >> 3));
        }

        OUTLINED_FUNCTION_7();
        if (!v24 & v23)
        {
          break;
        }

        if (v52 < 15)
        {
          OUTLINED_FUNCTION_11(v51);
        }

        else
        {
          OUTLINED_FUNCTION_4(v51);
          if (v23)
          {
            v4 = 510;
            v54 = (v14 - v34 - 529) / 0x1FEu;
            memset(v48 + 1, 255, v54 * 2 + 2);
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_19();
            v15 = &v48[v54 + 2];
          }

          if (v53 >= 0xFF)
          {
            OUTLINED_FUNCTION_23();
          }

          *v15++ = v53;
        }

        if (v14 > v16)
        {
          goto LABEL_55;
        }

        OUTLINED_FUNCTION_36();
        v127[v56] = v55;
        v57 = *v14;
        v58 = (*v14 * v4) >> 19;
        v49 = (v12 + v127[v58]);
        v127[v58] = v14 - v12;
        if ((v49 + v59) < v14 || *v49 != v57)
        {
          if (v14 + 2 <= v16)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        }

        *v15 = 0;
        v48 = v15 + 1;
        v34 = v14;
      }
    }

    return 0;
  }

LABEL_56:
  v60 = v13 - v14;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_24();
  if (v61 > v6)
  {
    return 0;
  }

  if (v60 < 15)
  {
    *v15 = 16 * v60;
  }

  else
  {
    v62 = OUTLINED_FUNCTION_22();
    if (v60 >= 0x10E)
    {
      OUTLINED_FUNCTION_40();
      if (v23)
      {
        v65 = v66;
      }

      OUTLINED_FUNCTION_12(v64, v65);
      v62 = OUTLINED_FUNCTION_15();
    }

    *v62 = v63;
    v15 = v62;
  }

  v114 = v15 + 1;
LABEL_129:
  memcpy(v114, v14, v60);
  return (v114 + v60 - v10);
}

uint64_t LZ4_compress_limitedOutput_withState(unsigned int *a1, char *a2, _BYTE *a3, unint64_t a4, unsigned int a5)
{
  if ((a1 & 3) != 0)
  {
    return 0;
  }

  bzero(a1, 0x4000uLL);
  if (a4 > 65546)
  {
    if (a4 <= 0x7E000000)
    {
      v94 = a5;
      v16 = &a2[a4];
      v17 = (v16 - 12);
      a1[(-1640531535 * *a2) >> 20] = 0;
      v88 = v16 - 8;
      v90 = v16 - 5;
      v92 = v16;
      OUTLINED_FUNCTION_18();
LABEL_9:
      v19 = v6 + 1;
      v20 = *(v6 + 1);
      do
      {
        v21 = (-1640531535 * v20) >> 20;
        v22 = a1[v21];
        a1[v21] = v19 - a2;
        if (&a2[v22 + v18] >= v19)
        {
          OUTLINED_FUNCTION_28();
          if (v23)
          {
            OUTLINED_FUNCTION_16();
            do
            {
              OUTLINED_FUNCTION_20();
              if (!v23 & v26)
              {
                v27 = a4 > v6;
              }

              else
              {
                v27 = 0;
              }
            }

            while (v27 && *(a4 - 1) == *(v25 - 1));
            OUTLINED_FUNCTION_3();
            if (!(!v23 & v26))
            {
              if (v28 < 15)
              {
                *v5 = 16 * (a4 - v6);
              }

              else
              {
                OUTLINED_FUNCTION_26();
                if (!v23 & v26)
                {
                  OUTLINED_FUNCTION_10();
                  OUTLINED_FUNCTION_34();
                  OUTLINED_FUNCTION_1();
                  memset(v31, v32, v33);
                  OUTLINED_FUNCTION_2();
                  OUTLINED_FUNCTION_39();
                  v29 = OUTLINED_FUNCTION_5(v34 + v7);
                  v37 = v36 + v35 + v7;
                }

                else
                {
                  v37 = v7 + v30;
                }

                *v29 = v37;
              }

              OUTLINED_FUNCTION_38();
              do
              {
                v39 = *v6;
                v6 += 8;
                *v38++ = v39;
              }

              while (v38 < v22);
              while (1)
              {
                OUTLINED_FUNCTION_21();
                if (v41 >= v17)
                {
LABEL_33:
                  if (v6 < v88 && *v40 == *v6)
                  {
                    ++v40;
                    v6 += 4;
                  }

                  if (v6 < v87 && *v40 == *v6)
                  {
                    v6 += 2;
                  }

                  if (v6 < v90)
                  {
                    OUTLINED_FUNCTION_31();
                  }
                }

                else
                {
                  while (*v40 == *v6)
                  {
                    v6 += 8;
                    v40 += 2;
                    if (v6 >= v17)
                    {
                      goto LABEL_33;
                    }
                  }

                  OUTLINED_FUNCTION_8();
                  v6 += v42 >> 3;
                }

                OUTLINED_FUNCTION_33();
                if (!v23 & v26)
                {
                  break;
                }

                if (v44 < 15)
                {
                  OUTLINED_FUNCTION_11(v43);
                }

                else
                {
                  OUTLINED_FUNCTION_4(v43);
                  if (v26)
                  {
                    a4 = (v6 - a4 - 529);
                    OUTLINED_FUNCTION_42();
                    OUTLINED_FUNCTION_2();
                    v45 = a4 % 0x1FE;
                    v5 = (v22 + v7 + 4);
                  }

                  if (v45 >= 0xFF)
                  {
                    OUTLINED_FUNCTION_23();
                  }

                  *v5++ = v45;
                }

                if (v6 > v17)
                {
                  goto LABEL_56;
                }

                a1[(-1640531535 * *(v6 - 2)) >> 20] = v6 - 2 - a2;
                v46 = (-1640531535 * *v6) >> 20;
                v47 = &a2[a1[v46]];
                a1[v46] = v6 - a2;
                if (&v47[v18] < v6 || *v47 != *v6)
                {
                  if ((v6 + 2) <= v17)
                  {
                    goto LABEL_9;
                  }

                  goto LABEL_56;
                }

                OUTLINED_FUNCTION_37();
              }
            }

            return 0;
          }
        }

        OUTLINED_FUNCTION_14();
      }

      while (v24 <= v17);
LABEL_56:
      v48 = v92 - v6;
      OUTLINED_FUNCTION_13();
      LODWORD(a3) = v96;
      OUTLINED_FUNCTION_35();
      if (v49 > v94)
      {
        return 0;
      }

      if (v48 >= 15)
      {
        v50 = OUTLINED_FUNCTION_22();
        if (v48 < 0x10E)
        {
          goto LABEL_118;
        }

        goto LABEL_114;
      }

LABEL_119:
      *v5 = 16 * v48;
      goto LABEL_120;
    }

    return 0;
  }

  if (a4 > 0x7E000000)
  {
    return 0;
  }

  v15 = &a2[a4];
  if (a4 >= 0xD)
  {
    OUTLINED_FUNCTION_19();
    *(a1 + ((*a2 * v8) >> 19)) = 0;
    if (a4 != 13)
    {
      v95 = a5;
      v52 = (v15 - 12);
      v89 = v15 - 8;
      v91 = v15 - 5;
      v93 = v15;
      OUTLINED_FUNCTION_18();
LABEL_62:
      while (1)
      {
        OUTLINED_FUNCTION_41();
        v55 = *(a1 + v54);
        *(a1 + v54) = v53 - a2;
        if (&a2[v55 + v56] >= v53 && *&a2[v55] == *v53)
        {
          break;
        }

        OUTLINED_FUNCTION_32();
        if (!v23 & v26)
        {
LABEL_109:
          LODWORD(a3) = v96;
          a5 = v95;
          v15 = v93;
          goto LABEL_110;
        }
      }

      OUTLINED_FUNCTION_16();
      do
      {
        OUTLINED_FUNCTION_20();
        if (!v23 & v26)
        {
          v58 = a4 > v6;
        }

        else
        {
          v58 = 0;
        }
      }

      while (v58 && *(a4 - 1) == *(v57 - 1));
      OUTLINED_FUNCTION_3();
      if (!(!v23 & v26))
      {
        if (v59 < 15)
        {
          *v5 = 16 * (a4 - v6);
        }

        else
        {
          OUTLINED_FUNCTION_26();
          if (!v23 & v26)
          {
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_34();
            OUTLINED_FUNCTION_1();
            memset(v62, v63, v64);
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_39();
            v60 = OUTLINED_FUNCTION_5(v65 + v7);
            v68 = v67 + v66 + v7;
          }

          else
          {
            v68 = v7 + v61;
          }

          *v60 = v68;
        }

        OUTLINED_FUNCTION_38();
        do
        {
          v70 = *v6;
          v6 += 8;
          *v69++ = v70;
        }

        while (v69 < v55);
        while (1)
        {
          OUTLINED_FUNCTION_21();
          if (v72 >= v52)
          {
LABEL_86:
            if (v6 < v89 && *v71 == *v6)
            {
              ++v71;
              v6 += 4;
            }

            if (v6 < v87 && *v71 == *v6)
            {
              v6 += 2;
            }

            if (v6 < v91)
            {
              OUTLINED_FUNCTION_31();
            }
          }

          else
          {
            while (*v71 == *v6)
            {
              v6 += 8;
              v71 += 2;
              if (v6 >= v52)
              {
                goto LABEL_86;
              }
            }

            OUTLINED_FUNCTION_8();
            v6 += v73 >> 3;
          }

          OUTLINED_FUNCTION_33();
          if (!v23 & v26)
          {
            break;
          }

          if (v75 < 15)
          {
            OUTLINED_FUNCTION_11(v74);
          }

          else
          {
            OUTLINED_FUNCTION_4(v74);
            if (v26)
            {
              a4 = (v6 - a4 - 529);
              v8 = 510;
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_2();
              OUTLINED_FUNCTION_19();
              v5 = (v55 + v7 + 4);
            }

            if (v76 >= 0xFF)
            {
              OUTLINED_FUNCTION_23();
            }

            *v5++ = v76;
          }

          if (v6 > v52)
          {
            goto LABEL_109;
          }

          OUTLINED_FUNCTION_36();
          *(a1 + v78) = v77;
          v79 = *v6;
          v80 = (*v6 * v8) >> 19;
          v81 = &a2[*(a1 + v80)];
          *(a1 + v80) = v6 - a2;
          if (&v81[v82] < v6 || *v81 != v79)
          {
            if ((v6 + 2) <= v52)
            {
              goto LABEL_62;
            }

            goto LABEL_109;
          }

          OUTLINED_FUNCTION_37();
        }
      }

      return 0;
    }
  }

  v6 = a2;
  v5 = a3;
LABEL_110:
  v48 = v15 - v6;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_35();
  if (v83 > a5)
  {
    return 0;
  }

  if (v48 < 15)
  {
    goto LABEL_119;
  }

  v50 = OUTLINED_FUNCTION_22();
  if (v48 >= 0x10E)
  {
LABEL_114:
    OUTLINED_FUNCTION_40();
    if (v26)
    {
      v85 = v86;
    }

    OUTLINED_FUNCTION_12(v84, v85);
    v50 = OUTLINED_FUNCTION_15();
  }

LABEL_118:
  *v50 = v51;
  v5 = v50;
LABEL_120:
  memcpy(v5 + 1, v6, v48);
  return (v5 + 1 + v48 - a3);
}

uint64_t LZ4_compress_limitedOutput_continue(uint64_t a1, _DWORD *a2, _BYTE *a3, int a4)
{
  if (a4 > 0x7E000000)
  {
    return 0;
  }

  if (*(a1 + 16400) != a2)
  {
    return 0;
  }

  v6 = a3;
  v7 = *(a1 + 16392);
  v8 = a2 + a4;
  *(a1 + 16400) = v8;
  v63 = a2;
  if (a4 >= 0xD)
  {
    v65 = a2 + a4;
    *(a1 + 4 * ((-1640531535 * *a2) >> 20)) = a2 - v7;
    if (a4 != 13)
    {
      v11 = (v65 - 12);
      v62 = a3;
      v12 = 0xFFFFLL;
      v9 = a2;
      v10 = a3;
LABEL_8:
      v13 = v9 + 1;
      v14 = *(v9 + 1);
      while (1)
      {
        v15 = (-1640531535 * v14) >> 20;
        v16 = *(a1 + 4 * v15);
        *(a1 + 4 * v15) = v13 - v7;
        if (v7 + v16 + v12 >= v13)
        {
          OUTLINED_FUNCTION_28();
          if (v21)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_14();
        if (v22 > v11)
        {
LABEL_58:
          v6 = v62;
          goto LABEL_59;
        }
      }

      v23 = 0;
      v24 = v20 - v9;
      v25 = v20 - v9 - 15;
      v26 = (v20 << 32) - (v9 << 32);
      v27 = v20 - v9 - 15;
      do
      {
        v28 = v23;
        v29 = v26;
        v30 = v7 + v16 + v23;
        v31 = v20 + v28;
        v32 = v20 + v28 - v9;
        if (v20 + v28 <= v9 || v30 <= v18)
        {
          break;
        }

        v34 = *(v30 - 1);
        --v27;
        v23 = v28 - 1;
        v26 += v19;
      }

      while (*(v31 - 1) == v34);
      v35 = v24 + v28;
      v36 = v10 + 1;
      if (&v10[(v29 >> 32) + 9 + (v24 + v28) / 255] <= v17)
      {
        if (v35 < 15)
        {
          *v10 = 16 * v32;
        }

        else
        {
          *v10 = -16;
          if (v35 <= 0x10D)
          {
            v42 = v28 + v25;
          }

          else
          {
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_1();
            v61 = v37;
            memset(v38, v39, v40);
            OUTLINED_FUNCTION_13();
            v36 = &v10[v41 + 2];
            v42 = v41 + v61 + v28;
          }

          *v36 = v42;
          v36 = (v36 + 1);
        }

        v43 = (v36 + (v29 >> 32));
        do
        {
          v36 = OUTLINED_FUNCTION_30(v36);
        }

        while (!v45);
        while (1)
        {
          *v43 = v31 - v44;
          v10 = v43 + 1;
          v9 = v31 + 4;
          if (v31 + 4 >= v11)
          {
LABEL_34:
            if (v9 < (v65 - 8))
            {
              OUTLINED_FUNCTION_27();
              if (v21)
              {
                v9 += 4;
              }
            }

            if (v9 < (v65 - 6))
            {
              OUTLINED_FUNCTION_25();
              if (v21)
              {
                v9 += 2;
              }
            }

            if (v9 < (v65 - 5))
            {
              OUTLINED_FUNCTION_9();
            }
          }

          else
          {
            while (1)
            {
              OUTLINED_FUNCTION_29();
              if (!v21)
              {
                break;
              }

              v9 += 8;
              if (v9 >= v11)
              {
                goto LABEL_34;
              }
            }

            OUTLINED_FUNCTION_8();
            v9 += v46 >> 3;
          }

          OUTLINED_FUNCTION_7();
          if (!v21 & v45)
          {
            break;
          }

          if (v48 < 15)
          {
            OUTLINED_FUNCTION_11(v47);
          }

          else
          {
            OUTLINED_FUNCTION_4(v47);
            if (v45)
            {
              v50 = v9 - v31 - 529;
              v51 = v50 / 0x1FE;
              memset(v43 + 1, 255, v51 * 2 + 2);
              v12 = 0xFFFFLL;
              v49 = v50 % 0x1FE;
              v10 = &v43[v51 + 2];
            }

            if (v49 >= 0xFF)
            {
              *v10++ = -1;
              LOBYTE(v49) = v49 + 1;
            }

            *v10++ = v49;
          }

          if (v9 > v11)
          {
            goto LABEL_58;
          }

          *(a1 + 4 * ((-1640531535 * *(v9 - 2)) >> 20)) = v9 - 2 - v7;
          v52 = (-1640531535 * *v9) >> 20;
          v44 = (v7 + *(a1 + 4 * v52));
          *(a1 + 4 * v52) = v9 - v7;
          if (v44 + v12 < v9 || *v44 != *v9)
          {
            if (v9 + 2 <= v11)
            {
              goto LABEL_8;
            }

            goto LABEL_58;
          }

          *v10 = 0;
          v43 = v10 + 1;
          v31 = v9;
        }
      }

      return 0;
    }

    v9 = a2;
    v10 = a3;
LABEL_59:
    v8 = v65;
  }

  else
  {
    v9 = a2;
    v10 = a3;
  }

  v53 = &v8[-v9];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_24();
  if (v55 > v54)
  {
    return 0;
  }

  v56 = v53 - 15;
  if (v53 < 15)
  {
    *v10 = 16 * v53;
  }

  else
  {
    *v10 = -16;
    v57 = v10 + 1;
    if (v53 >= 0x10E)
    {
      OUTLINED_FUNCTION_40();
      if (v45)
      {
        v59 = v60;
      }

      memset(v58, 255, (v63 + a4 - v9 - v59 + 239) / 0xFFu + 1);
      v57 = OUTLINED_FUNCTION_15();
    }

    *v57 = v56;
    v10 = v57;
  }

  memcpy(v10 + 1, v9, v53);
  return (v10 + 1 + v53 - v6);
}

char *lz4_decode_safe(char **a1, unint64_t a2, char *a3, unsigned __int8 **a4, unint64_t a5)
{
  v6 = *a1;
  v7 = *a4;
  v28 = *a1;
  if (*a4 >= a5)
  {
    v20 = *a1;
    return (v20 - v28);
  }

  else
  {
    while (1)
    {
      *a4 = v7;
      *a1 = v6;
      v14 = *v7;
      v12 = v7 + 1;
      v13 = v14;
      v15 = v14 >> 4;
      if (v15 == 15)
      {
        v15 = 15;
        while (v12 < a5)
        {
          v22 = *v12++;
          v15 += v22;
          if (v22 != 255)
          {
            goto LABEL_3;
          }
        }

        return 0;
      }

LABEL_3:
      v16 = &v12[v15];
      if (&v12[v15] > a5)
      {
        return 0;
      }

      v17 = &v6[v15];
      if (&v6[v15] > a3)
      {
        break;
      }

      memcpy(v6, v12, v15);
      if (v16 >= a5)
      {
        v20 = &v6[v15];
        return (v20 - v28);
      }

      v7 = v16 + 2;
      if ((v16 + 2) > a5)
      {
        return 0;
      }

      v18 = *v16;
      if (!*v16 || &v17[-v18] < a2)
      {
        return 0;
      }

      v19 = (v13 & 0xF) + 4;
      if ((v13 & 0xF) == 0xF)
      {
        v19 = 19;
        while (v7 < a5)
        {
          v23 = *v7++;
          v19 += v23;
          if (v23 != 255)
          {
            goto LABEL_10;
          }
        }

        return 0;
      }

LABEL_10:
      v20 = &v17[v19];
      if (&v17[v19] > a3)
      {
        if (v17 != a3)
        {
          v25 = a3 - v17;
          if ((a3 - v17) <= 1)
          {
            v25 = 1;
          }

          v26 = &v6[v15];
          v27 = -v18;
          do
          {
            *v26 = v26[v27];
            ++v26;
            --v25;
          }

          while (v25);
        }

        return (a3 - v28);
      }

      if (v19)
      {
        v21 = -v18;
        do
        {
          *v17 = v17[v21];
          ++v17;
          --v19;
        }

        while (v19);
      }

      v6 = v20;
      if (v7 >= a5)
      {
        return (v20 - v28);
      }
    }

    if (v6 != a3)
    {
      memcpy(v6, v12, a3 - v6);
    }

    return (a3 - v28);
  }
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}