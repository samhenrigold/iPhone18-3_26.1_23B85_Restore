char *ICEUNToString(char *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(v16, 170, 12);
  memset(v15, 170, 12);
  memset(v14, 170, 12);
  memset(v13, 170, 12);
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  v5 = *(a2 + 10);
  v6 = *(a2 + 14);
  v7 = bswap32(*a2);
  v8 = *(a2 + 18);
  __sprintf_chk(v14, 0, 0xCuLL, "%02X%02X%02X%02X", HIBYTE(v7), BYTE2(v7), BYTE1(v7), v7);
  v9 = bswap32(v3);
  __sprintf_chk(v13, 0, 0xCuLL, "%02X%02X%02X%02X", HIBYTE(v9), BYTE2(v9), BYTE1(v9), v9);
  v10 = bswap32(v5);
  __sprintf_chk(v16, 0, 0xCuLL, "%02X%02X%02X%02X", HIBYTE(v10), BYTE2(v10), BYTE1(v10), v10);
  v11 = bswap32(v6);
  __sprintf_chk(v15, 0, 0xCuLL, "%02X%02X%02X%02X", HIBYTE(v11), BYTE2(v11), BYTE1(v11), v11);
  sprintf(a1, "%s.%s.%d-%s.%s.%d", v14, v13, bswap32(v4) >> 16, v16, v15, bswap32(v8) >> 16);
  return a1;
}

char *CANIDToString(char *a1, unsigned int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  v4 = bswap32(*a2);
  memset(v8, 170, 12);
  memset(v7, 170, 12);
  __sprintf_chk(v8, 0, 0xCuLL, "%02X%02X%02X%02X", HIBYTE(v4), BYTE2(v4), BYTE1(v4), v4);
  v5 = bswap32(v3);
  __sprintf_chk(v7, 0, 0xCuLL, "%02X%02X%02X%02X", HIBYTE(v5), BYTE2(v5), BYTE1(v5), v5);
  sprintf(a1, "%s%s", v8, v7);
  return a1;
}

uint64_t CandidateByteOrderNToH(uint64_t a1, unsigned int a2)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = 148 * a2;
    do
    {
      v5 = (a1 + v3);
      *v5 = vrev32_s8(*(a1 + v3));
      v5[1].i32[0] = bswap32(*(a1 + v3 + 8));
      v5[2].i16[2] = bswap32(*(a1 + v3 + 20)) >> 16;
      v5[2].i16[3] = bswap32(*(a1 + v3 + 22)) >> 16;
      v5[18].i32[0] = bswap32(*(a1 + v3 + 144));
      ntohIPPORT(a1 + v3 + 24);
      ntohIPPORT(a1 + v3 + 64);
      ntohIPPORT(a1 + v3 + 104);
      v3 += 148;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t CandidateByteOrderHToN(uint64_t a1, unsigned int a2)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = 148 * a2;
    do
    {
      v5 = (a1 + v3);
      *v5 = vrev32_s8(*(a1 + v3));
      v5[1].i32[0] = bswap32(*(a1 + v3 + 8));
      v5[2].i16[2] = bswap32(*(a1 + v3 + 20)) >> 16;
      v5[2].i16[3] = bswap32(*(a1 + v3 + 22)) >> 16;
      v5[18].i32[0] = bswap32(*(a1 + v3 + 144));
      htonIPPORT(a1 + v3 + 24);
      htonIPPORT(a1 + v3 + 64);
      htonIPPORT(a1 + v3 + 104);
      v3 += 148;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t RemoveOneCandidateFromList(uint64_t a1, unsigned int a2)
{
  v30 = *MEMORY[0x277D85DE8];
  result = 2148859926;
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = (a1 + 20);
    LOWORD(v6) = -1;
    v7 = a2;
    do
    {
      v9 = *v5;
      v5 += 74;
      v8 = v9;
      if (v9 >= v6)
      {
        v6 = v6;
      }

      else
      {
        v6 = v8;
      }

      --v7;
    }

    while (v7);
    result = v6 == 0xFFFF ? 2148859926 : 0;
    if (v6 != 0xFFFF)
    {
      for (i = a1 + 24; *(i - 4) != v6; i += 148)
      {
        if (!--v4)
        {
          return 0;
        }
      }

      *&v29[14] = 0xAAAAAAAAAAAAAAAALL;
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v28[1] = v11;
      *v29 = v11;
      v28[0] = v11;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(i - 20);
          v15 = *(i - 4);
          v16 = 136316418;
          v17 = v12;
          v18 = 2080;
          v19 = "RemoveOneCandidateFromList";
          v20 = 1024;
          v21 = 168;
          v22 = 1024;
          v23 = v14;
          v24 = 1024;
          v25 = v15;
          v26 = 2080;
          v27 = IPPORTToStringWithSize(v28, i, 0x36uLL);
          _os_log_impl(&dword_23D497000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RemoveOneCandidateFromList: removing %d, %d, %s", &v16, 0x32u);
        }
      }

      result = 0;
      *(i - 4) = -1;
    }
  }

  return result;
}

uint64_t breakByte(uint64_t result, unsigned int *a2, _DWORD *a3)
{
  *a2 = result >> 4;
  *a3 = result & 0xF;
  return result;
}

uint64_t CompressCandidateList(void *a1, int *a2, uint64_t a3, unsigned int a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = 2148859907;
  if (a4 < 1)
  {
    return 2148859926;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __src[2] = v12;
  __src[3] = v12;
  __src[0] = v12;
  __src[1] = v12;
  v47[0] = v12;
  v47[1] = v12;
  v47[2] = v12;
  v47[3] = v12;
  v47[4] = v12;
  v47[5] = v12;
  v47[6] = v12;
  v47[7] = v12;
  v47[8] = v12;
  v47[9] = v12;
  v47[10] = v12;
  v47[11] = v12;
  v47[12] = v12;
  v47[13] = v12;
  v47[14] = v12;
  v47[15] = v12;
  v46[30] = v12;
  v46[31] = v12;
  v46[28] = v12;
  v46[29] = v12;
  v46[26] = v12;
  v46[27] = v12;
  v46[24] = v12;
  v46[25] = v12;
  v46[22] = v12;
  v46[23] = v12;
  v46[20] = v12;
  v46[21] = v12;
  v46[18] = v12;
  v46[19] = v12;
  v46[16] = v12;
  v46[17] = v12;
  v46[14] = v12;
  v46[15] = v12;
  v46[12] = v12;
  v46[13] = v12;
  v46[10] = v12;
  v46[11] = v12;
  v46[8] = v12;
  v46[9] = v12;
  v46[6] = v12;
  v46[7] = v12;
  v46[4] = v12;
  v46[5] = v12;
  v46[2] = v12;
  v46[3] = v12;
  v13 = a4 >= 0x20 ? 32 : a4;
  v46[0] = v12;
  v46[1] = v12;
  do
  {
    v14 = a3 + 148 * v7;
    if (*(v14 + 20) != -1)
    {
      v15 = *(v14 + 24);
      if (v15)
      {
        if (v10 <= 14)
        {
          if (v10 < 1)
          {
            LODWORD(v16) = 0;
          }

          else
          {
            v16 = 0;
            v20 = v47;
            while (*v20 != *(v14 + 44) || v20[1] != *(v14 + 52))
            {
              ++v16;
              v20 += 2;
              if (v10 == v16)
              {
                goto LABEL_28;
              }
            }
          }

          if (v16 == v10)
          {
LABEL_28:
            *(v47 + (16 * v10)) = *(v14 + 44);
            LODWORD(v16) = v10;
          }
        }

        else
        {
          LODWORD(v16) = -1;
        }

        if (v16 == v10)
        {
          ++v10;
        }
      }

      else
      {
        if (v9 <= 14)
        {
          if (v9 < 1)
          {
            LODWORD(v16) = 0;
          }

          else
          {
            v17 = 0;
            v18 = *(v14 + 44);
            v19 = v9;
            while (*(__src + v17) != v18)
            {
              if (v9 == ++v17)
              {
                goto LABEL_35;
              }
            }

            LODWORD(v16) = v17;
          }

          if (v16 == v9)
          {
            v18 = *(v14 + 44);
            v19 = v9;
LABEL_35:
            *(__src + v19) = v18;
            LODWORD(v16) = v9;
          }
        }

        else
        {
          LODWORD(v16) = -1;
        }

        if (v16 == v9)
        {
          ++v9;
        }
      }

      if (v16 != -1)
      {
        v22 = &v46[v8];
        *v22 = *(v14 + 4) & 0xF | (16 * *v14);
        ++v11;
        *(&v46[v8] + 1) = *(v14 + 8);
        *(&v46[v8] + 9) = *(v14 + 20);
        v22[11] = *(v14 + 22);
        v22[12] = *(v14 + 144);
        HIWORD(v46[v8++]) = *(v14 + 60);
        v22[13] = v16 & 0xF | (16 * v15);
      }
    }

    ++v7;
  }

  while (v7 != v13);
  if (!v11)
  {
    return 2148859926;
  }

  v23 = 16 * v10;
  v24 = (4 * v9) | 1;
  v25 = malloc_type_malloc(16 * v10 + 16 * v11 + v24, 0x100004077774924uLL);
  if (v25)
  {
    v26 = v25;
    *v25 = v10 & 0xF | (16 * v9);
    if (v9)
    {
      memcpy(v25 + 1, __src, 4 * v9);
    }

    else
    {
      v24 = 1;
    }

    v27 = 16 * v11;
    if (v10)
    {
      memcpy(&v26[v24], v47, v23);
      v24 += v23;
    }

    memcpy(&v26[v24], v46, v27);
    v28 = v24 + v27;
    *a1 = v26;
    *a2 = v28;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136316674;
        v33 = v29;
        v34 = 2080;
        v35 = "CompressCandidateList";
        v36 = 1024;
        v37 = 315;
        v38 = 1024;
        v39 = v9;
        v40 = 1024;
        v41 = v10;
        v42 = 1024;
        v43 = v11;
        v44 = 1024;
        v45 = v28;
        _os_log_impl(&dword_23D497000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CompressCandidateList: IPs: %d, %d, count: %d, size: %d", &v32, 0x34u);
      }
    }

    return 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      CompressCandidateList_cold_1();
    }
  }

  return v4;
}

uint64_t UncompressCandidateList(unsigned __int8 *a1, uint64_t a2, char **a3, unsigned int *a4)
{
  v4 = a2;
  *&v42[5] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2 - (((4 * (v5 >> 4)) | 1) + 16 * (v5 & 0xF));
  if ((v6 & 0xF) != 0)
  {
    v7 = 2148859905;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v34 = v8;
        v35 = 2080;
        v36 = "UncompressCandidateList";
        v37 = 1024;
        v38 = 331;
        v39 = 1024;
        v40 = v4;
        v41 = 1024;
        v42[0] = v5 >> 4;
        LOWORD(v42[1]) = 1024;
        *(&v42[1] + 2) = v5 & 0xF;
        _os_log_error_impl(&dword_23D497000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Remote candidate data is invalid(len:%d,ipv4:%d,ipv6:%d).", buf, 0x2Eu);
      }
    }

    return v7;
  }

  v32 = malloc_type_calloc(v6 >> 4, 0x94uLL, 0x1000040C185D105uLL);
  if (v32)
  {
    v29 = a4;
    v27 = v6 >> 4;
    v28 = v4;
    v31 = v6 >> 4;
    if (v6 >> 4 >= 1)
    {
      v12 = 0;
      v13 = &a1[16 * (v5 & 0xF) + ((v5 >> 2) & 0x3C)];
      v14 = v32;
      do
      {
        v15 = v13[v12 + 1];
        *v14 = v15 >> 4;
        *(v14 + 1) = v15 & 0xF;
        *(v14 + 2) = *&v13[v12 + 2];
        *(v14 + 3) = *&v13[v12 + 6];
        *(v14 + 10) = *&v13[v12 + 10];
        *(v14 + 11) = v13[v12 + 12];
        *(v14 + 36) = v13[v12 + 13];
        v16 = v13[v12 + 14];
        *(v14 + 6) = v16 >> 4;
        v17 = v16 & 0xF;
        if ((v16 & 0x10) != 0)
        {
          if (v17 >= (v5 & 0xF))
          {
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_18;
            }

            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *MEMORY[0x277CE5818];
            if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_18;
            }

            *buf = 136316162;
            v34 = v22;
            v35 = 2080;
            v36 = "UncompressCandidateList";
            v37 = 1024;
            v38 = 366;
            v39 = 1024;
            v40 = v17;
            v41 = 1024;
            v42[0] = v5 & 0xF;
            v20 = v23;
            v21 = " [%s] %s:%d Remote IPV6 index %d is invalid. Total size: %d.";
LABEL_21:
            _os_log_error_impl(&dword_23D497000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x28u);
            goto LABEL_18;
          }

          *(v14 + 44) = *&a1[16 * v17 + ((4 * (v5 >> 4)) | 1)];
        }

        else
        {
          if (v17 >= v5 >> 4)
          {
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_18;
            }

            v18 = VRTraceErrorLogLevelToCSTR();
            v19 = *MEMORY[0x277CE5818];
            if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_18;
            }

            *buf = 136316162;
            v34 = v18;
            v35 = 2080;
            v36 = "UncompressCandidateList";
            v37 = 1024;
            v38 = 373;
            v39 = 1024;
            v40 = v17;
            v41 = 1024;
            v42[0] = v5 >> 4;
            v20 = v19;
            v21 = " [%s] %s:%d Remote IPV4 index %d is invalid. Total size: %d.";
            goto LABEL_21;
          }

          *(v14 + 11) = *&a1[4 * v17 + 1];
        }

LABEL_18:
        *(v14 + 30) = *&v13[v12 + 15];
        v14 += 148;
        v12 += 16;
      }

      while (16 * v31 != v12);
    }

    *a3 = v32;
    *v29 = v31;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v34 = v24;
        v35 = 2080;
        v36 = "UncompressCandidateList";
        v37 = 1024;
        v38 = 383;
        v39 = 1024;
        v40 = v28;
        v41 = 2048;
        *v42 = 148 * v27;
        _os_log_impl(&dword_23D497000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d UncompressCandidateList: from %d to %ld.", buf, 0x2Cu);
      }
    }

    return 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 2148859907;
  }

  else
  {
    VRTraceErrorLogLevelToCSTR();
    v7 = 2148859907;
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      UncompressCandidateList_cold_1();
    }
  }

  return v7;
}

uint64_t CompressedCandidateByteOrderHToN(unsigned __int8 *a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (__ROR8__(0x14C1BACF914C1BADLL * a2, 2) <= 0x1BACF914C1BACF9uLL)
  {
    v6 = 2148859945;
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return v6;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return v6;
    }

    v12 = 136315650;
    v13 = v7;
    v14 = 2080;
    v15 = "CompressedCandidateByteOrderHToN";
    v16 = 1024;
    v17 = 395;
    v9 = " [%s] %s:%d Uncompressed data by test1.";
LABEL_13:
    _os_log_impl(&dword_23D497000, v8, OS_LOG_TYPE_DEFAULT, v9, &v12, 0x1Cu);
    return v6;
  }

  v2 = ~(((*a1 >> 2) & 0xC) - a2) & 0xF;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    v6 = 2148859945;
    if (ErrorLogLevelForModule < 7)
    {
      return v6;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return v6;
    }

    v12 = 136315650;
    v13 = v10;
    v14 = 2080;
    v15 = "CompressedCandidateByteOrderHToN";
    v16 = 1024;
    v17 = 403;
    v9 = " [%s] %s:%d Uncompressed data by test2.";
    goto LABEL_13;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = v4;
      v14 = 2080;
      v15 = "CompressedCandidateByteOrderHToN";
      v16 = 1024;
      v17 = 406;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Compressed data by test2.", &v12, 0x1Cu);
    }
  }

  return 0;
}

uint64_t CompressedCandidateByteOrderNToH(unsigned __int8 *a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (__ROR8__(0x14C1BACF914C1BADLL * a2, 2) <= 0x1BACF914C1BACF9uLL)
  {
    v6 = 2148859945;
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return v6;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return v6;
    }

    v12 = 136315650;
    v13 = v7;
    v14 = 2080;
    v15 = "CompressedCandidateByteOrderNToH";
    v16 = 1024;
    v17 = 418;
    v9 = " [%s] %s:%d Uncompressed data by test1.";
LABEL_13:
    _os_log_impl(&dword_23D497000, v8, OS_LOG_TYPE_DEFAULT, v9, &v12, 0x1Cu);
    return v6;
  }

  v2 = ~(((*a1 >> 2) & 0xC) - a2) & 0xF;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    v6 = 2148859945;
    if (ErrorLogLevelForModule < 7)
    {
      return v6;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return v6;
    }

    v12 = 136315650;
    v13 = v10;
    v14 = 2080;
    v15 = "CompressedCandidateByteOrderNToH";
    v16 = 1024;
    v17 = 426;
    v9 = " [%s] %s:%d Uncompressed data by test2.";
    goto LABEL_13;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = v4;
      v14 = 2080;
      v15 = "CompressedCandidateByteOrderNToH";
      v16 = 1024;
      v17 = 429;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Compressed data by test2.", &v12, 0x1Cu);
    }
  }

  return 0;
}

uint64_t FixFlippedCandidate(uint64_t a1, unsigned int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2 >= 1)
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = v2;
    v21 = v2;
    *__dst = v2;
    v3 = a2;
    v4 = MEMORY[0x277CE5818];
    v5 = (a1 + 104);
    do
    {
      if (CompareWithFlippedIP((v5 - 10), v5))
      {
        if (*(v5 - 5) == *(v5 - 15) && *(v5 - 3) == *(v5 - 13))
        {
          FlipIP(v5 - 20, v5);
        }

        FlipIP(v5 - 10, v5);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            v9 = IPToString(__dst, (v5 - 10));
            *buf = 136315906;
            v12 = v7;
            v13 = 2080;
            v14 = "FixFlippedCandidate";
            v15 = 1024;
            v16 = 446;
            v17 = 2080;
            v18 = v9;
            _os_log_impl(&dword_23D497000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Recovered true IP %s", buf, 0x26u);
          }
        }
      }

      v5 += 37;
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t AddOneCandidate(uint64_t a1, unsigned int a2, int a3, int a4, int a5, __int128 *a6, __int16 a7, __int128 *a8, unsigned __int8 a9)
{
  v56 = *MEMORY[0x277D85DE8];
  v14 = a1 + 148 * a2;
  *v14 = a5;
  *(v14 + 4) = a3;
  *(v14 + 8) = a4;
  if (a3 != 6)
  {
    v15 = arc4random();
    *(v14 + 12) = 0;
    *(v14 + 12) = bswap32(v15 & 0x7FFFFFFF);
  }

  v16 = *a6;
  v17 = a6[1];
  *(v14 + 56) = *(a6 + 4);
  *(v14 + 40) = v17;
  *(v14 + 24) = v16;
  v18 = *a8;
  v19 = a8[1];
  *(v14 + 96) = *(a8 + 4);
  *(v14 + 64) = v18;
  *(v14 + 80) = v19;
  v20 = *a8;
  v21 = a8[1];
  *(v14 + 136) = *(a8 + 4);
  *(v14 + 120) = v21;
  *(v14 + 104) = v20;
  *(v14 + 22) = 0;
  *(v14 + 20) = a7;
  *(v14 + 144) = a9;
  if (*(v14 + 24))
  {
    *(v14 + 20) = 10;
  }

  *&v55[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[1] = v22;
  *v55 = v22;
  v54[0] = v22;
  v52[0] = v22;
  v52[1] = v22;
  v53[0] = v22;
  *(v53 + 14) = 0xAAAAAAAAAAAAAAAALL;
  FlipIP((v14 + 104), a8);
  __strlcat_chk();
  if (a2 < 1)
  {
LABEL_18:
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v29 = (&g_aCanType)[2 * *(v14 + 4)];
        v30 = IPPORTToStringWithSize(v54, v14 + 24, 0x36uLL);
        v31 = IPPORTToStringWithSize(v52, v14 + 64, 0x36uLL);
        v32 = *(v14 + 20);
        v38 = 136316674;
        v39 = v27;
        v40 = 2080;
        v41 = "AddOneCandidate";
        v42 = 1024;
        v43 = 507;
        v44 = 2080;
        v45 = v29;
        v46 = 2080;
        v47 = v30;
        v48 = 2080;
        v49 = v31;
        v50 = 1024;
        v51 = v32;
        _os_log_impl(&dword_23D497000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d add %s candidate [%s], IF Local [%s], priority [%u]", &v38, 0x40u);
      }
    }

    return 0;
  }

  v23 = *a6 & 1;
  v24 = a2;
  v25 = a1 + 44;
  while (1)
  {
    if ((*(v25 - 20) & 1) == v23)
    {
      if (v23)
      {
        if (*v25 != *(a6 + 20) || *(v25 + 8) != *(a6 + 28))
        {
          goto LABEL_17;
        }
      }

      else if (*v25 != *(a6 + 5))
      {
        goto LABEL_17;
      }

      if (*(v25 + 16) == *(a6 + 18))
      {
        break;
      }
    }

LABEL_17:
    v25 += 148;
    if (!--v24)
    {
      goto LABEL_18;
    }
  }

  v33 = 2148859945;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v37 = (&g_aCanType)[2 * *(v14 + 4)];
      v38 = 136316162;
      v39 = v35;
      v40 = 2080;
      v41 = "AddOneCandidate";
      v42 = 1024;
      v43 = 499;
      v44 = 2080;
      v45 = v37;
      v46 = 2080;
      v47 = IPPORTToStringWithSize(v54, a6, 0x36uLL);
      _os_log_impl(&dword_23D497000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s candidate [%s] already exists", &v38, 0x30u);
    }
  }

  return v33;
}

uint64_t GetICECandidate(uint64_t a1, int a2, int a3, int a4, __int128 *a5, __int16 a6, __int128 *a7, int a8)
{
  *a1 = a4;
  *(a1 + 4) = a2;
  *(a1 + 8) = a3;
  if (a2 != 6)
  {
    *(a1 + 12) = bswap32(arc4random() & 0x7FFFFFFF);
  }

  v13 = *a5;
  v14 = a5[1];
  *(a1 + 56) = *(a5 + 4);
  *(a1 + 40) = v14;
  *(a1 + 24) = v13;
  v15 = *a7;
  v16 = a7[1];
  *(a1 + 96) = *(a7 + 4);
  *(a1 + 64) = v15;
  *(a1 + 80) = v16;
  v17 = *a7;
  v18 = a7[1];
  *(a1 + 136) = *(a7 + 4);
  *(a1 + 120) = v18;
  *(a1 + 104) = v17;
  *(a1 + 24) = a8;
  *(a1 + 22) = 0;
  if (a8)
  {
    v19 = 10;
  }

  else
  {
    v19 = a6;
  }

  *(a1 + 20) = v19;
  FlipIP((a1 + 104), a7);
  return 0;
}

uint64_t SortCandidate(uint64_t a1, int a2)
{
  v4 = a2 - 1;
  if (a2 > 1)
  {
    v5 = 0;
    v6 = a2 - 1;
    do
    {
      v7 = v6;
      v8 = v6;
      v9 = a1 + 148;
      if (v4 > v5)
      {
        do
        {
          v10 = *(v9 + 20);
          v11 = *(v9 - 128);
          if (v10 > v11 || v10 == v11 && ((v17 = *(v9 - 148), *v9 < v17) || *v9 == v17 && strncmp((v9 - 136), (v9 + 12), 8uLL) < 0))
          {
            v12 = v9 - 148;
            v28 = *(v9 - 52);
            v29 = *(v9 - 36);
            v30 = *(v9 - 20);
            v31 = *(v9 - 4);
            v24 = *(v9 - 116);
            v25 = *(v9 - 100);
            v26 = *(v9 - 84);
            v27 = *(v9 - 68);
            v22 = *(v9 - 148);
            v23 = *(v9 - 132);
            v13 = *(v9 + 112);
            *(v12 + 96) = *(v9 + 96);
            *(v12 + 112) = v13;
            *(v12 + 128) = *(v9 + 128);
            *(v12 + 144) = *(v9 + 144);
            v14 = *(v9 + 48);
            *(v12 + 32) = *(v9 + 32);
            *(v12 + 48) = v14;
            v15 = *(v9 + 80);
            *(v12 + 64) = *(v9 + 64);
            *(v12 + 80) = v15;
            v16 = *(v9 + 16);
            *v12 = *v9;
            *(v12 + 16) = v16;
            *(v9 + 96) = v28;
            *(v9 + 112) = v29;
            *(v9 + 128) = v30;
            *(v9 + 144) = v31;
            *(v9 + 32) = v24;
            *(v9 + 48) = v25;
            *(v9 + 64) = v26;
            *(v9 + 80) = v27;
            *v9 = v22;
            *(v9 + 16) = v23;
          }

          v9 += 148;
          --v8;
        }

        while (v8);
      }

      ++v5;
      v6 = v7 - 1;
    }

    while (v5 != v4);
  }

  if (a2 < 1)
  {
    return 0;
  }

  v18 = a2;
  v19 = (a1 + 22);
  v20 = 1;
  do
  {
    if (*(v19 - 9))
    {
      *v19 = v20++;
    }

    v19 += 74;
    --v18;
  }

  while (v18);
  return v20 - 1;
}

uint64_t SortCandidatePair(unint64_t *__src, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 >= 2)
  {
    v3 = 0;
    v4 = a2 - 1;
    v5 = a2 - 1;
    do
    {
      v6 = v5;
      if (v4 > v3)
      {
        v7 = v5;
        v8 = __src;
        do
        {
          v9 = *(v8 + 351);
          v10 = *(v8 + 151);
          if ((v9 < v10 || v9 == v10 && ((v11 = *(v8 + 350), v12 = *(v8 + 150), v11 < v12) || v11 == v12 && bswap64(v8[38]) < bswap64(v8[88]))) && (*(v8 + 10) != 100 || *(v8 + 84) != 100) || *(v8 + 210) == 100 && *(v8 + 284) == 100)
          {
            memcpy(__dst, v8, sizeof(__dst));
            memcpy(v8, v8 + 50, 0x190uLL);
            memcpy(v8 + 50, __dst, 0x190uLL);
          }

          v8 += 50;
          --v7;
        }

        while (v7);
      }

      ++v3;
      v5 = v6 - 1;
    }

    while (v3 != v4);
  }

  return 0;
}

BOOL IsValidCandidatePair(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    v4 = *(a1 + 24);
    v5 = *(a2 + 24);
    if (((v5 ^ v4) & 1) == 0 && *a1 == *a2 && (*(a1 + 4) == 5) == (*(a2 + 4) == 5))
    {
      if (v4)
      {
        v8 = 0;
        if (v5)
        {
LABEL_9:
          v9 = 0;
          return v8 == v9;
        }
      }

      else
      {
        v6 = *(a1 + 44);
        v7 = v6 & 0xFF000000;
        v8 = (v6 & 0xFF0000) == 16646144;
        if (v7 != -1459617792)
        {
          v8 = 0;
        }

        if (v5)
        {
          goto LABEL_9;
        }
      }

      v19 = *(a2 + 44);
      v20 = v19 & 0xFF000000;
      v9 = (v19 & 0xFF0000) == 16646144;
      if (v20 != -1459617792)
      {
        v9 = 0;
      }

      return v8 == v9;
    }

    return 0;
  }

  v10 = *(a1 + 24);
  if (a4)
  {
    v11 = *(a2 + 24);
    if (((v11 ^ v10) & 1) != 0 || *a1 != *a2 || (*(a1 + 4) == 5) != (*(a2 + 4) == 5))
    {
      return 0;
    }

    if (v10)
    {
      v14 = 0;
    }

    else
    {
      v12 = *(a1 + 44);
      v13 = v12 & 0xFF000000;
      v14 = (v12 & 0xFF0000) == 16646144;
      if (v13 != -1459617792)
      {
        v14 = 0;
      }
    }

    if ((v11 & 1) == 0)
    {
      v26 = *(a2 + 44);
      v27 = v26 & 0xFF000000;
      v28 = (v26 & 0xFF0000) == 16646144;
      v29 = v27 == -1459617792;
      goto LABEL_58;
    }

    goto LABEL_61;
  }

  v15 = *(a2 + 24);
  if ((v15 ^ v10))
  {
    return 0;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v16 = *(a1 + 4);
  v17 = *(a2 + 4);
  if ((v16 == 5) != (v17 == 5))
  {
    return 0;
  }

  if (v16 == 1 && v17 == 1 && ((v15 | v10) & 4) != 0)
  {
    v30 = *(a1 + 24) & 1;
    goto LABEL_52;
  }

  if (v10)
  {
    v25 = 0;
  }

  else
  {
    v22 = *(a1 + 44);
    v23 = v22 & 0xFFF00000;
    v24 = HIBYTE(v22);
    v25 = HIWORD(v22) == 49320;
    if (v23 == -1408237568)
    {
      v25 = 1;
    }

    if (v24 == 10)
    {
      v25 = 1;
    }
  }

  v30 = *(a1 + 24) & 1;
  if (v15)
  {
    v35 = 0;
  }

  else
  {
    v31 = *(a2 + 44);
    v32 = v31 & 0xFFF00000;
    v33 = HIBYTE(v31);
    v34 = HIWORD(v31) == 49320;
    v35 = v32 == -1408237568 || v34;
    if (v33 == 10)
    {
      v35 = 1;
    }
  }

  if (v25 == v35)
  {
LABEL_52:
    if (!v30)
    {
      goto LABEL_54;
    }

LABEL_53:
    v14 = 0;
    goto LABEL_56;
  }

  if (v30)
  {
    if (*(a1 + 44) == *MEMORY[0x277D85EE8] && *(a1 + 52) == *(MEMORY[0x277D85EE8] + 8))
    {
      goto LABEL_53;
    }

    goto LABEL_70;
  }

  if (*(a1 + 44))
  {
LABEL_70:
    if (v15)
    {
      if (*(a2 + 44) != *MEMORY[0x277D85EE8] || *(a2 + 52) != *(MEMORY[0x277D85EE8] + 8))
      {
        return 0;
      }
    }

    else if (*(a2 + 44))
    {
      return 0;
    }

    goto LABEL_52;
  }

LABEL_54:
  v36 = *(a1 + 44);
  v37 = HIBYTE(v36);
  v14 = (v36 & 0xFF0000) == 16646144;
  if (v37 != 169)
  {
    v14 = 0;
  }

LABEL_56:
  if ((v15 & 1) == 0)
  {
    v38 = *(a2 + 44);
    v39 = HIBYTE(v38);
    v28 = (v38 & 0xFF0000) == 16646144;
    v29 = v39 == 169;
LABEL_58:
    if (!v29)
    {
      v28 = 0;
    }

    return v14 == v28;
  }

LABEL_61:
  v28 = 0;
  return v14 == v28;
}

uint64_t PairUpCandidate(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v89 = a6;
  v90 = a8;
  v87 = a4;
  v88 = a5;
  v82 = a1;
  v83 = a3;
  v98 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x28223BE20](a1);
  v86 = v11;
  v85 = &v79 - 2 * v11;
  if (v12)
  {
    v13 = v85;
    v14 = 16 * v86;
    do
    {
      *v13 = 0xAAAAAAAAAAAAAAAALL;
      v13[1] = 0xAAAAAAAAAAAAAAAALL;
      v13 += 2;
      v14 -= 16;
    }

    while (v14);
  }

  v80 = v10;
  MEMORY[0x28223BE20](v9);
  v81 = v15;
  v84 = &v79 - 2 * v15;
  if (v16)
  {
    v17 = 16 * v81;
    v18 = v84;
    do
    {
      *v18 = 0xAAAAAAAAAAAAAAAALL;
      v18[1] = 0xAAAAAAAAAAAAAAAALL;
      v18 += 2;
      v17 -= 16;
    }

    while (v17);
  }

  v91 = 0;
  SetUpCandidateList(v82, a2, v85, &v91 + 1);
  SetUpCandidateList(v83, v87, v84, &v91);
  if (a2 < 1)
  {
    goto LABEL_48;
  }

  v79 = a2;
  v19 = 0;
  v20 = 0;
  v22 = v91;
  v21 = HIDWORD(v91);
  do
  {
    if (v87 >= 1)
    {
      v23 = v81;
      v24 = v82 + 148 * v19;
      v25 = v83;
      v26 = v84;
      v27 = &v85[2 * v19];
      do
      {
        if (IsCompatibleCandiatePair(v27, v26, v21, v22, 0))
        {
          v28 = v88 + 400 * v20;
          *(v28 + 368) = 0u;
          *(v28 + 384) = 0u;
          *(v28 + 336) = 0u;
          *(v28 + 352) = 0u;
          *(v28 + 304) = 0u;
          *(v28 + 320) = 0u;
          *(v28 + 272) = 0u;
          *(v28 + 288) = 0u;
          *(v28 + 240) = 0u;
          *(v28 + 256) = 0u;
          *(v28 + 208) = 0u;
          *(v28 + 224) = 0u;
          *(v28 + 176) = 0u;
          *(v28 + 192) = 0u;
          *(v28 + 144) = 0u;
          *(v28 + 160) = 0u;
          *(v28 + 112) = 0u;
          *(v28 + 128) = 0u;
          *(v28 + 80) = 0u;
          *(v28 + 96) = 0u;
          *(v28 + 48) = 0u;
          *(v28 + 64) = 0u;
          *(v28 + 16) = 0u;
          *(v28 + 32) = 0u;
          *v28 = 0u;
          v29 = *(v24 + 16);
          *v28 = *v24;
          *(v28 + 16) = v29;
          v30 = *(v24 + 32);
          v31 = *(v24 + 48);
          v32 = *(v24 + 80);
          *(v28 + 64) = *(v24 + 64);
          *(v28 + 80) = v32;
          *(v28 + 32) = v30;
          *(v28 + 48) = v31;
          v33 = *(v24 + 96);
          v34 = *(v24 + 112);
          v35 = *(v24 + 128);
          *(v28 + 144) = *(v24 + 144);
          *(v28 + 112) = v34;
          *(v28 + 128) = v35;
          *(v28 + 96) = v33;
          v36 = *v25;
          *(v28 + 164) = v25[1];
          *(v28 + 148) = v36;
          v37 = v25[2];
          v38 = v25[3];
          v39 = v25[4];
          *(v28 + 228) = v25[5];
          *(v28 + 212) = v39;
          *(v28 + 196) = v38;
          *(v28 + 180) = v37;
          v40 = v25[6];
          v41 = v25[7];
          v42 = v25[8];
          *(v28 + 292) = *(v25 + 36);
          *(v28 + 260) = v41;
          *(v28 + 276) = v42;
          *(v28 + 244) = v40;
          *(v27 + 2) = 1;
          *(v26 + 2) = 1;
          v43 = *(v24 + 22);
          v44 = *(v25 + 11);
          if (v43 >= v44)
          {
            v45 = *(v25 + 11);
          }

          else
          {
            v45 = *(v24 + 22);
          }

          *(v28 + 302) = v45;
          if (v43 <= v44)
          {
            LOWORD(v43) = v44;
          }

          *(v28 + 300) = v43;
          v46 = 12;
          if (bswap64(*(v28 + 12)) < bswap64(*(v28 + 160)))
          {
            v46 = 160;
          }

          *(v28 + 304) = *(v28 + v46);
          v47 = v90;
          *(v28 + 296) = v89;
          *(v28 + 368) = v47;
          ++v20;
        }

        v25 = (v25 + 148);
        v26 += 2;
        --v23;
      }

      while (v23);
    }

    ++v19;
  }

  while (v19 != v86);
  LODWORD(a2) = v79;
  if (!v20)
  {
LABEL_48:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v48 = VRTraceErrorLogLevelToCSTR();
      v49 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v93 = v48;
        v94 = 2080;
        v95 = "PairUpCandidate";
        v96 = 1024;
        v97 = 843;
        _os_log_impl(&dword_23D497000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Try this again allowing the private-mix type of candidates", buf, 0x1Cu);
      }
    }

    if (a2 < 1)
    {
      v20 = 0;
    }

    else
    {
      v50 = 0;
      v20 = 0;
      v51 = v91;
      v52 = HIDWORD(v91);
      do
      {
        if (v87 >= 1)
        {
          v53 = v81;
          v54 = v82 + 148 * v50;
          v55 = v83;
          v56 = v84;
          v57 = &v85[2 * v50];
          do
          {
            if (IsCompatibleCandiatePair(v57, v56, v52, v51, 1))
            {
              v58 = v88 + 400 * v20;
              *(v58 + 368) = 0u;
              *(v58 + 384) = 0u;
              *(v58 + 336) = 0u;
              *(v58 + 352) = 0u;
              *(v58 + 304) = 0u;
              *(v58 + 320) = 0u;
              *(v58 + 272) = 0u;
              *(v58 + 288) = 0u;
              *(v58 + 240) = 0u;
              *(v58 + 256) = 0u;
              *(v58 + 208) = 0u;
              *(v58 + 224) = 0u;
              *(v58 + 176) = 0u;
              *(v58 + 192) = 0u;
              *(v58 + 144) = 0u;
              *(v58 + 160) = 0u;
              *(v58 + 112) = 0u;
              *(v58 + 128) = 0u;
              *(v58 + 80) = 0u;
              *(v58 + 96) = 0u;
              *(v58 + 48) = 0u;
              *(v58 + 64) = 0u;
              *(v58 + 16) = 0u;
              *(v58 + 32) = 0u;
              *v58 = 0u;
              v59 = *(v54 + 16);
              *v58 = *v54;
              *(v58 + 16) = v59;
              v60 = *(v54 + 32);
              v61 = *(v54 + 48);
              v62 = *(v54 + 80);
              *(v58 + 64) = *(v54 + 64);
              *(v58 + 80) = v62;
              *(v58 + 32) = v60;
              *(v58 + 48) = v61;
              v63 = *(v54 + 96);
              v64 = *(v54 + 112);
              v65 = *(v54 + 128);
              *(v58 + 144) = *(v54 + 144);
              *(v58 + 112) = v64;
              *(v58 + 128) = v65;
              *(v58 + 96) = v63;
              v66 = *v55;
              *(v58 + 164) = v55[1];
              *(v58 + 148) = v66;
              v67 = v55[2];
              v68 = v55[3];
              v69 = v55[4];
              *(v58 + 228) = v55[5];
              *(v58 + 212) = v69;
              *(v58 + 196) = v68;
              *(v58 + 180) = v67;
              v70 = v55[6];
              v71 = v55[7];
              v72 = v55[8];
              *(v58 + 292) = *(v55 + 36);
              *(v58 + 260) = v71;
              *(v58 + 276) = v72;
              *(v58 + 244) = v70;
              *(v57 + 2) = 1;
              *(v56 + 2) = 1;
              v73 = *(v54 + 22);
              v74 = *(v55 + 11);
              if (v73 >= v74)
              {
                v75 = *(v55 + 11);
              }

              else
              {
                v75 = *(v54 + 22);
              }

              *(v58 + 302) = v75;
              if (v73 <= v74)
              {
                LOWORD(v73) = v74;
              }

              *(v58 + 300) = v73;
              v76 = 12;
              if (bswap64(*(v58 + 12)) < bswap64(*(v58 + 160)))
              {
                v76 = 160;
              }

              *(v58 + 304) = *(v58 + v76);
              v77 = v90;
              *(v58 + 296) = v89;
              *(v58 + 368) = v77;
              ++v20;
            }

            v55 = (v55 + 148);
            v56 += 2;
            --v53;
          }

          while (v53);
        }

        ++v50;
      }

      while (v50 != v86);
    }
  }

  if (v80)
  {
    *v80 = v20;
  }

  return 0;
}

uint64_t SetUpCandidateList(uint64_t result, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = (a3 + 8);
    do
    {
      if ((*(result + 24) & 1) != 0 || (v6 = *(result + 44), HIBYTE(v6) != 10) && (v6 >> 20 != 2753 ? (v7 = (v6 & 0xFFFF0000) == -1062731776) : (v7 = 1), !v7))
      {
        *a4 |= 0x20u;
      }

      v8 = *(result + 4) - 1;
      if (v8 <= 8 && ((0x187u >> v8) & 1) != 0)
      {
        *a4 |= dword_23D4C9BA8[v8];
      }

      *(v5 - 1) = result;
      *v5 = 0;
      v5 += 4;
      result += 148;
      --v4;
    }

    while (v4);
  }

  return result;
}

BOOL IsCompatibleCandiatePair(_DWORD *a1, _DWORD *a2, int a3, int a4, int a5)
{
  v76 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *a2;
  v11 = a3 & 4;
  v12 = a4 & 4;
  v13 = *(*a2 + 4);
  v14 = *(*a1 + 4);
  v16 = v13 == 8 || v14 == 8;
  v18 = v13 == 9 || v14 == 9;
  if (a1[2])
  {
    v19 = 1;
  }

  else
  {
    v19 = a2[2] != 0;
  }

  result = 0;
  v22 = (a3 & 4) != 0 && v14 == 9;
  v23 = v13 != 9 || v12 == 0;
  if (v23 && !v22)
  {
    v57 = v19;
    v58 = v16;
    v59 = v18;
    if (!IsValidCandidatePair(v9, v10, a5, (a4 ^ a3) & 0x20))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x277CE5818];
        result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v31 = *(v9 + 24);
        v32 = *(v10 + 24);
        v33 = *v9 == *v10;
        if (v31)
        {
          v35 = 0;
        }

        else
        {
          v34 = *(v9 + 44);
          v35 = 1;
          if (HIBYTE(v34) != 10 && (v34 & 0xFFF00000) != 0xAC100000)
          {
            v35 = HIWORD(v34) == 49320;
          }
        }

        if (v32)
        {
          v37 = 0;
        }

        else
        {
          v36 = *(v10 + 44);
          v37 = 1;
          if (HIBYTE(v36) != 10 && (v36 & 0xFFF00000) != 0xAC100000)
          {
            v37 = HIWORD(v36) == 49320;
          }
        }

        v38 = v32 ^ v31;
        v39 = v35 == v37;
        v41 = (v31 & 1) == 0 && (v40 = *(v9 + 44), (v40 & 0xFF000000) == 0xA9000000) && (v40 & 0xFF0000) == 16646144;
        v42 = (*(v9 + 4) == 5) ^ (*(v10 + 4) != 5);
        v44 = (v32 & 1) == 0 && (v43 = *(v10 + 44), (v43 & 0xFF000000) == 0xA9000000) && (v43 & 0xFF0000) == 16646144;
        *buf = 136316930;
        v61 = v29;
        v62 = 2080;
        v63 = "IsCompatibleCandiatePair";
        v64 = 1024;
        v65 = 773;
        v66 = 1024;
        v67 = (v38 & 1) == 0;
        v68 = 1024;
        v69 = v33;
        v70 = 1024;
        v71 = v42;
        v72 = 1024;
        v73 = v39;
        v74 = 1024;
        v75 = v41 == v44;
        _os_log_impl(&dword_23D497000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ISSAMEIPVERSIONCANDIDATE(pLC, pRC) = %d\n , ISSAMEPROTOCANDIDATE(pLC, pRC) = %d, !ISTURNMIXEDCANDIDATEPAIR(pLC, pRC) = %d, !ISPRIVATEMIXEDCANDIDATEPAIR(pLC, pRC) = %d, !ISSELFASSIGNEDMIXEDCANDIDATEPAIR(pLC, pRC) = %d", buf, 0x3Au);
      }

      return 0;
    }

    if (v14 == 10)
    {
      v25 = v58;
      v24 = v59;
      if (v13 != 10)
      {
        return 0;
      }
    }

    else
    {
      if (v13 == 10)
      {
        return 0;
      }

      v25 = v58;
      v24 = v59;
      if (v14 == 11)
      {
        if (v13 != 11)
        {
          return 0;
        }
      }

      else if (v13 == 11)
      {
        return 0;
      }
    }

    if (!v25 && !v24)
    {
      return 1;
    }

    v56 = a4 & a3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      log = VRTraceErrorLogLevelToCSTR();
      v55 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(v10 + 60);
        v27 = *(v9 + 60);
        *buf = 136316162;
        v61 = log;
        v62 = 2080;
        v63 = "IsCompatibleCandiatePair";
        v64 = 1024;
        v65 = 738;
        v66 = 1024;
        v67 = v26;
        v68 = 1024;
        v69 = v27;
        _os_log_impl(&dword_23D497000, v55, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d pRC->mbIPPort.wPort = %d and (pLC->mbIPPort.wPort) = %d\n", buf, 0x28u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v52 = VRTraceErrorLogLevelToCSTR();
      loga = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v61 = v52;
        v62 = 2080;
        v63 = "IsCompatibleCandiatePair";
        v64 = 1024;
        v65 = 742;
        v66 = 1024;
        v67 = (v56 >> 2) & 1;
        v68 = 1024;
        v69 = (v56 >> 3) & 1;
        v70 = 1024;
        v71 = v57;
        v72 = 1024;
        v73 = v13 == v14;
        _os_log_impl(&dword_23D497000, loga, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d canMatchPreserved = %d, canMatchInOder = %d, eitherCandidateUsed = %d, typesMatch = %d\n", buf, 0x34u);
      }
    }

    result = v13 == v14;
    if ((v56 & 4) == 0 || !v58)
    {
      v28 = v13 == v14 && v59;
      if ((v56 & 8) != 0 && v28 && !v57)
      {
        return 1;
      }

      if ((v56 & 4) == 0 && v58)
      {
        v45 = *(v9 + 4);
        if (v45 != 8)
        {
          goto LABEL_91;
        }

        if ((a4 & 8) != 0)
        {
          v46 = 9;
        }

        else
        {
          if ((a4 & 2) == 0)
          {
            goto LABEL_91;
          }

          v46 = 3;
        }

        v49 = *(v10 + 4);
        if (v49 != v46)
        {
LABEL_92:
          if (v49 == 8)
          {
            if ((a3 & 8) != 0)
            {
              v50 = 9;
              goto LABEL_106;
            }

            if ((a3 & 2) != 0)
            {
              goto LABEL_105;
            }
          }

          return 0;
        }

        if (a1[2])
        {
LABEL_91:
          v49 = *(v10 + 4);
          goto LABEL_92;
        }

        return 1;
      }

      v47 = !v59;
      if (v12 | v11 | v56 & 8)
      {
        v47 = 1;
      }

      if (v47)
      {
        return 0;
      }

      v45 = *(v9 + 4);
      if (v45 != 9)
      {
        goto LABEL_100;
      }

      if ((a4 & 2) != 0)
      {
        v48 = 3;
      }

      else
      {
        if ((a4 & 1) == 0)
        {
          goto LABEL_100;
        }

        v48 = 1;
      }

      v51 = *(v10 + 4);
      if (v51 != v48)
      {
        goto LABEL_101;
      }

      if (!a1[2])
      {
        return 1;
      }

LABEL_100:
      v51 = *(v10 + 4);
LABEL_101:
      if (v51 == 9)
      {
        if ((a3 & 2) != 0)
        {
LABEL_105:
          v50 = 3;
LABEL_106:
          if (v45 == v50)
          {
            return a2[2] == 0;
          }

          return 0;
        }

        if (a3)
        {
          v50 = 1;
          goto LABEL_106;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t DemoteCandidatePair(uint64_t result, int a2, int a3, int a4)
{
  if (result)
  {
    *(result + 296) = a2;
    *(result + 356) = a3;
    *(result + 376) = 0;
    *(result + 364) = a4;
  }

  return result;
}

uint64_t ICERemoveOneRelayBeat(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 568));
  v4 = *(a1 + 632);
  if (v4)
  {
    v5 = *(a2 + 264);
    if (*(v4 + 264) == v5)
    {
      v6 = (a1 + 632);
LABEL_7:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(v4 + 264);
          v13 = 136315906;
          v14 = v8;
          v15 = 2080;
          v16 = "ICERemoveOneRelayBeat";
          v17 = 1024;
          v18 = 157;
          v19 = 1024;
          v20 = v10;
          _os_log_impl(&dword_23D497000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Relay channel [%04X] torn down", &v13, 0x22u);
        }
      }

      v11 = *(v4 + 256);
      if (v11)
      {
        CFRelease(v11);
      }

      *v6 = *(v4 + 328);
      free(v4);
    }

    else
    {
      while (1)
      {
        v7 = v4;
        v4 = *(v4 + 328);
        if (!v4)
        {
          break;
        }

        if (*(v4 + 264) == v5)
        {
          v6 = (v7 + 328);
          goto LABEL_7;
        }
      }
    }
  }

  return pthread_mutex_unlock((a1 + 568));
}

uint64_t ICERemoveOneRelayBeatForLocal(uint64_t a1, int a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 568));
  v6 = *(a1 + 632);
  if (v6)
  {
    v7 = (a1 + 632);
    do
    {
      if (*(v6 + 36) != a2 || (*(v6 + 124) & 1) != (*a3 & 1))
      {
        goto LABEL_17;
      }

      if (*(v6 + 124))
      {
        if (*(v6 + 144) != *(a3 + 20) || *(v6 + 152) != *(a3 + 28))
        {
          goto LABEL_17;
        }
      }

      else if (*(v6 + 144) != *(a3 + 20))
      {
        goto LABEL_17;
      }

      if (*(v6 + 160) == *(a3 + 36))
      {
        v9 = *(v6 + 256);
        if (v9)
        {
          CFRelease(v9);
        }

        *v7 = *(v6 + 328);
        free(v6);
        goto LABEL_18;
      }

LABEL_17:
      v7 = (v6 + 328);
LABEL_18:
      v6 = *v7;
    }

    while (*v7);
  }

  pthread_mutex_unlock((a1 + 568));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315906;
      v14 = v10;
      v15 = 2080;
      v16 = "ICERemoveOneRelayBeatForLocal";
      v17 = 1024;
      v18 = 190;
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&dword_23D497000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove relay binding for call(%d).", &v13, 0x22u);
    }
  }

  return 0;
}

uint64_t ICECompressCandidates(void **a1, int *a2, int a3, uint64_t a4, unsigned int a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v18 = 0;
  v10 = CompressCandidateList(&v19, &v18, a4, a5);
  if ((v10 & 0x80000000) != 0)
  {
    v13 = v10;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICECompressCandidates_cold_4();
      }
    }

LABEL_13:
    if (v19)
    {
      free(v19);
    }
  }

  else
  {
    while (v18 > a3)
    {
      if (v19)
      {
        free(v19);
      }

      v19 = 0;
      v11 = RemoveOneCandidateFromList(a4, a5);
      if ((v11 & 0x80000000) != 0)
      {
        v13 = v11;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICECompressCandidates_cold_3();
          }
        }

        return v13;
      }

      v12 = CompressCandidateList(&v19, &v18, a4, a5);
      if ((v12 & 0x80000000) != 0)
      {
        v13 = v12;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICECompressCandidates_cold_2();
          }
        }

        goto LABEL_13;
      }
    }

    v13 = CompressedCandidateByteOrderHToN(v19, v18);
    if ((v13 & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICECompressCandidates_cold_1();
        }
      }
    }

    else
    {
      *a1 = v19;
      *a2 = v18;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v16 = *a2;
          *buf = 136316162;
          v21 = v14;
          v22 = 2080;
          v23 = "ICECompressCandidates";
          v24 = 1024;
          v25 = 420;
          v26 = 1024;
          v27 = a3;
          v28 = 1024;
          v29 = v16;
          _os_log_impl(&dword_23D497000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICECompressCandidates succeeded(%dB->%dB).", buf, 0x28u);
        }
      }
    }
  }

  return v13;
}

uint64_t ICEGetCandidatesForPeer(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = malloc_type_malloc(148 * *(a1 + 192), 0x1000040C185D105uLL);
  if (v8)
  {
    v9 = *(a1 + 192);
    if (v9 < 1)
    {
      v12 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(a1 + 168);
        if (!a2 || *(v13 + v10 + 4) != 5)
        {
          v14 = &v8[148 * v12];
          v15 = v13 + v10;
          v16 = *(v15 + 16);
          *v14 = *v15;
          *(v14 + 1) = v16;
          v17 = *(v15 + 32);
          v18 = *(v15 + 48);
          v19 = *(v15 + 80);
          *(v14 + 4) = *(v15 + 64);
          *(v14 + 5) = v19;
          *(v14 + 2) = v17;
          *(v14 + 3) = v18;
          v20 = *(v15 + 96);
          v21 = *(v15 + 112);
          v22 = *(v15 + 128);
          *(v14 + 36) = *(v15 + 144);
          *(v14 + 7) = v21;
          *(v14 + 8) = v22;
          *(v14 + 6) = v20;
          ++v12;
          v9 = *(a1 + 192);
        }

        ++v11;
        v10 += 148;
      }

      while (v11 < v9);
    }

    *a3 = v8;
    *a4 = v12;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v27 = 136315906;
        v28 = v24;
        v29 = 2080;
        v30 = "ICEGetCandidatesForPeer";
        v31 = 1024;
        v32 = 449;
        v33 = 1024;
        v34 = v12;
        _os_log_impl(&dword_23D497000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Piggyback %d local candidates.", &v27, 0x22u);
      }
    }

    return 0;
  }

  else
  {
    v23 = 2148859907;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetCandidatesForPeer_cold_1();
      }
    }
  }

  return v23;
}

uint64_t ICEGetCandidates(uint64_t a1, unsigned __int8 a2, uint64_t a3, int a4, void *a5, int *a6, int a7, int a8, double a9, uint64_t a10, const char *a11, void *a12, int a13, int a14)
{
  v173 = *MEMORY[0x277D85DE8];
  v151 = 0;
  v148 = 0;
  v149 = -1431655766;
  v147 = -1;
  v23 = CheckInHandleDebug();
  if (!v23)
  {
    return 2148859906;
  }

  v24 = v23;
  v144 = a7;
  v145 = a4;
  *&v169[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v169 = v25;
  v168 = v25;
  v165 = v25;
  v166 = v25;
  v167 = 0xAAAAAAAAAAAAAAAALL;
  ErrorLogLevelForModule = memset(__b, 170, sizeof(__b));
  v150 = -21846;
  v146 = *(v24 + 16);
  memset(v172, 0, sizeof(v172));
  v171 = 0;
  memset(v170, 0, sizeof(v170));
  if (a12)
  {
    v163 = 0xAAAAAAAAAAAAAAAALL;
    *&v28 = 0xAAAAAAAAAAAAAAAALL;
    *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v161 = v28;
    v162 = v28;
    *&v160[46] = 0xAAAAAAAAAAAAAAAALL;
    *&v160[16] = v28;
    *&v160[32] = v28;
    *v160 = v28;
    IPPortFromDict = GetIPPortFromDict(a12, @"GKSRelaySelfRelayIP", @"GKSRelaySelfRelayPort", &v161);
    if ((IPPortFromDict & 0x80000000) != 0)
    {
      v32 = IPPortFromDict;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEGetCandidates_cold_1();
        }
      }

      goto LABEL_259;
    }

    v142 = a5;
    DWORD1(v162) = bswap32(DWORD1(v162));
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (ErrorLogLevelForModule >= 7)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x277CE5818];
      ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
      if (ErrorLogLevelForModule)
      {
        *buf = 136315906;
        v153 = v30;
        v154 = 2080;
        v155 = "ICEGetCandidates";
        v156 = 1024;
        v157 = 496;
        v158 = 2080;
        v159 = IPPORTToStringWithSize(v160, &v161, 0x36uLL);
        _os_log_impl(&dword_23D497000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d relay server [%s]", buf, 0x26u);
      }
    }

    v143 = a6;
    v141 = 1;
  }

  else
  {
    v142 = a5;
    v143 = a6;
    v141 = 0;
  }

  v33 = micro(ErrorLogLevelForModule, v27);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v36 = "using relay";
      *v160 = 136316418;
      if (!a12)
      {
        v36 = &unk_23D4C9CFB;
      }

      *&v160[4] = v34;
      *&v160[12] = 2080;
      *&v160[14] = "ICEGetCandidates";
      *&v160[22] = 1024;
      *&v160[24] = 503;
      *&v160[28] = 2080;
      *&v160[30] = v36;
      *&v160[38] = 2048;
      *&v160[40] = v33;
      *&v160[48] = 1024;
      *&v160[50] = a3;
      _os_log_impl(&dword_23D497000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d candidate collection start %s: %f (call %d)", v160, 0x36u);
    }
  }

  v37 = a11;
  if (!a8)
  {
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v56 = VRTraceErrorLogLevelToCSTR();
      v57 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *v160 = 136315650;
        *&v160[4] = v56;
        *&v160[12] = 2080;
        *&v160[14] = "ICEGetCandidates";
        *&v160[22] = 1024;
        *&v160[24] = 678;
        _os_log_impl(&dword_23D497000, v57, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d external candidate collection skipped ...", v160, 0x1Cu);
      }
    }

    v38 = 0;
    goto LABEL_60;
  }

  pthread_mutex_lock((v24 + 168));
  v38 = *(v24 + 232);
  if (!v38)
  {
LABEL_20:
    v39 = 1;
    goto LABEL_21;
  }

  while (*(v38 + 148) != a3 || !ICERetainICEList(v38))
  {
    v38 = *(v38 + 912);
    if (!v38)
    {
      goto LABEL_20;
    }
  }

  pthread_mutex_lock((v38 + 16));
  if (a12)
  {
    v87 = *(v38 + 128) == 0;
  }

  else
  {
    v87 = 1;
  }

  v88 = v87;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v89 = VRTraceErrorLogLevelToCSTR();
    v90 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *v160 = 136315906;
      *&v160[4] = v89;
      *&v160[12] = 2080;
      *&v160[14] = "ICEGetCandidates";
      *&v160[22] = 1024;
      *&v160[24] = 519;
      *&v160[28] = 1024;
      *&v160[30] = a3;
      _os_log_impl(&dword_23D497000, v90, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found running ICE for call (%d)", v160, 0x22u);
    }
  }

  if (!v88)
  {
    *v160 = 0xAAAAAAAAAAAAAAAALL;
    RemotePrimaryCID = GetRemotePrimaryCID(a12, v160);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v96 = VRTraceErrorLogLevelToCSTR();
      v97 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v98 = *(v38 + 420);
        *v160 = 136316418;
        *&v160[4] = v96;
        *&v160[12] = 2080;
        *&v160[14] = "ICEGetCandidates";
        *&v160[22] = 1024;
        *&v160[24] = 609;
        *&v160[28] = 1024;
        *&v160[30] = v98;
        *&v160[34] = 1024;
        *&v160[36] = RemotePrimaryCID >= 0;
        *&v160[40] = 2048;
        *&v160[42] = a12;
        _os_log_impl(&dword_23D497000, v97, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Relay collection start (PE State: %d), secondary %d, %p", v160, 0x32u);
      }
    }

    *(v38 + 232) = 1;
    *(v38 + 440) = 0;
    *(v38 + 756) = 1;
    if (a11)
    {
      strncpy((v38 + 316), a11, 0x41uLL);
    }

    v99 = *(v38 + 744);
    if (v99)
    {
      CFRelease(v99);
    }

    *(v38 + 744) = CFRetain(a12);
    *(v38 + 752) = 0;
    v100 = GetIPPortFromDict(a12, @"GKSRelaySelfRelayIP", @"GKSRelaySelfRelayPort", v38 + 236);
    if ((v100 & 0x80000000) != 0)
    {
      pthread_mutex_unlock((v24 + 168));
    }

    else
    {
      *(v38 + 256) = bswap32(*(v38 + 256));
      pthread_mutex_unlock((v24 + 168));
      if (IsIPPORTValid(v38 + 236))
      {
        if (*(v38 + 420) == 6)
        {
          v32 = 2148859927;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ICEGetCandidates_cold_5();
            }
          }

          goto LABEL_193;
        }

        *(v38 + 420) = 1;
        (*(v24 + 40))(*(v24 + 8), 0);
        while (1)
        {
          v102 = *(v38 + 420);
          if (v102 != 1)
          {
            break;
          }

          pthread_cond_wait((v38 + 80), (v38 + 16));
        }

        switch(v102)
        {
          case 3:
            *(v38 + 424) = 15;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v32 = 2148859927;
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ICEGetCandidates_cold_3();
              }

              goto LABEL_193;
            }

            break;
          case 4:
            if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
            {
              ICEGetCandidates_cold_4();
              v32 = 2148859955;
            }

            else
            {
              v32 = 2148859955;
            }

            goto LABEL_193;
          case 6:
            *(v38 + 424) = 15;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v32 = 2148859927;
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ICEGetCandidates_cold_2();
              }

              goto LABEL_193;
            }

            break;
          default:
            *(v38 + 420) = 0;
            pthread_mutex_unlock((v38 + 16));
            v43 = 0;
            goto LABEL_61;
        }

        v32 = 2148859927;
LABEL_193:
        pthread_mutex_unlock((v38 + 16));
        goto LABEL_258;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetCandidates_cold_6();
      }
    }

    if (v100)
    {
      v32 = v100;
    }

    else
    {
      v32 = 2148859905;
    }

    goto LABEL_193;
  }

  v39 = 0;
LABEL_21:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v40 = VRTraceErrorLogLevelToCSTR();
    v41 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *v160 = 136315650;
      *&v160[4] = v40;
      *&v160[12] = 2080;
      *&v160[14] = "ICEGetCandidates";
      *&v160[22] = 1024;
      *&v160[24] = 525;
      _os_log_impl(&dword_23D497000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Regular collection start.", v160, 0x1Cu);
    }
  }

  v32 = SendCollectionRequest(v24, &v151, a3, a11, a12);
  if ((v39 & 1) == 0)
  {
    pthread_mutex_unlock((v38 + 16));
  }

  pthread_mutex_unlock((v24 + 168));
  if ((v32 & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetCandidates_cold_8();
      }
    }

    goto LABEL_257;
  }

  v42 = v151;
  v43 = 1;
  if (!v151)
  {
    goto LABEL_61;
  }

  LODWORD(v161) = 1;
  while (1)
  {
    v44 = ICERecvUDPPacketWithTimeout(v24, v42, a3, __b, &v149, v172, v170, &v147, 500);
    if ((v44 & 0x80000000) == 0)
    {
      v46 = ProcessCollectionResponse(v24, v151, a3, __b, v149, v172, v170, &v150, a12, &v161, &v148);
      if (v46 < 0)
      {
        v48 = v37;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v53 = VRTraceErrorLogLevelToCSTR();
          v54 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            *v160 = 136316162;
            *&v160[4] = v53;
            *&v160[12] = 2080;
            *&v160[14] = "ICEGetCandidates";
            *&v160[22] = 1024;
            *&v160[24] = 580;
            *&v160[28] = 1024;
            *&v160[30] = 580;
            *&v160[34] = 1024;
            *&v160[36] = v46;
            _os_log_error_impl(&dword_23D497000, v54, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ProcessCollectionResponse failed (%08X)\n", v160, 0x28u);
          }
        }
      }

      else
      {
        v47 = v151;
        if (!v151)
        {
          goto LABEL_60;
        }

        v48 = v37;
        while (*(v47 + 6))
        {
          v47 = v47[198];
          if (!v47)
          {
            goto LABEL_164;
          }
        }
      }

      goto LABEL_52;
    }

    v46 = v44;
    v48 = v37;
    v49 = v44;
    if (v44 > 0x1Eu || ((1 << v44) & 0x40801000) == 0)
    {
      v44 = VRTraceGetErrorLogLevelForModule();
      if (v44 >= 3)
      {
        v138 = VRTraceErrorLogLevelToCSTR();
        v55 = *MEMORY[0x277CE5818];
        v44 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
        if (v44)
        {
          *v160 = 136316162;
          *&v160[4] = v138;
          *&v160[12] = 2080;
          *&v160[14] = "ICEGetCandidates";
          *&v160[22] = 1024;
          *&v160[24] = 552;
          *&v160[28] = 1024;
          *&v160[30] = 552;
          *&v160[34] = 1024;
          *&v160[36] = v46;
          _os_log_error_impl(&dword_23D497000, v55, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICERecvUDPPacketWithTimeout failed (%08X)\n", v160, 0x28u);
        }
      }
    }

    v50 = micro(v44, v45) - v33;
    if (a9 != 0.0 && v50 > a9 && v151 != 0)
    {
      break;
    }

LABEL_46:
    if (v50 > 5.0)
    {
      goto LABEL_164;
    }

    if (v49 != 12)
    {
      ReXmitCollectionRequest(*(v24 + 8), *(v24 + 720), v151, v146);
    }

LABEL_52:
    v42 = v151;
    v37 = v48;
  }

  v52 = v151;
  while (*(v52 + 6) != 1)
  {
    v52 = v52[198];
    if (!v52)
    {
      goto LABEL_46;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v91 = VRTraceErrorLogLevelToCSTR();
    v92 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *v160 = 136316162;
      *&v160[4] = v91;
      *&v160[12] = 2080;
      *&v160[14] = "ICEGetCandidates";
      *&v160[22] = 1024;
      *&v160[24] = 558;
      *&v160[28] = 2048;
      *&v160[30] = v50;
      *&v160[38] = 2048;
      *&v160[40] = a9;
      _os_log_impl(&dword_23D497000, v92, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEGetCandidates: Timed out after %f seconds, nonCellularCandidateTimeout = %f", v160, 0x30u);
    }
  }

LABEL_164:
  v93 = v151;
  v37 = v48;
  if (v151)
  {
    do
    {
      v94 = v93[198];
      free(v93);
      v151 = v94;
      v93 = v94;
    }

    while (v94);
  }

  v151 = 0;
  if (a12 && v46 < 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetCandidates_cold_7();
      }
    }

    v32 = 2148859955;
    goto LABEL_257;
  }

LABEL_60:
  v43 = 1;
LABEL_61:
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v58 = VRTraceErrorLogLevelToCSTR();
    v59 = *MEMORY[0x277CE5818];
    v60 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
    if (v60)
    {
      v62 = micro(v60, v61);
      *v160 = 136315906;
      *&v160[4] = v58;
      *&v160[12] = 2080;
      *&v160[14] = "ICEGetCandidates";
      *&v160[22] = 1024;
      *&v160[24] = 681;
      *&v160[28] = 2048;
      *&v160[30] = v62;
      _os_log_impl(&dword_23D497000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d candidate collection done : %f", v160, 0x26u);
    }
  }

  pthread_mutex_lock((v24 + 96));
  v63 = *(v24 + 160);
  if (!v63)
  {
    goto LABEL_255;
  }

  v64 = 0;
  v65 = a14;
  do
  {
    if (*v63)
    {
      v66 = *v63 == 5;
    }

    else
    {
      v66 = 1;
    }

    if (v66 || *(v63 + 4) == a3)
    {
      ++v64;
    }

    v63 = *(v63 + 240);
  }

  while (v63);
  if (!v64)
  {
    goto LABEL_255;
  }

  v67 = malloc_type_calloc(1uLL, 592 * v64, 0x1000040C185D105uLL);
  if (v67)
  {
    v68 = v67;
    __src = v37;
    v69 = *(v24 + 160);
    if (!v69)
    {
      pthread_mutex_unlock((v24 + 96));
      goto LABEL_217;
    }

    v139 = v43;
    v70 = 0;
    while (2)
    {
      if (*v69)
      {
        v71 = *v69 == 5;
      }

      else
      {
        v71 = 1;
      }

      if (!v71 && *(v69 + 4) != a3 || (v72 = *(v69 + 8), v73 = *(v69 + 24), *&v172[32] = *(v69 + 40), *v172 = v72, *&v172[16] = v73, !IsIPPORTValid(v172)))
      {
LABEL_91:
        v75 = v70;
        goto LABEL_92;
      }

      if (a12)
      {
        v74 = *(v69 + 196);
        v165 = *(v69 + 180);
        v166 = v74;
        v167 = *(v69 + 212);
        if (IsIPPORTValid(&v165) && *(v69 + 220) == 1)
        {
          v101 = AddOneCandidate(v68, v70, 5, a3, *v69, &v165, 40, v172, a2);
          if (v101 < 0)
          {
            LODWORD(v75) = v70;
          }

          else
          {
            *(v69 + 220) = 0;
            LODWORD(v75) = v70 + 1;
          }

          if (v139)
          {
LABEL_207:
            pthread_mutex_unlock((v24 + 96));
            if (v75 >= 1)
            {
              v103 = v75;
              v104 = 24;
              do
              {
                if ((v68[v104] & 1) == 0)
                {
                  v105 = v75;
                  v107 = v68;
                  goto LABEL_222;
                }

                v104 += 148;
                --v103;
              }

              while (v103);
              v105 = v75 + 1;
              v106 = malloc_type_realloc(v68, 148 * (v75 + 1), 0x1000040C185D105uLL);
              if (v106)
              {
                v107 = v106;
                MakeIPPORT(v172, "0.0.0.0", 16402);
                if ((AddOneCandidate(v107, v75, 1, a3, **(v24 + 160), v172, 90, v172, a2) & 0x80000000) != 0)
                {
                  goto LABEL_216;
                }

                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  LODWORD(v75) = v75 + 1;
                  v108 = VRTraceErrorLogLevelToCSTR();
                  v109 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    *v160 = 136315650;
                    *&v160[4] = v108;
                    *&v160[12] = 2080;
                    *&v160[14] = "ICEGetCandidates";
                    *&v160[22] = 1024;
                    *&v160[24] = 898;
                    _os_log_impl(&dword_23D497000, v109, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEGetCandidates: added a dummy IPv4 candidate.", v160, 0x1Cu);
                  }

LABEL_216:
                  v105 = v75;
                }

LABEL_222:
                v110 = 148 * v105;
                v111 = malloc_type_malloc(148 * v105, 0x1000040C185D105uLL);
                if (v111)
                {
                  v112 = v105;
                  v113 = v111;
                  v114 = 0;
                  v115 = v112;
                  if (v112 <= 1)
                  {
                    v112 = 1;
                  }

                  v116 = 148 * v112;
                  do
                  {
                    v117 = &v111[v114 / 4];
                    v118 = *&v107[v114 + 16];
                    *v117 = *&v107[v114];
                    *(v117 + 1) = v118;
                    v119 = *&v107[v114 + 32];
                    v120 = *&v107[v114 + 48];
                    v121 = *&v107[v114 + 80];
                    *(v117 + 4) = *&v107[v114 + 64];
                    *(v117 + 5) = v121;
                    *(v117 + 2) = v119;
                    *(v117 + 3) = v120;
                    v122 = *&v107[v114 + 96];
                    v123 = *&v107[v114 + 112];
                    v124 = *&v107[v114 + 128];
                    *(v117 + 36) = *&v107[v114 + 144];
                    *(v117 + 7) = v123;
                    *(v117 + 8) = v124;
                    *(v117 + 6) = v122;
                    v114 += 148;
                  }

                  while (v116 != v114);
                  free(v107);
                  if (a14)
                  {
                    v125 = ICEGetNewCandidates(v24, a3, v113, v115, 1);
                    if ((v125 & 0x80000000) != 0)
                    {
                      v32 = v125;
                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        VRTraceErrorLogLevelToCSTR();
                        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                        {
                          ICEGetCandidates_cold_11();
                        }
                      }

                      goto LABEL_280;
                    }

LABEL_238:
                    if (v145)
                    {
                      *v160 = 0;
                      LODWORD(v161) = 0;
                      v32 = ICECompressCandidates(v160, &v161, *v143, v113, v115);
                      free(v113);
                      if ((v32 & 0x80000000) != 0)
                      {
                        if (VRTraceGetErrorLogLevelForModule() >= 3)
                        {
                          VRTraceErrorLogLevelToCSTR();
                          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                          {
                            ICEGetCandidates_cold_12();
                          }
                        }
                      }

                      else
                      {
                        *v143 = v161;
                        *v142 = *v160;
                      }

                      goto LABEL_257;
                    }

                    v32 = CandidateByteOrderHToN(v113, v115);
                    if ((v32 & 0x80000000) == 0)
                    {
                      *v143 = v110;
                      *v142 = v113;
                      goto LABEL_257;
                    }

                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                      {
                        ICEGetCandidates_cold_13();
                      }
                    }
                  }

                  else
                  {
                    if (!v139)
                    {
                      goto LABEL_238;
                    }

                    v127 = AddOneICEList(v24, a1, a3, v113, v115, v144, v141, &v165, __src, a12);
                    if ((v127 & 0x80000000) == 0)
                    {
                      goto LABEL_238;
                    }

                    v32 = v127;
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                      {
                        ICEGetCandidates_cold_14();
                      }
                    }
                  }

LABEL_280:
                  free(v113);
                  goto LABEL_257;
                }

                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                  {
                    ICEGetCandidates_cold_15();
                  }
                }

                v126 = v107;
              }

              else
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                  {
                    ICEGetCandidates_cold_10();
                  }
                }

                v126 = v68;
              }

              free(v126);
              goto LABEL_246;
            }

LABEL_217:
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ICEGetCandidates_cold_16();
              }
            }

            free(v68);
LABEL_256:
            v32 = 2148859926;
            goto LABEL_257;
          }

          pthread_mutex_lock((v24 + 168));
          for (i = *(v24 + 232); i; i = *(i + 912))
          {
            if (*(i + 148) == a3)
            {
              pthread_mutex_lock((i + 16));
              if (*(i + 128))
              {
                v130 = *(v68 + 1);
                *(i + 444) = *v68;
                *(i + 460) = v130;
                v131 = *(v68 + 2);
                v132 = *(v68 + 3);
                v133 = *(v68 + 5);
                *(i + 508) = *(v68 + 4);
                *(i + 524) = v133;
                *(i + 476) = v131;
                *(i + 492) = v132;
                v134 = *(v68 + 6);
                v135 = *(v68 + 7);
                v136 = *(v68 + 8);
                *(i + 588) = *(v68 + 36);
                *(i + 556) = v135;
                *(i + 572) = v136;
                *(i + 540) = v134;
                v137 = (*(i + 234) + 2) & 0x3FFF | 0x4000;
                *(i + 234) = (*(i + 234) + 2) & 0x3FFF | 0x4000;
                AddOneRelayBeat(v24, a1, *(i + 148), __src, (i + 508), (i + 236), a12, v137);
                pthread_mutex_unlock((i + 16));
                pthread_mutex_unlock((v24 + 168));
                goto LABEL_207;
              }

              pthread_mutex_unlock((i + 16));
            }
          }

          pthread_mutex_unlock((v24 + 168));
          free(v68);
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ICEGetCandidates_cold_9();
            }
          }

LABEL_255:
          pthread_mutex_unlock((v24 + 96));
          goto LABEL_256;
        }

        goto LABEL_91;
      }

      v76 = *(v69 + 112);
      v168 = *(v69 + 96);
      *v169 = v76;
      *&v169[16] = *(v69 + 128);
      if ((*v172 & 0x100) != 0)
      {
        v77 = AddOneCandidate(v68, v70, 10, a3, *v69, v172, 50, v172, a2);
      }

      else
      {
        if ((*v172 & 0x200) == 0)
        {
          if ((v172[0] & 2) != 0)
          {
            v78 = AddOneCandidate(v68, v70, 7, a3, *v69, v172, 50, v172, a2);
          }

          else
          {
            if (!IsIPPORTValid(&v168) || (v168 & 1) != (v172[0] & 1))
            {
              goto LABEL_112;
            }

            if ((v168 & 1) == 0)
            {
              if (*&v169[4] != *&v172[20])
              {
                goto LABEL_112;
              }

LABEL_111:
              v75 = v70;
              if (*&v169[20] != *&v172[36])
              {
                goto LABEL_112;
              }

LABEL_117:
              if (v70 >= v75)
              {
                v82 = v70;
              }

              else
              {
                v81 = (v69 + 48);
                if (v65)
                {
                  v82 = v75;
                  if (*v81)
                  {
                    v83 = (v69 + 48);
                    v81 = &v68[148 * v70 + 12];
                    goto LABEL_123;
                  }
                }

                else
                {
                  v83 = &v68[148 * v70 + 12];
LABEL_123:
                  *v81 = *v83;
                  v82 = v75;
                }
              }

              if (!IsIPPORTValid(&v168))
              {
                goto LABEL_137;
              }

              v84 = *(v69 + 228);
              if ((v84 & 0xFFFFFFFE) != 8)
              {
                goto LABEL_129;
              }

              if (*(v69 + 4) == a3)
              {
                if (v84 == 9)
                {
                  ++*&v169[20];
                }

LABEL_129:
                if (v84 == -1)
                {
                  v85 = 3;
                }

                else
                {
                  v85 = v84;
                }

                v86 = *(v69 + 224);
                if (v86 == -1)
                {
                  if ((*(v69 + 8) & 4) != 0)
                  {
                    LOWORD(v86) = 50;
                  }

                  else
                  {
                    LOWORD(v86) = 70;
                  }
                }

                v75 = v75 + (AddOneCandidate(v68, v75, v85, a3, *v69, &v168, v86, v172, a2) >= 0);
LABEL_137:
                if (v82 < v75)
                {
                  if (a14)
                  {
                    if (*(v69 + 136))
                    {
                      *&v68[148 * v82 + 12] = *(v69 + 136);
                    }
                  }

                  else
                  {
                    *(v69 + 136) = *&v68[148 * v82 + 12];
                  }
                }
              }

              v65 = a14;
LABEL_92:
              v69 = *(v69 + 240);
              v70 = v75;
              if (!v69)
              {
                goto LABEL_207;
              }

              continue;
            }

            if (*&v169[4] == *&v172[20] && *&v169[12] == *&v172[28])
            {
              goto LABEL_111;
            }

LABEL_112:
            if ((*(v69 + 8) & 4) != 0)
            {
              v80 = 50;
            }

            else
            {
              v80 = 90;
            }

            v78 = AddOneCandidate(v68, v70, 1, a3, *v69, v172, v80, v172, a2);
          }

          v75 = v70 + (v78 >= 0);
          goto LABEL_117;
        }

        v77 = AddOneCandidate(v68, v70, 11, a3, *v69, v172, 50, v172, a2);
      }

      break;
    }

    v75 = v70 + (v77 >= 0);
    goto LABEL_92;
  }

  pthread_mutex_unlock((v24 + 96));
LABEL_246:
  v32 = 2148859907;
LABEL_257:
  if (v38)
  {
LABEL_258:
    pthread_mutex_lock((v24 + 168));
    ICEReleaseAndFreeICEList(v38, v24, 0, a1);
    pthread_mutex_unlock((v24 + 168));
  }

LABEL_259:
  CheckOutHandleDebug();
  return v32;
}

BOOL ICERetainICEList(uint64_t a1)
{
  v2 = *(a1 + 416);
  if (v2 < 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICERetainICEList_cold_1();
      }
    }
  }

  else
  {
    *(a1 + 416) = v2 + 1;
  }

  return *(a1 + 416) > 0;
}

uint64_t ICERecvUDPPacketWithTimeout(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, void *a8, int a9)
{
  v57 = *MEMORY[0x277D85DE8];
  v16 = micro(a1, a2);
  pthread_mutex_lock((a1 + 496));
  v17 = (a1 + 560);
  v18 = *(a1 + 560);
  if (v18)
  {
    if (!ICECheckPacket(a1, *(a1 + 560), a2, a3))
    {
      do
      {
        v19 = v18;
        v18 = *(v18 + 1584);
        if (!v18)
        {
          goto LABEL_6;
        }
      }

      while (!ICECheckPacket(a1, v18, a2, a3));
      v17 = (v19 + 1584);
    }

    v32 = *(v18 + 1492);
    *a5 = v32;
    memcpy(a4, (v18 + 7), v32);
    v33 = *(v18 + 1528);
    v34 = *(v18 + 1512);
    *a6 = *(v18 + 1496);
    *(a6 + 16) = v34;
    *(a6 + 32) = v33;
    v35 = *(v18 + 1552);
    v36 = *(v18 + 1536);
    *(a7 + 32) = *(v18 + 1568);
    *a7 = v36;
    *(a7 + 16) = v35;
    *a8 = *(v18 + 1576);
    *v17 = *(v18 + 1584);
    free(v18);
    pthread_mutex_unlock((a1 + 496));
    return 0;
  }

LABEL_6:
  __dst = a4;
  v45 = a6;
  v20 = 2148859927;
  v21 = pthread_mutex_unlock((a1 + 496));
  v23 = (a9 - ((micro(v21, v22) - v16) * 1000.0));
  if (v23 < 1)
  {
    return v20;
  }

  v43 = a8;
  v24 = 0;
  do
  {
    if (v24)
    {
      bzero(v24, 0x638uLL);
    }

    else
    {
      v24 = malloc_type_calloc(1uLL, 0x638uLL, 0x102004070FB87F4uLL);
      if (!v24)
      {
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 3)
        {
          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x277CE5818];
          ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
          if (ErrorLogLevelForModule)
          {
            *buf = 136316162;
            v48 = v30;
            v49 = 2080;
            v50 = "ICERecvUDPPacketWithTimeout";
            v51 = 1024;
            v52 = 2421;
            v53 = 1024;
            v54 = 2421;
            v55 = 1024;
            v56 = 1592;
            _os_log_error_impl(&dword_23D497000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: calloc(%d) failed", buf, 0x28u);
          }
        }

LABEL_17:
        v24 = 0;
        goto LABEL_19;
      }
    }

    ErrorLogLevelForModule = (*(a1 + 24))(*(a1 + 8), a3, v24 + 7, v24 + 373, v24 + 374, v24 + 384, v24 + 394, v23, 1);
    v20 = ErrorLogLevelForModule;
    if ((ErrorLogLevelForModule & 0x80000000) == 0)
    {
      ProcessMessageType(v24);
      if (ICECheckPacket(a1, v24, a2, a3))
      {
        v37 = v24[373];
        *a5 = v37;
        memcpy(__dst, v24 + 7, v37);
        v38 = *(v24 + 191);
        v39 = *(v24 + 378);
        *v45 = *(v24 + 374);
        *(v45 + 16) = v39;
        *(v45 + 32) = v38;
        v41 = *(v24 + 96);
        v40 = *(v24 + 97);
        *(a7 + 32) = *(v24 + 196);
        *a7 = v41;
        *(a7 + 16) = v40;
        *v43 = *(v24 + 197);
LABEL_30:
        free(v24);
        return v20;
      }

      pthread_mutex_lock((a1 + 496));
      v27 = *v17;
      v28 = (a1 + 560);
      if (*v17)
      {
        do
        {
          v29 = v27;
          v27 = *(v27 + 1584);
        }

        while (v27);
        v28 = (v29 + 1584);
      }

      *v28 = v24;
      ErrorLogLevelForModule = pthread_mutex_unlock((a1 + 496));
      goto LABEL_17;
    }

    if (ErrorLogLevelForModule == 30)
    {
      goto LABEL_30;
    }

LABEL_19:
    v23 = (v23 - ((micro(ErrorLogLevelForModule, v26) - v16) * 1000.0));
  }

  while (v23 >= 1);
  if (v24)
  {
    free(v24);
  }

  return 2148859927;
}

void AddOneRelayBeat(uint64_t a1, uint64_t a2, int a3, const char *a4, __int128 *a5, __int128 *a6, const void *a7, int a8)
{
  v48 = *MEMORY[0x277D85DE8];
  v16 = malloc_type_calloc(1uLL, 0x150uLL, 0x10A0040062F5B3BuLL);
  if (v16)
  {
    v17 = v16;
    *(v16 + 9) = a3;
    *v16 = *(a1 + 8);
    *(v16 + 1) = a2;
    if (a4)
    {
      strncpy(v16 + 57, a4, 0x41uLL);
    }

    *(v17 + 16) = 1;
    v18 = *a5;
    v19 = a5[1];
    *(v17 + 156) = *(a5 + 4);
    *(v17 + 140) = v19;
    *(v17 + 124) = v18;
    v20 = *a6;
    v21 = a6[1];
    *(v17 + 236) = *(a6 + 4);
    *(v17 + 220) = v21;
    *(v17 + 204) = v20;
    v22 = *a6;
    v23 = a6[1];
    *(v17 + 196) = *(a6 + 4);
    *(v17 + 180) = v23;
    *(v17 + 164) = v22;
    *(v17 + 31) = 0;
    *(v17 + 78) = 1;
    *(v17 + 66) = a8;
    *(v17 + 40) = *(a1 + 16);
    if (a7)
    {
      *(v17 + 32) = CFRetain(a7);
    }

    pthread_mutex_lock((a1 + 568));
    v24 = *(a1 + 632);
    if (v24)
    {
      do
      {
        v25 = v24;
        v24 = *(v24 + 328);
      }

      while (v24);
      v26 = (v25 + 328);
    }

    else
    {
      v26 = (a1 + 632);
    }

    *v26 = v17;
    pthread_mutex_unlock((a1 + 568));
    *&v47[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v46[1] = v27;
    *v47 = v27;
    v46[0] = v27;
    *&v45[14] = 0xAAAAAAAAAAAAAAAALL;
    v44[1] = v27;
    *v45 = v27;
    v44[0] = v27;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v30 = 136316674;
        v31 = v28;
        v32 = 2080;
        v33 = "AddOneRelayBeat";
        v34 = 1024;
        v35 = 108;
        v36 = 1024;
        v37 = a3;
        v38 = 1024;
        v39 = a8;
        v40 = 2080;
        v41 = IPPORTToStringWithSize(v46, a5, 0x36uLL);
        v42 = 2080;
        v43 = IPPORTToStringWithSize(v44, a6, 0x36uLL);
        _os_log_impl(&dword_23D497000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add RB(%d): channel#[%04X], local[%s], server[%s].", &v30, 0x3Cu);
      }
    }
  }
}

uint64_t ICEGetNewCandidates(uint64_t a1, int a2, _DWORD *a3, unsigned int a4, int a5)
{
  v47 = *MEMORY[0x277D85DE8];
  result = 2148859905;
  if (a3 && a4 >= 1)
  {
    pthread_mutex_lock((a1 + 168));
    v11 = *(a1 + 232);
    if (!v11)
    {
LABEL_39:
      pthread_mutex_unlock((a1 + 168));
      return 0;
    }

    while (*(v11 + 148) != a2)
    {
      v11 = *(v11 + 912);
      if (!v11)
      {
        goto LABEL_39;
      }
    }

    pthread_mutex_lock((v11 + 16));
    if (a5)
    {
      v12 = *(v11 + 148);
      v13 = (a4 + 3) & 0xFFFFFFFC;
      v14 = xmmword_23D4C9BF0;
      v15 = xmmword_23D4C9C00;
      v16 = vdupq_n_s64(a4 - 1);
      v17 = vdupq_n_s64(4uLL);
      v18 = 776;
      v19 = 772;
      v20 = 768;
      v21 = a3;
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v16, v15));
        if (vuzp1_s16(v22, *v14.i8).u8[0])
        {
          v21[2] = v12;
        }

        if (vuzp1_s16(v22, *&v14).i8[2])
        {
          v21[39] = v12;
        }

        if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v16, *&v14))).i32[1])
        {
          v21[76] = v12;
          v21[113] = v12;
        }

        v14 = vaddq_s64(v14, v17);
        v15 = vaddq_s64(v15, v17);
        v21 += 148;
        v13 -= 4;
      }

      while (v13);
    }

    else
    {
      v18 = 792;
      v19 = 788;
      v20 = 784;
    }

    v23 = *(v11 + v18);
    v24 = *(v11 + v20);
    v25 = *(v11 + v19);
    v26 = v24 + a4;
    if (v26 > v25)
    {
      v23 = malloc_type_realloc(*(v11 + v18), 148 * v26, 0x1000040C185D105uLL);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (!v23)
      {
        if (ErrorLogLevelForModule >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEGetNewCandidates_cold_1();
          }
        }

        goto LABEL_38;
      }

      if (ErrorLogLevelForModule >= 7)
      {
        v36 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v29 = "local";
          *buf = 136316418;
          v38 = v36;
          v39 = 2080;
          v40 = "ICEGetNewCandidates";
          if (!a5)
          {
            v29 = "remote";
          }

          v41 = 1024;
          v42 = 347;
          v43 = 2080;
          *v44 = v29;
          *&v44[8] = 1024;
          *v45 = v25;
          *&v45[4] = 1024;
          v46[0] = v24 + a4;
          _os_log_impl(&dword_23D497000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Increase new %s candidate buffer size [%d->%d].", buf, 0x32u);
        }
      }

      v25 = v24 + a4;
    }

    memcpy(&v23[148 * v24], a3, 148 * a4);
    v30 = 768;
    if (!a5)
    {
      v30 = 784;
    }

    v31 = 772;
    if (!a5)
    {
      v31 = 788;
    }

    *(v11 + v30) = v26;
    v32 = 792;
    if (a5)
    {
      v32 = 776;
    }

    *(v11 + v31) = v25;
    *(v11 + v32) = v23;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(v11 + 148);
        *buf = 136316674;
        v38 = v33;
        v39 = 2080;
        v40 = "ICEGetNewCandidates";
        v41 = 1024;
        v42 = 365;
        v43 = 1024;
        *v44 = a4;
        *&v44[4] = 1024;
        *&v44[6] = v35;
        *v45 = 1024;
        *&v45[2] = v24 + a4;
        LOWORD(v46[0]) = 1024;
        *(v46 + 2) = v25;
        _os_log_impl(&dword_23D497000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add %d candidate(s) for call(%d) to buffer, newCanCount %d, maxCount %d.", buf, 0x34u);
      }
    }

LABEL_38:
    pthread_mutex_unlock((v11 + 16));
    goto LABEL_39;
  }

  return result;
}

uint64_t AddOneICEList(uint64_t a1, uint64_t a2, int a3, const void *a4, int a5, int a6, int a7, __int128 *a8, char *__src, const void *a10)
{
  v48 = *MEMORY[0x277D85DE8];
  v18 = malloc_type_calloc(1uLL, 0x398uLL, 0x1020040CC000195uLL);
  if (!v18)
  {
    v23 = 2148859907;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        AddOneICEList_cold_3();
      }
    }

    return v23;
  }

  v19 = v18;
  *v18 = a2;
  pthread_mutex_init((v18 + 16), 0);
  pthread_cond_init((v19 + 80), 0);
  *(v19 + 37) = a3;
  *(v19 + 222) = 105;
  *(v19 + 210) = 0;
  *(v19 + 117) = a3 & 0x3FFF | 0x4000;
  *(v19 + 51) = 0;
  if (a10)
  {
    IPPortFromDict = GetIPPortFromDict(a10, @"GKSRelaySelfRelayIP", @"GKSRelaySelfRelayPort", (v19 + 236));
    *(v19 + 64) = bswap32(*(v19 + 64));
    if (IPPortFromDict < 0 || !IsIPPORTValid((v19 + 236)))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v41 = v38;
          v42 = 2080;
          v43 = "AddOneICEList";
          v44 = 1024;
          v45 = 219;
          v46 = 1024;
          v47 = IPPortFromDict;
          _os_log_impl(&dword_23D497000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \n\t\t\t~~~~~~~\n\t\t\t~~~~~~~ IL: NO RELAY SERVER (%08X)?!?!?\n\t\t\t~~~~~~~", buf, 0x22u);
        }
      }

      *(v19 + 268) = 0;
      *(v19 + 236) = 0u;
      *(v19 + 252) = 0u;
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v41 = v21;
        v42 = 2080;
        v43 = "AddOneICEList";
        v44 = 1024;
        v45 = 222;
        _os_log_impl(&dword_23D497000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \n\t\t\t~~~~~~~\n\t\t\t~~~~~~~ IL: RELAY SERVER OK!!!\n\t\t\t~~~~~~~", buf, 0x1Cu);
      }
    }
  }

  if (!a7)
  {
    v33 = *(v19 + 252);
    *(v19 + 276) = *(v19 + 236);
    *(v19 + 292) = v33;
    *(v19 + 308) = *(v19 + 268);
    if (!__src)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *(v19 + 116) = 1;
  v24 = *a8;
  v25 = a8[1];
  *(v19 + 308) = *(a8 + 4);
  *(v19 + 276) = v24;
  *(v19 + 292) = v25;
  if (__src)
  {
LABEL_17:
    strncpy(v19 + 316, __src, 0x41uLL);
  }

LABEL_18:
  if (a10)
  {
    *(v19 + 93) = CFRetain(a10);
  }

  *(v19 + 189) = 1;
  *(v19 + 54) = 0;
  if (!a6)
  {
    v26 = 148 * a5;
    *(v19 + 48) = a5;
    v27 = 148 * a5;
    v28 = malloc_type_malloc(v26, 0x1000040C185D105uLL);
    *(v19 + 21) = v28;
    if (!v28)
    {
      v36 = *(v19 + 93);
      if (v36)
      {
        CFRelease(v36);
      }

      v23 = 2148859907;
      pthread_cond_destroy((v19 + 80));
      pthread_mutex_destroy((v19 + 16));
      free(v19);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          AddOneICEList_cold_2();
        }
      }

      return v23;
    }

    memcpy(v28, a4, v27);
    ++*(v19 + 51);
  }

  v29 = malloc_type_calloc(1uLL, 0x50uLL, 0x10200408C354D81uLL);
  *(v19 + 20) = v29;
  if (v29)
  {
    EQInit(v29);
    pthread_mutex_lock((a1 + 168));
    *(v19 + 104) = 1;
    v30 = *(a1 + 232);
    if (v30)
    {
      *(v19 + 114) = v30;
    }

    *(a1 + 232) = v19;
    pthread_mutex_unlock((a1 + 168));
    v23 = 0;
    if (a7 && __src)
    {
      for (i = *(a1 + 160); i; i = *(i + 240))
      {
        if ((*(i + 180) & 1) == (*a8 & 1))
        {
          if (*(i + 180))
          {
            if (*(i + 200) != *(a8 + 20) || *(i + 208) != *(a8 + 28))
            {
              continue;
            }

LABEL_38:
            if (*(i + 216) == *(a8 + 18))
            {
              AddOneRelayBeat(a1, a2, *(v19 + 37), __src, (i + 8), (v19 + 236), a10, *(v19 + 117));
            }

            continue;
          }

          if (*(i + 200) == *(a8 + 5))
          {
            goto LABEL_38;
          }
        }
      }

      return 0;
    }
  }

  else
  {
    v34 = *(v19 + 21);
    if (v34)
    {
      free(v34);
    }

    v35 = *(v19 + 93);
    if (v35)
    {
      CFRelease(v35);
    }

    v23 = 2148859907;
    pthread_cond_destroy((v19 + 80));
    pthread_mutex_destroy((v19 + 16));
    free(v19);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        AddOneICEList_cold_1();
      }
    }
  }

  return v23;
}

uint64_t ICEReleaseAndFreeICEList(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 416);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v7 < 0 != v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEReleaseAndFreeICEList_cold_1();
      }
    }

    return 2;
  }

  else
  {
    *(a1 + 416) = v7;
    if (v7)
    {
      return 22;
    }

    v12 = *(a1 + 148);
    v13 = *(a1 + 744);
    if (v13)
    {
      CFRelease(v13);
    }

    pthread_mutex_destroy((a1 + 16));
    pthread_cond_destroy((a1 + 80));
    v15 = a2 + 29;
    v14 = a2[29];
    if (!v14)
    {
      return 22;
    }

    if (v14 != a1)
    {
      while (1)
      {
        v16 = v14;
        v14 = v14[114];
        if (!v14)
        {
          return 22;
        }

        if (v14 == a1)
        {
          v15 = v16 + 114;
          break;
        }
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315906;
        v21 = v17;
        v22 = 2080;
        v23 = "ICEReleaseAndFreeICEList";
        v24 = 1024;
        v25 = 1001;
        v26 = 1024;
        v27 = v12;
        _os_log_impl(&dword_23D497000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Clean up ICEList for call '%d'", &v20, 0x22u);
      }
    }

    if (a3)
    {
      v19 = a2[7];
      if (v19)
      {
        v19(a2[1], v12, a4);
      }
    }

    *v15 = v14[114];
    free(v14);
    return 0;
  }
}

uint64_t ICEUpdateSMSTUNIPPort(uint64_t a1, uint64_t a2, __int128 *a3, int a4, uint64_t a5, _DWORD *a6)
{
  v7 = 2148859926;
  result = 2148859905;
  if (!a1 || !a2 || !a3)
  {
    return result;
  }

  pthread_mutex_lock((a1 + 96));
  v13 = *(a1 + 160);
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = *a2 & 1;
  while (1)
  {
    v15 = *(v13 + 8);
    if ((v15 & 1) != v14)
    {
      goto LABEL_19;
    }

    if (v14)
    {
      break;
    }

    if (*(v13 + 28) == *(a2 + 20))
    {
      goto LABEL_15;
    }

LABEL_19:
    v13 = *(v13 + 240);
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (*(v13 + 28) != *(a2 + 20) || *(v13 + 36) != *(a2 + 28))
  {
    goto LABEL_19;
  }

LABEL_15:
  if (*(v13 + 44) != *(a2 + 36) || *v13 && *v13 != 5 && *(v13 + 4) != a4)
  {
    goto LABEL_19;
  }

  v17 = (v13 + 96);
  if ((*(v13 + 96) & 1) != (*a3 & 1))
  {
    goto LABEL_32;
  }

  if (*(v13 + 96))
  {
    if (*(v13 + 116) == *(a3 + 20) && *(v13 + 124) == *(a3 + 28))
    {
      goto LABEL_31;
    }

LABEL_32:
    *(v13 + 136) = 0;
  }

  else
  {
    if (*(v13 + 116) != *(a3 + 5))
    {
      goto LABEL_32;
    }

LABEL_31:
    if (*(v13 + 132) != *(a3 + 18))
    {
      goto LABEL_32;
    }
  }

  v20 = *a3;
  v19 = a3[1];
  *(v13 + 128) = *(a3 + 4);
  *v17 = v20;
  *(v13 + 112) = v19;
  *v17 = v15 & 0xFFFFFFFE;
  v7 = 0;
  if (a6)
  {
    *a6 = ((v15 >> 2) & 1) == 0;
  }

LABEL_20:
  pthread_mutex_unlock((a1 + 96));
  return v7;
}

uint64_t ICEUpdateRelayIPPort(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, int a5)
{
  v10 = 2148859926;
  pthread_mutex_lock((a1 + 96));
  v11 = *(a1 + 160);
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = *a2 & 1;
  while (1)
  {
    v13 = *(v11 + 8);
    if ((v13 & 1) != v12)
    {
      goto LABEL_16;
    }

    if (v12)
    {
      break;
    }

    if (*(v11 + 28) == *(a2 + 20))
    {
      goto LABEL_12;
    }

LABEL_16:
    v11 = *(v11 + 240);
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  if (*(v11 + 28) != *(a2 + 20) || *(v11 + 36) != *(a2 + 28))
  {
    goto LABEL_16;
  }

LABEL_12:
  if (*(v11 + 44) != *(a2 + 36) || *v11 && *v11 != 5 && *(v11 + 4) != a5)
  {
    goto LABEL_16;
  }

  if (!*(v11 + 220))
  {
    *(v11 + 220) = 1;
  }

  v10 = 0;
  v15 = *a3;
  v16 = a3[1];
  *(v11 + 212) = *(a3 + 4);
  *(v11 + 196) = v16;
  *(v11 + 180) = v15;
  v17 = *(a4 + 16);
  v18 = *(a4 + 32);
  *(v11 + 140) = *a4;
  *(v11 + 172) = v18;
  *(v11 + 156) = v17;
  *(v11 + 180) = v13 & 0xFFFFFFFE;
  *(v11 + 140) = v13;
LABEL_21:
  pthread_mutex_unlock((a1 + 96));
  return v10;
}

uint64_t ICEUpdateNAT64FlagForInterface(uint64_t a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2 + 4;
  if (*(a2 + 4) == 108 && *(a2 + 5) == 111)
  {
    return 0;
  }

  v6 = CheckInHandleDebug();
  if (!v6)
  {
    v11 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEUpdateNAT64FlagForInterface_cold_1();
      }
    }

    return v11;
  }

  v7 = v6;
  pthread_mutex_lock((v6 + 96));
  v8 = *(v7 + 160);
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = *a2 & 1;
  while (1)
  {
    if (v9 != (*(v8 + 8) & 1))
    {
      goto LABEL_14;
    }

    if (v9)
    {
      break;
    }

    if (*(a2 + 20) == *(v8 + 28))
    {
      goto LABEL_19;
    }

LABEL_14:
    v8 = *(v8 + 240);
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (*(a2 + 20) != *(v8 + 28) || *(a2 + 28) != *(v8 + 36))
  {
    goto LABEL_14;
  }

LABEL_19:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136316162;
      v16 = v12;
      v17 = 2080;
      v18 = "ICEUpdateNAT64FlagForInterface";
      v19 = 1024;
      v20 = 1118;
      v21 = 2080;
      v22 = v5;
      v23 = 1024;
      v24 = a3;
      _os_log_impl(&dword_23D497000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEUpdateNAT64FlagForInterface: Interface '%s' flag=%d", &v15, 0x2Cu);
    }
  }

  *(v8 + 232) = a3;
LABEL_23:
  pthread_mutex_unlock((v7 + 96));
  CheckOutHandleDebug();
  return 0;
}

uint64_t ICEAddOneInterfaceWithPriorityHints(uint64_t a1, __int128 *a2, __int128 *a3, int a4, int a5, int a6, int a7)
{
  v43 = *MEMORY[0x277D85DE8];
  v13 = CheckInHandleDebug();
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    pthread_mutex_lock((v13 + 96));
    v16 = *(v14 + 728);
    pthread_mutex_unlock((v14 + 96));
    if ((v16 & 1) == 0 && *(a2 + 4) == 108 && *(a2 + 5) == 111)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v31 = 136316418;
          v32 = v17;
          v33 = 2080;
          v34 = "ICEAddOneInterfaceWithPriorityHints";
          v35 = 1024;
          v36 = 1149;
          v37 = 2048;
          v38 = v15;
          v39 = 2080;
          v40 = a2 + 4;
          v41 = 1024;
          v42 = 0;
          _os_log_impl(&dword_23D497000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEAddOneInterface  pICEInfo=%p Ignoring loopback interface '%s', enableLoopbackInterface='%d", &v31, 0x36u);
        }
      }

LABEL_16:
      CheckOutHandleDebug();
      return 0;
    }

    v19 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1020040C4EBF4E2uLL);
    if (v19)
    {
      v20 = v19;
      *v19 = a4;
      *(v19 + 1) = a5;
      *(v19 + 56) = a6;
      *(v19 + 57) = a7;
      *(v19 + 58) = 0;
      v21 = *a2;
      v22 = a2[1];
      *(v19 + 5) = *(a2 + 4);
      *(v19 + 24) = v22;
      *(v19 + 8) = v21;
      if (a3)
      {
        v23 = *a3;
        v24 = a3[1];
        *(v19 + 16) = *(a3 + 4);
        *(v19 + 6) = v23;
        *(v19 + 7) = v24;
      }

      pthread_mutex_lock((v14 + 96));
      v27 = *(v15 + 160);
      v26 = (v15 + 160);
      v25 = v27;
      if (v27)
      {
        do
        {
          v28 = v25;
          v25 = *(v25 + 240);
        }

        while (v25);
        v26 = (v28 + 240);
      }

      *v26 = v20;
      pthread_mutex_unlock((v14 + 96));
      goto LABEL_16;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEAddOneInterfaceWithPriorityHints_cold_1();
      }
    }

    CheckOutHandleDebug();
    return 2148859907;
  }

  else
  {
    v29 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEAddOneInterfaceWithPriorityHints_cold_2();
      }
    }
  }

  return v29;
}

uint64_t ICERemoveOneInterface(uint64_t a1, uint64_t a2, int a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = CheckInHandleDebug();
  if (!v6)
  {
    v19 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICERemoveOneInterface_cold_1();
      }
    }

    return v19;
  }

  v7 = v6;
  pthread_mutex_lock((v6 + 96));
  v8 = (v7 + 160);
  v9 = *(v7 + 160);
  if (!v9)
  {
    pthread_mutex_unlock((v7 + 96));
    goto LABEL_29;
  }

  v10 = 0;
  v11 = *a2 & 1;
  do
  {
    if ((*(v9 + 8) & 1) == v11)
    {
      if (v11)
      {
        if (*(v9 + 28) != *(a2 + 20) || *(v9 + 36) != *(a2 + 28))
        {
          goto LABEL_16;
        }
      }

      else if (*(v9 + 28) != *(a2 + 20))
      {
        goto LABEL_16;
      }

      if (*(v9 + 44) == *(a2 + 36) && *(v9 + 4) == a3)
      {
        *v8 = *(v9 + 240);
        *(v9 + 240) = v10;
        v10 = v9;
        goto LABEL_17;
      }
    }

LABEL_16:
    v8 = (v9 + 240);
LABEL_17:
    v9 = *v8;
  }

  while (*v8);
  pthread_mutex_unlock((v7 + 96));
  if (v10)
  {
    *&v32[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v32 = v13;
    v14 = MEMORY[0x277CE5818];
    v31[0] = v13;
    v31[1] = v13;
    do
    {
      v15 = v10;
      v10 = *(v10 + 240);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
        {
          v18 = IPPORTToStringWithSize(v31, v15 + 8, 0x36uLL);
          *buf = 136316162;
          v22 = v16;
          v23 = 2080;
          v24 = "_ICEProcessRemovedIFList";
          v25 = 1024;
          v26 = 1193;
          v27 = 2080;
          v28 = v18;
          v29 = 2080;
          v30 = v15 + 12;
          _os_log_impl(&dword_23D497000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICE removed interface [%s, '%s'].", buf, 0x30u);
        }
      }

      ICEAddRemovedLocalIPPort(a1, (v15 + 8));
      free(v15);
    }

    while (v10);
  }

LABEL_29:
  CheckOutHandleDebug();
  return 0;
}

uint64_t ICECreateHandleWithCallback(uint64_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = 2148859907;
  result = 2148859905;
  if (a1 && a2)
  {
    v10 = malloc_type_calloc(1uLL, 0x2E0uLL, 0x10A0040D7798380uLL);
    if (v10)
    {
      v11 = v10;
      *(v10 + 1) = a3;
      *(v10 + 1) = *a2;
      v12 = *(a2 + 16);
      v13 = *(a2 + 32);
      v14 = *(a2 + 48);
      *(v10 + 10) = *(a2 + 64);
      *(v10 + 3) = v13;
      *(v10 + 4) = v14;
      *(v10 + 2) = v12;
      v19.__sig = 0xAAAAAAAAAAAAAAAALL;
      *v19.__opaque = 0xAAAAAAAAAAAAAAAALL;
      if (pthread_mutexattr_init(&v19))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICECreateHandleWithCallback_cold_1();
          }
        }

        free(v11);
      }

      else
      {
        pthread_mutexattr_settype(&v19, 2);
        pthread_mutex_init((v11 + 168), &v19);
        pthread_mutexattr_destroy(&v19);
        pthread_mutex_init((v11 + 96), 0);
        pthread_rwlock_init((v11 + 240), 0);
        pthread_mutex_init((v11 + 496), 0);
        pthread_mutex_init((v11 + 568), 0);
        Handle = CreateHandle();
        *a1 = Handle;
        if (Handle == 0xFFFFFFFFLL)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
          {
            ICECreateHandleWithCallback_cold_2();
            return 2148859909;
          }

          else
          {
            return 2148859909;
          }
        }

        else
        {
          v5 = 0;
          *(v11 + 40) = *a4;
          v16 = a4[1];
          v17 = a4[2];
          v18 = a4[4];
          *(v11 + 43) = a4[3];
          *(v11 + 44) = v18;
          *(v11 + 41) = v16;
          *(v11 + 42) = v17;
        }
      }

      return v5;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICECreateHandleWithCallback_cold_3();
        }
      }

      return 2148859907;
    }
  }

  return result;
}

uint64_t ICECreateHandle(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v9 = 0u;
  v10 = 0u;
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = 0;
  return ICECreateHandleWithCallback(a1, v8, a6, a7);
}

uint64_t ICEStartConnectivityCheckN(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, _OWORD *a5, uint64_t a6, int a7, uint64_t a8, int a9, _DWORD *a10, const void *a11, int a12, uint64_t a13)
{
  v18 = a2;
  v149 = *MEMORY[0x277D85DE8];
  v20 = 2148859905;
  v21 = CheckInHandleDebug();
  if (!v21)
  {
    return 2148859906;
  }

  v22 = v21;
  v131 = a7;
  pthread_mutex_lock((v21 + 168));
  v23 = *(v22 + 232);
  if (!v23)
  {
LABEL_6:
    if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
    {
      ICEStartConnectivityCheckN_cold_13();
      v20 = 2148859926;
    }

    else
    {
      v20 = 2148859926;
    }

    goto LABEL_9;
  }

  while (*(v23 + 148) != v18 || !ICERetainICEList(v23))
  {
    v23 = *(v23 + 912);
    if (!v23)
    {
      goto LABEL_6;
    }
  }

  v25 = *(v23 + 744);
  if (v25)
  {
    CFRelease(v25);
  }

  *(v23 + 744) = 0;
  if (!a11)
  {
    goto LABEL_36;
  }

  v26 = CFRetain(a11);
  *(v23 + 744) = v26;
  *(v23 + 752) = 1;
  if (*(v23 + 232) != 1)
  {
    goto LABEL_36;
  }

  v27 = *(v23 + 148);
  v135 = 0;
  cf = v26;
  if ((GetReservationTokenFromDict(v26, &v135) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEStartConnectivityCheckN_cold_1();
      }
    }

    goto LABEL_36;
  }

  v127 = a1;
  pthread_mutex_lock((v22 + 568));
  v28 = *(v22 + 632);
  if (!v28)
  {
    goto LABEL_32;
  }

  while (1)
  {
    if (*(v28 + 36) != v27 || (*(v23 + 508) & 1) != (*(v28 + 124) & 1))
    {
      goto LABEL_31;
    }

    if (*(v23 + 508))
    {
      break;
    }

    if (*(v23 + 528) == *(v28 + 144))
    {
      goto LABEL_28;
    }

LABEL_31:
    v28 = *(v28 + 328);
    if (!v28)
    {
      goto LABEL_32;
    }
  }

  if (*(v23 + 528) != *(v28 + 144) || *(v23 + 536) != *(v28 + 152))
  {
    goto LABEL_31;
  }

LABEL_28:
  if (*(v23 + 544) != *(v28 + 160))
  {
    goto LABEL_31;
  }

  v134 = 0;
  if ((GetReservationTokenFromDict(*(v28 + 256), &v134) & 0x80000000) != 0 || v134 != v135)
  {
    goto LABEL_31;
  }

  *(v28 + 312) = 3;
  v114 = *(v28 + 256);
  if (v114)
  {
    CFRelease(v114);
  }

  *(v28 + 256) = CFRetain(cf);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v124 = VRTraceErrorLogLevelToCSTR();
    v125 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v115 = *(v28 + 264);
      *buf = 136316674;
      v138 = v124;
      v139 = 2080;
      v140 = "UpdateRBRefreshTypeAndDictionary";
      v141 = 1024;
      v142 = 138;
      v143 = 1024;
      *v144 = v27;
      *&v144[4] = 1024;
      *&v144[6] = v115;
      *&v144[10] = 1024;
      *&v144[12] = 3;
      *&v144[16] = 2048;
      *&v144[18] = cf;
      _os_log_impl(&dword_23D497000, v125, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Update RB(%d, %04X): refresh[%04X], dictionary[%p].", buf, 0x38u);
    }
  }

LABEL_32:
  pthread_mutex_unlock((v22 + 568));
  a1 = v127;
LABEL_36:
  pthread_mutex_lock((v23 + 16));
  *(v23 + 136) = 0;
  if (!*(v23 + 128))
  {
    *(v23 + 896) = a13;
    *(v23 + 904) = a13 != 0;
    *(v23 + 128) = 1;
    pthread_mutex_unlock((v23 + 16));
    pthread_mutex_unlock((v22 + 168));
    *(v23 + 140) = a12;
    if (!a5 || a6 <= 0)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_59;
      }

      v45 = VRTraceErrorLogLevelToCSTR();
      v46 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_59;
      }

      *buf = 136316418;
      v138 = v45;
      v139 = 2080;
      v140 = "ICEStartConnectivityCheckN";
      v141 = 1024;
      v142 = 1881;
      v143 = 1024;
      *v144 = 1881;
      *&v144[4] = 2048;
      *&v144[6] = a5;
      *&v144[14] = 1024;
      *&v144[16] = a6;
      v61 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: Remote candidate data is invalid (data:%p len:%d).\n";
      v62 = v46;
      goto LABEL_143;
    }

    if ((CompressedCandidateByteOrderNToH(a5, a6) & 0x80000000) != 0)
    {
      *(v23 + 212) = a9;
      *(v23 + 196) = a6 / 0x94;
      v50 = malloc_type_malloc(a6, 0x1000040C185D105uLL);
      *(v23 + 176) = v50;
      if (!v50)
      {
        v66 = a1;
        v67 = 2148859907;
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_152;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_152;
        }

        ICEStartConnectivityCheckN_cold_7();
        goto LABEL_94;
      }

      memcpy(v50, a5, a6);
      v51 = CandidateByteOrderNToH(*(v23 + 176), *(v23 + 196));
      if ((v51 & 0x80000000) != 0)
      {
        v53 = v51;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEStartConnectivityCheckN_cold_6();
          }
        }
      }

      else
      {
        fixed = FixFlippedCandidate(*(v23 + 176), *(v23 + 196));
        if ((fixed & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        v53 = fixed;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEStartConnectivityCheckN_cold_5();
          }
        }
      }
    }

    else
    {
      v43 = UncompressCandidateList(a5, a6, (v23 + 176), (v23 + 196));
      if ((v43 & 0x80000000) == 0)
      {
LABEL_51:
        if (!v131)
        {
          v55 = *(v23 + 192);
          if (v55 >= 1)
          {
            v56 = *(v23 + 168);
            if (v56)
            {
LABEL_108:
              *(v23 + 148) = *(v56 + 8);
              *(v23 + 152) = *(*(v23 + 176) + 8);
              SortCandidate(v56, v55);
              SortCandidate(*(v23 + 176), *(v23 + 196));
              AppendInterfaceNameToRemoteCandidates(v23, 10);
              AppendInterfaceNameToRemoteCandidates(v23, 11);
              *&v148[14] = 0xAAAAAAAAAAAAAAAALL;
              *&v76 = 0xAAAAAAAAAAAAAAAALL;
              *(&v76 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v147[1] = v76;
              *v148 = v76;
              v147[0] = v76;
              memset(v146, 170, sizeof(v146));
              LODWORD(v77) = *(v23 + 192);
              v128 = a1;
              if (v77 >= 1)
              {
                v78 = 0;
                v79 = 0;
                do
                {
                  v80 = *(v23 + 168);
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v81 = VRTraceErrorLogLevelToCSTR();
                    v82 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      v129 = *(v23 + 192);
                      v83 = v80 + v78;
                      v84 = CANIDToString(v146, (v80 + v78 + 12));
                      v85 = IPPORTToStringWithSize(v147, v83 + 24, 0x36uLL);
                      v86 = *(v83 + 24);
                      *buf = 136317186;
                      v138 = v81;
                      v139 = 2080;
                      v140 = "ICEStartConnectivityCheckN";
                      v141 = 1024;
                      v142 = 1974;
                      v143 = 1024;
                      *v144 = v79 + 1;
                      *&v144[4] = 1024;
                      *&v144[6] = v129;
                      *&v144[10] = 2080;
                      *&v144[12] = v84;
                      *&v144[20] = 2080;
                      *&v144[22] = v85;
                      *&v144[30] = 1024;
                      *v145 = v86;
                      *&v145[4] = 2080;
                      *&v145[6] = v83 + 68;
                      _os_log_impl(&dword_23D497000, v82, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Local candidate(%d/%d):\tID[%s]\t[%s]\tflag(%02X) if (%s).", buf, 0x4Cu);
                    }
                  }

                  ++v79;
                  v77 = *(v23 + 192);
                  v78 += 148;
                }

                while (v79 < v77);
                a1 = v128;
              }

              LODWORD(v87) = *(v23 + 196);
              if (v87 >= 1)
              {
                v88 = 0;
                v89 = 24;
                do
                {
                  v90 = *(v23 + 176);
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v91 = VRTraceErrorLogLevelToCSTR();
                    v92 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      v130 = *(v23 + 196);
                      v93 = (v90 + v89);
                      v94 = CANIDToString(v146, v93 - 3);
                      v95 = IPPORTToStringWithSize(v147, v93, 0x36uLL);
                      v96 = *v93;
                      *buf = 136316930;
                      v138 = v91;
                      v139 = 2080;
                      v140 = "ICEStartConnectivityCheckN";
                      v141 = 1024;
                      v142 = 1981;
                      v143 = 1024;
                      *v144 = v88 + 1;
                      *&v144[4] = 1024;
                      *&v144[6] = v130;
                      *&v144[10] = 2080;
                      *&v144[12] = v94;
                      *&v144[20] = 2080;
                      *&v144[22] = v95;
                      *&v144[30] = 1024;
                      *v145 = v96;
                      _os_log_impl(&dword_23D497000, v92, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote candidate(%d/%d):\tID[%s]\t[%s]\tflag(%02X).", buf, 0x42u);
                    }
                  }

                  ++v88;
                  v87 = *(v23 + 196);
                  v89 += 148;
                }

                while (v88 < v87);
                LODWORD(v77) = *(v23 + 192);
                a1 = v128;
              }

              v97 = v77 * v87;
              *(v23 + 200) = v97;
              if (400 * v97)
              {
                v98 = malloc_type_calloc(1uLL, 400 * v97, 0x10200402E010713uLL);
                *(v23 + 184) = v98;
                if (v98)
                {
                  v99 = a1;
                  PairUpCandidate(*(v23 + 168), *(v23 + 192), *(v23 + 176), *(v23 + 196), v98, 1, v23 + 200, 0);
                  SortCandidatePair(*(v23 + 184), *(v23 + 200));
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v100 = VRTraceErrorLogLevelToCSTR();
                    v101 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      v102 = *(v23 + 148);
                      v103 = *(v23 + 152);
                      v104 = *(v23 + 192);
                      v105 = *(v23 + 196);
                      v106 = *(v23 + 168);
                      v107 = *(v23 + 176);
                      v108 = *(v23 + 184);
                      *buf = 136317442;
                      v138 = v100;
                      v139 = 2080;
                      v140 = "ICEStartConnectivityCheckN";
                      v141 = 1024;
                      v142 = 2007;
                      v143 = 1024;
                      *v144 = v102;
                      *&v144[4] = 1024;
                      *&v144[6] = v103;
                      *&v144[10] = 1024;
                      *&v144[12] = v104;
                      *&v144[16] = 1024;
                      *&v144[18] = v105;
                      *&v144[22] = 2048;
                      *&v144[24] = v106;
                      *v145 = 2048;
                      *&v145[2] = v107;
                      *&v145[10] = 2048;
                      *&v145[12] = v108;
                      _os_log_impl(&dword_23D497000, v101, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEStartConnectivityCheck(id[local:%d remote:%d] count[local:%d remote:%d] candidate[local:%p remote:%p] pair[%p]\n", buf, 0x52u);
                    }
                  }

                  v133 = 0xAAAAAAAAAAAAAAAALL;
                  v109 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
                  v47 = v109;
                  if (v109)
                  {
                    *v109 = v18;
                    *(v109 + 1) = a1;
                    *&v110 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v110 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    *&v136.__opaque[24] = v110;
                    *&v136.__opaque[40] = v110;
                    *&v136.__sig = v110;
                    *&v136.__opaque[8] = v110;
                    v132 = 0xAAAAAAAAAAAAAAAALL;
                    pthread_attr_init(&v136);
                    pthread_attr_getschedparam(&v136, &v132);
                    v132.sched_priority = 56;
                    pthread_attr_setschedparam(&v136, &v132);
                    v111 = pthread_create(&v133, &v136, ConnectivityCheckProc, v47);
                    pthread_attr_destroy(&v136);
                    if (!v111)
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 7)
                      {
                        v116 = VRTraceErrorLogLevelToCSTR();
                        v117 = *MEMORY[0x277CE5818];
                        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                        {
                          v118 = "VCCExtra ";
                          if (!v131)
                          {
                            v118 = &unk_23D4C9CFB;
                          }

                          *buf = 136316162;
                          v138 = v116;
                          v139 = 2080;
                          v140 = "ICEStartConnectivityCheckN";
                          v141 = 1024;
                          v142 = 2034;
                          v143 = 2080;
                          *v144 = v118;
                          *&v144[8] = 2048;
                          *&v144[10] = v133;
                          _os_log_impl(&dword_23D497000, v117, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %sconnectivity check thread start...(%p)", buf, 0x30u);
                        }
                      }

                      pthread_mutex_lock((v22 + 168));
                      v119 = *(v22 + 232);
                      if (v119)
                      {
                        while (v119 != v23)
                        {
                          v20 = 0;
                          v119 = *(v119 + 912);
                          if (!v119)
                          {
                            goto LABEL_9;
                          }
                        }

                        v20 = 0;
                        *(v119 + 8) = v133;
                        --*(v119 + 416);
                      }

                      else
                      {
                        v20 = 0;
                      }

                      goto LABEL_9;
                    }

                    v20 = v111 | 0xC0150000;
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                      {
                        ICEStartConnectivityCheckN_cold_10();
                      }

                      goto LABEL_168;
                    }

                    goto LABEL_167;
                  }
                }

                else
                {
                  v99 = a1;
                  if (VRTraceGetErrorLogLevelForModule() < 3 || (VRTraceErrorLogLevelToCSTR(), !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
                  {
                    v47 = 0;
                    v20 = 2148859907;
LABEL_167:
                    a1 = v99;
                    goto LABEL_168;
                  }

                  ICEStartConnectivityCheckN_cold_11();
                  v47 = 0;
                }

                v20 = 2148859907;
                goto LABEL_167;
              }

              v66 = a1;
              v67 = 2148859926;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v112 = VRTraceErrorLogLevelToCSTR();
                v113 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v138 = v112;
                  v139 = 2080;
                  v140 = "ICEStartConnectivityCheckN";
                  v141 = 1024;
                  v142 = 1988;
                  v143 = 1024;
                  *v144 = 1988;
                  _os_log_impl(&dword_23D497000, v113, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: No local or no remote candidates", buf, 0x22u);
                  v47 = 0;
                  v20 = 2148859926;
                  goto LABEL_153;
                }
              }

LABEL_152:
              v47 = 0;
              v20 = v67;
              goto LABEL_153;
            }
          }

          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_59;
          }

          v57 = VRTraceErrorLogLevelToCSTR();
          v58 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_59;
          }

          v59 = *(v23 + 192);
          v60 = *(v23 + 168);
          *buf = 136316674;
          v138 = v57;
          v139 = 2080;
          v140 = "ICEStartConnectivityCheckN";
          v141 = 1024;
          v142 = 1923;
          v143 = 1024;
          *v144 = 1923;
          *&v144[4] = 1024;
          *&v144[6] = v18;
          *&v144[10] = 1024;
          *&v144[12] = v59;
          *&v144[16] = 2048;
          *&v144[18] = v60;
          v61 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: Local connection data is invalid (id:%d iLCCount:%d local data:%p).\n";
          v62 = v58;
          v63 = 56;
          goto LABEL_144;
        }

        if (a3 && a4 > 0)
        {
          if ((CompressedCandidateByteOrderNToH(a3, a4) & 0x80000000) == 0)
          {
            v44 = UncompressCandidateList(a3, a4, (v23 + 168), (v23 + 192));
LABEL_106:
            v53 = v44;
            if ((v44 & 0x80000000) == 0)
            {
              v56 = *(v23 + 168);
              v55 = *(v23 + 192);
              goto LABEL_108;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ICEStartConnectivityCheckN_cold_9();
              }
            }

            goto LABEL_138;
          }

          *(v23 + 192) = a4 / 0x94;
          v75 = malloc_type_calloc(1uLL, a4, 0x1000040C185D105uLL);
          *(v23 + 168) = v75;
          if (v75)
          {
            memcpy(v75, a3, a4);
            v44 = CandidateByteOrderNToH(*(v23 + 168), a4);
            goto LABEL_106;
          }

          v66 = a1;
          v67 = 2148859907;
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_152;
          }

          VRTraceErrorLogLevelToCSTR();
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_152;
          }

          ICEStartConnectivityCheckN_cold_8();
LABEL_94:
          v47 = 0;
          v20 = 2148859907;
LABEL_153:
          a1 = v66;
          goto LABEL_168;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3 || (v64 = VRTraceErrorLogLevelToCSTR(), v65 = *MEMORY[0x277CE5818], !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
        {
LABEL_59:
          v47 = 0;
LABEL_168:
          pthread_mutex_lock((v22 + 168));
          pthread_mutex_lock((v23 + 16));
          *(v23 + 128) = 0;
          *(v23 + 196) = 0;
          v120 = *(v23 + 168);
          if (v120)
          {
            *(v23 + 168) = 0;
            free(v120);
          }

          v121 = *(v23 + 176);
          if (v121)
          {
            *(v23 + 176) = 0;
            free(v121);
          }

          v122 = *(v23 + 184);
          if (v122)
          {
            *(v23 + 184) = 0;
            free(v122);
          }

          v123 = *(v23 + 160);
          if (v123)
          {
            *(v23 + 160) = 0;
            FreeEQ(v123);
          }

          if (v47)
          {
            free(v47);
          }

          pthread_mutex_unlock((v23 + 16));
          --*(v23 + 416);
          ICEReleaseAndFreeICEList(v23, v22, 0, a1);
          goto LABEL_9;
        }

        *buf = 136316418;
        v138 = v64;
        v139 = 2080;
        v140 = "ICEStartConnectivityCheckN";
        v141 = 1024;
        v142 = 1930;
        v143 = 1024;
        *v144 = 1930;
        *&v144[4] = 2048;
        *&v144[6] = a3;
        *&v144[14] = 1024;
        *&v144[16] = a4;
        v61 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: Local candidate data is invalid (data:%p len:%d).\n";
        v62 = v65;
LABEL_143:
        v63 = 50;
LABEL_144:
        _os_log_error_impl(&dword_23D497000, v62, OS_LOG_TYPE_ERROR, v61, buf, v63);
        goto LABEL_59;
      }

      v53 = v43;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEStartConnectivityCheckN_cold_12();
        }
      }
    }

LABEL_138:
    v47 = 0;
    v20 = v53;
    goto LABEL_168;
  }

  if (*a10 != 1)
  {
    v20 = 0;
    goto LABEL_100;
  }

  v135 = 0;
  LODWORD(v134) = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(v23 + 148);
      *buf = 136315906;
      v138 = v30;
      v139 = 2080;
      v140 = "ICEStartPERelay";
      v141 = 1024;
      v142 = 1298;
      v143 = 1024;
      *v144 = v32;
      _os_log_impl(&dword_23D497000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEStartPERelay call id (%d)", buf, 0x22u);
    }
  }

  if (!a5 || a6 <= 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v48 = VRTraceErrorLogLevelToCSTR();
      v49 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v138 = v48;
        v139 = 2080;
        v140 = "ICEStartPERelay";
        v141 = 1024;
        v142 = 1301;
        v143 = 1024;
        *v144 = 1301;
        *&v144[4] = 2048;
        *&v144[6] = a5;
        *&v144[14] = 1024;
        *&v144[16] = a6;
        _os_log_error_impl(&dword_23D497000, v49, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: invalid remote candidate data (%p, %d)", buf, 0x32u);
      }
    }

    goto LABEL_98;
  }

  v33 = CompressedCandidateByteOrderNToH(a5, a6);
  if ((v33 & 0x80000000) != 0)
  {
    v34 = v33;
    HIDWORD(v54) = -1857283155 * a6;
    LODWORD(v54) = -1857283155 * a6;
    if ((v54 >> 2) < 0x1BACF92)
    {
      v68 = a5[1];
      *(v23 + 592) = *a5;
      *(v23 + 608) = v68;
      v69 = a5[2];
      v70 = a5[3];
      v71 = a5[5];
      *(v23 + 656) = a5[4];
      *(v23 + 672) = v71;
      *(v23 + 624) = v69;
      *(v23 + 640) = v70;
      v72 = a5[6];
      v73 = a5[7];
      v74 = a5[8];
      *(v23 + 736) = *(a5 + 36);
      *(v23 + 704) = v73;
      *(v23 + 720) = v74;
      *(v23 + 688) = v72;
LABEL_96:
      *(v23 + 400) = 0;
      *(v23 + 408) = 0;
      *(v23 + 420) = 5;
      (*(v22 + 40))(*(v22 + 8), 0);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEStartConnectivityCheckN_cold_2();
      }
    }

    goto LABEL_97;
  }

  v34 = UncompressCandidateList(a5, a6, &v135, &v134);
  if ((v34 & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEStartConnectivityCheckN_cold_4();
      }
    }

LABEL_97:
    v20 = v34;
    goto LABEL_98;
  }

  if (v134 == 1)
  {
    v35 = v135;
    v36 = *(v135 + 1);
    *(v23 + 592) = *v135;
    *(v23 + 608) = v36;
    v37 = v35[5];
    v39 = v35[2];
    v38 = v35[3];
    *(v23 + 656) = v35[4];
    *(v23 + 672) = v37;
    *(v23 + 624) = v39;
    *(v23 + 640) = v38;
    v41 = v35[7];
    v40 = v35[8];
    v42 = v35[6];
    *(v23 + 736) = *(v35 + 36);
    *(v23 + 704) = v41;
    *(v23 + 720) = v40;
    *(v23 + 688) = v42;
    goto LABEL_96;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ICEStartConnectivityCheckN_cold_3();
    }
  }

LABEL_98:
  if (v135)
  {
    free(v135);
  }

LABEL_100:
  pthread_mutex_unlock((v23 + 16));
  --*(v23 + 416);
LABEL_9:
  pthread_mutex_unlock((v22 + 168));
  CheckOutHandleDebug();
  return v20;
}

uint64_t ICEProcessRemoteInterfaceChange(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = 2148859905;
  v28 = 0;
  v27 = 0;
  if (a3 && a4 > 0)
  {
    v11 = a2;
    v12 = CheckInHandleDebug();
    if (!v12)
    {
      return 2148859906;
    }

    v13 = v12;
    if (!a6)
    {
      pthread_mutex_lock((v12 + 168));
      v17 = *(v13 + 232);
      if (!v17)
      {
LABEL_17:
        pthread_mutex_unlock((v13 + 168));
        if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
        {
          ICEProcessRemoteInterfaceChange_cold_2();
          v8 = 2148859926;
        }

        else
        {
          v8 = 2148859926;
        }

LABEL_25:
        if (v28)
        {
          free(v28);
        }

        CheckOutHandleDebug();
        return v8;
      }

      while (*(v17 + 148) != v11)
      {
        v17 = *(v17 + 912);
        if (!v17)
        {
          goto LABEL_17;
        }
      }

      if (*(v17 + 208) >= a5)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(v17 + 208);
            *buf = 136316162;
            v30 = v24;
            v31 = 2080;
            v32 = "ICEProcessRemoteInterfaceChange";
            v33 = 1024;
            v34 = 1370;
            v35 = 1024;
            v36 = a5;
            v37 = 1024;
            LODWORD(v38) = v26;
            _os_log_impl(&dword_23D497000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote candidate data is not new, skip. (%d<=%d)", buf, 0x28u);
          }
        }

        pthread_mutex_unlock((v13 + 168));
        v8 = 0;
        goto LABEL_25;
      }

      pthread_mutex_lock((v17 + 16));
      *(v17 + 208) = a5;
      pthread_mutex_unlock((v17 + 16));
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(v17 + 208);
          *buf = 136315906;
          v30 = v21;
          v31 = 2080;
          v32 = "ICEProcessRemoteInterfaceChange";
          v33 = 1024;
          v34 = 1380;
          v35 = 1024;
          v36 = v23;
          _os_log_impl(&dword_23D497000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Update remote candidate version (%d)", buf, 0x22u);
        }
      }

      pthread_mutex_unlock((v13 + 168));
    }

    v14 = CompressedCandidateByteOrderNToH(a3, a4);
    if ((v14 & 0x80000000) != 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = UncompressCandidateList(a3, a4, &v28, &v27);
      if ((v8 & 0x80000000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEProcessRemoteInterfaceChange_cold_1();
          }
        }

        goto LABEL_25;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v30 = v18;
        v31 = 2080;
        v32 = "ICEProcessRemoteInterfaceChange";
        v33 = 1024;
        v34 = 1403;
        _os_log_impl(&dword_23D497000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Process new remote connection blob.", buf, 0x1Cu);
      }
    }

    ICEGetNewCandidates(v13, v11, v28, v27, 0);
    goto LABEL_25;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v30 = v15;
      v31 = 2080;
      v32 = "ICEProcessRemoteInterfaceChange";
      v33 = 1024;
      v34 = 1355;
      v35 = 1024;
      v36 = 1355;
      v37 = 2048;
      v38 = a3;
      v39 = 1024;
      v40 = a4;
      _os_log_error_impl(&dword_23D497000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: Remote candidate data is invalid (data:%p len:%d).\n", buf, 0x32u);
    }
  }

  return v8;
}

uint64_t ICEGetRemoteCIDForDstIPPort(uint64_t a1, int a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v5 = 2148859926;
  result = 2148859905;
  if (!a4 || !a5)
  {
    return result;
  }

  v11 = CheckInHandleDebug();
  if (!v11)
  {
    return 2148859906;
  }

  v12 = v11;
  pthread_mutex_lock((v11 + 168));
  v13 = *(v12 + 232);
  if (!v13)
  {
LABEL_7:
    pthread_mutex_unlock((v12 + 168));
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetRemoteCIDForDstIPPort_cold_1();
      }
    }

    goto LABEL_25;
  }

  while (*(v13 + 148) != a2)
  {
    v13 = *(v13 + 912);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  pthread_mutex_lock((v13 + 16));
  v14 = *(v13 + 196);
  if (v14 < 1)
  {
    goto LABEL_24;
  }

  v15 = *a3 & 1;
  v16 = *(v13 + 176) + 44;
  while (1)
  {
    if (v15 == (*(v16 - 20) & 1))
    {
      if (v15)
      {
        if (*(a3 + 20) != *v16 || *(a3 + 28) != *(v16 + 8))
        {
          goto LABEL_23;
        }
      }

      else if (*(a3 + 20) != *v16)
      {
        goto LABEL_23;
      }

      if (*(a3 + 36) == *(v16 + 16))
      {
        break;
      }
    }

LABEL_23:
    v16 += 148;
    if (!--v14)
    {
      goto LABEL_24;
    }
  }

  *a4 = *(v16 - 32);
  *a5 = 8;
LABEL_24:
  pthread_mutex_unlock((v13 + 16));
  pthread_mutex_unlock((v12 + 168));
  v5 = 0;
LABEL_25:
  CheckOutHandleDebug();
  return v5;
}

uint64_t ICEGetNextBestCandidate(uint64_t a1, int a2, uint64_t a3, int *a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = 2148859926;
  result = 2148859905;
  if (a4 && a5)
  {
    v9 = a3;
    v11 = CheckInHandleDebug();
    if (v11)
    {
      v12 = v11;
      pthread_mutex_lock((v11 + 168));
      v13 = *(v12 + 232);
      if (v13)
      {
        while (*(v13 + 148) != a2)
        {
          v13 = *(v13 + 912);
          if (!v13)
          {
            goto LABEL_7;
          }
        }

        pthread_mutex_lock((v13 + 16));
        if (v9)
        {
          v14 = *(v13 + 168);
          v15 = *(v13 + 192);
        }

        else
        {
          v14 = *(v13 + 176);
          v15 = *(v13 + 196);
        }

        GetNextBestCandidate(a4, v14, v15, a5);
        pthread_mutex_unlock((v13 + 16));
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a5 + 44);
            v19 = 136316162;
            v20 = v16;
            v21 = 2080;
            v22 = "ICEGetNextBestCandidate";
            v23 = 1024;
            v24 = 1553;
            v25 = 1024;
            v26 = v9;
            v27 = 1024;
            v28 = v18;
            _os_log_impl(&dword_23D497000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEGetNextBestCandidate: %d, %x", &v19, 0x28u);
          }
        }

        pthread_mutex_unlock((v12 + 168));
        v5 = 0;
      }

      else
      {
LABEL_7:
        pthread_mutex_unlock((v12 + 168));
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEGetNextBestCandidate_cold_1();
          }
        }
      }

      CheckOutHandleDebug();
      return v5;
    }

    else
    {
      return 2148859906;
    }
  }

  return result;
}

__n128 GetNextBestCandidate(int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v75 = *MEMORY[0x277D85DE8];
  v49 = *a1;
  *&v74[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v73[1] = v7;
  *v74 = v7;
  v73[0] = v7;
  memset(v72, 170, sizeof(v72));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v55 = v9;
      v56 = 2080;
      v57 = "GetNextBestCandidate";
      v58 = 1024;
      v59 = 1479;
      v60 = 1024;
      v61 = a3;
      _os_log_impl(&dword_23D497000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GetNextBestCandidate: searching list %d", buf, 0x22u);
    }
  }

  if (a3 < 1)
  {
    if (!a2)
    {
      *(a4 + 144) = 0;
      result.n128_u64[0] = 0;
      *(a4 + 112) = 0u;
      *(a4 + 128) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 96) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *a4 = 0u;
      return result;
    }
  }

  else
  {
    v11 = 0;
    v50 = 0;
    v48 = 0;
    v51 = a3;
    v12 = 148 * a3;
    v13 = 1;
    v53 = 1;
    v47 = 1;
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v16 = CANIDToString(v72, (a2 + v11 + 12));
          v17 = IPPORTToStringWithSize(v73, a2 + v11 + 24, 0x36uLL);
          v18 = *(a2 + v11 + 24);
          *buf = 136317186;
          v55 = v14;
          v56 = 2080;
          v57 = "GetNextBestCandidate";
          v58 = 1024;
          v59 = 1484;
          v60 = 1024;
          v61 = v13;
          v62 = 1024;
          v63 = v51;
          v64 = 2080;
          v65 = v16;
          v66 = 2080;
          v67 = v17;
          v68 = 1024;
          v69 = v18;
          v70 = 2080;
          v71 = a2 + 68 + v11;
          _os_log_impl(&dword_23D497000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GetNextBestCandidate(%d/%d):\tID[%s]\t[%s]\tflag(%02X) if (%s).", buf, 0x4Cu);
        }
      }

      v19 = a2 + v11;
      if ((*(a2 + v11 + 24) & 1) == 0)
      {
        v20 = a2 + v11;
        v21 = *(a2 + v11 + 44);
        if (v21)
        {
          v22 = *(v20 + 4);
          if (v22 >= 2)
          {
            v23 = *a1;
            if (v53)
            {
              v53 = (v23 & 1) == 0 && v21 == a1[5] && *(a2 + v11 + 60) == *(a1 + 18);
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v24 = VRTraceErrorLogLevelToCSTR();
                v25 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v55 = v24;
                  v56 = 2080;
                  v57 = "GetNextBestCandidate";
                  v58 = 1024;
                  v59 = 1498;
                  _os_log_impl(&dword_23D497000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GetNextBestCandidate: mark the first external candidate", buf, 0x1Cu);
                }
              }

              v50 = a2 + v11;
            }

            else if ((v23 & 1) == 0 && v21 == a1[5] && *(a2 + v11 + 60) == *(a1 + 18))
            {
              v53 = 0;
            }

            else
            {
              v53 = 0;
              v26 = v50;
              if (v22 < *(v50 + 4))
              {
                v26 = a2 + v11;
              }

              v50 = v26;
            }

            if (((*(v19 + 24) ^ v49) & 4) != 0)
            {
              if (!v47 && *(v20 + 4) >= *(v48 + 4))
              {
                v19 = v48;
              }

              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v27 = VRTraceErrorLogLevelToCSTR();
                v28 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v55 = v27;
                  v56 = 2080;
                  v57 = "GetNextBestCandidate";
                  v58 = 1024;
                  v59 = 1510;
                  v60 = 1024;
                  v61 = 0;
                  _os_log_impl(&dword_23D497000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GetNextBestCandidate: got excluded candidate %d", buf, 0x22u);
                }
              }

              v47 = 0;
              v48 = v19;
            }
          }
        }
      }

      ++v13;
      v11 += 148;
    }

    while (v12 != v11);
    if (v48)
    {
      v29 = *(v48 + 16);
      *a4 = *v48;
      *(a4 + 16) = v29;
      v30 = *(v48 + 32);
      v31 = *(v48 + 48);
      v32 = *(v48 + 80);
      *(a4 + 64) = *(v48 + 64);
      *(a4 + 80) = v32;
      *(a4 + 32) = v30;
      *(a4 + 48) = v31;
      result = *(v48 + 96);
      v33 = *(v48 + 112);
      v34 = *(v48 + 128);
      *(a4 + 144) = *(v48 + 144);
      *(a4 + 112) = v33;
      *(a4 + 128) = v34;
      *(a4 + 96) = result;
      return result;
    }

    if (v50)
    {
      v35 = *(v50 + 16);
      *a4 = *v50;
      *(a4 + 16) = v35;
      v36 = *(v50 + 32);
      v37 = *(v50 + 48);
      v38 = *(v50 + 80);
      *(a4 + 64) = *(v50 + 64);
      *(a4 + 80) = v38;
      *(a4 + 32) = v36;
      *(a4 + 48) = v37;
      result = *(v50 + 96);
      v39 = *(v50 + 112);
      v40 = *(v50 + 128);
      *(a4 + 144) = *(v50 + 144);
      *(a4 + 112) = v39;
      *(a4 + 128) = v40;
      *(a4 + 96) = result;
      return result;
    }
  }

  v41 = *(a2 + 64);
  v42 = *(a2 + 80);
  v43 = *(a2 + 48);
  *(a4 + 32) = *(a2 + 32);
  v44 = *(a2 + 16);
  *a4 = *a2;
  *(a4 + 16) = v44;
  *(a4 + 64) = v41;
  *(a4 + 80) = v42;
  *(a4 + 48) = v43;
  result = *(a2 + 96);
  v45 = *(a2 + 112);
  v46 = *(a2 + 128);
  *(a4 + 144) = *(a2 + 144);
  *(a4 + 112) = v45;
  *(a4 + 128) = v46;
  *(a4 + 96) = result;
  *(a4 + 44) = 0;
  return result;
}

uint64_t ICEGetRemoteICEVersion(uint64_t a1, int a2, _DWORD *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2148859906;
  }

  v6 = v5;
  pthread_mutex_lock((v5 + 168));
  v7 = *(v6 + 232);
  if (v7)
  {
    while (*(v7 + 148) != a2)
    {
      v7 = *(v7 + 912);
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    pthread_mutex_lock((v7 + 16));
    if (a3)
    {
      *a3 = *(v7 + 888);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(v7 + 888);
        v12 = 136315906;
        v13 = v9;
        v14 = 2080;
        v15 = "ICEGetRemoteICEVersion";
        v16 = 1024;
        v17 = 1619;
        v18 = 1024;
        v19 = v11;
        _os_log_impl(&dword_23D497000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEGetRemoteICEVersion: remote ICE Version (%u)", &v12, 0x22u);
      }
    }

    pthread_mutex_unlock((v7 + 16));
  }

LABEL_13:
  pthread_mutex_unlock((v6 + 168));
  CheckOutHandleDebug();
  return 0;
}

uint64_t ICEAddRemovedLocalIPPort(uint64_t a1, __int128 *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = 2148859906;
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  *&v38[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37[1] = v6;
  *v38 = v6;
  v37[0] = v6;
  pthread_mutex_lock((v4 + 168));
  v7 = *(v5 + 232);
  if (!v7)
  {
    v3 = 0;
    goto LABEL_24;
  }

  v8 = MEMORY[0x277CE5818];
  while (1)
  {
    pthread_mutex_lock((v7 + 16));
    v9 = *(v7 + 808);
    v10 = *(v7 + 812);
    if (v9 >= v10)
    {
      break;
    }

LABEL_10:
    v15 = *(v7 + 816) + 40 * v9;
    v16 = *a2;
    v17 = a2[1];
    *(v15 + 32) = *(a2 + 4);
    *v15 = v16;
    *(v15 + 16) = v17;
    ++*(v7 + 808);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v20 = IPPORTToStringWithSize(v37, a2, 0x36uLL);
        v21 = *(v7 + 148);
        v22 = *(v7 + 808);
        *buf = 136316418;
        v27 = v18;
        v28 = 2080;
        v29 = "ICEAddRemovedLocalIPPort";
        v30 = 1024;
        v31 = 1666;
        v32 = 2080;
        *v33 = v20;
        *&v33[8] = 1024;
        v34 = v21;
        v35 = 1024;
        v36 = v22;
        _os_log_impl(&dword_23D497000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add localIPPort [%s] to removed list for call(%08X), count(%d).", buf, 0x32u);
      }
    }

    v23 = *(v5 + 40);
    if (v23)
    {
      v23(*(v5 + 8), 0);
    }

    v24 = *(v5 + 80);
    if (v24)
    {
      v24(*(v5 + 8), *(v7 + 148), a2, 1);
    }

    pthread_mutex_unlock((v7 + 16));
    v7 = *(v7 + 912);
    if (!v7)
    {
      v3 = 0;
      goto LABEL_24;
    }
  }

  v11 = malloc_type_realloc(*(v7 + 816), 40 * v10 + 40, 0x100004053E81896uLL);
  if (v11)
  {
    *(v7 + 816) = v11;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(v7 + 812);
        *buf = 136316162;
        v27 = v12;
        v28 = 2080;
        v29 = "ICEAddRemovedLocalIPPort";
        v30 = 1024;
        v31 = 1657;
        v32 = 1024;
        *v33 = v14;
        *&v33[4] = 1024;
        *&v33[6] = v14 + 1;
        _os_log_impl(&dword_23D497000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Increase removed local buffer size (%d->%d).", buf, 0x28u);
      }
    }

    ++*(v7 + 812);
    v9 = *(v7 + 808);
    goto LABEL_10;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      ICEAddRemovedLocalIPPort_cold_1();
    }
  }

  pthread_mutex_unlock((v7 + 16));
  v3 = 2148859907;
LABEL_24:
  pthread_mutex_unlock((v5 + 168));
  CheckOutHandleDebug();
  return v3;
}

uint64_t ICEAddRemovedRemoteIPPort(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v52 = 0;
  *&v65[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64[1] = v6;
  *v65 = v6;
  v64[0] = v6;
  if (!a3 || a4 <= 0)
  {
    v11 = 2148859905;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v55 = v13;
        v56 = 2080;
        v57 = "ICEAddRemovedRemoteIPPort";
        v58 = 1024;
        v59 = 1694;
        v60 = 1024;
        *v61 = 1694;
        *&v61[4] = 2048;
        *&v61[6] = a3;
        v62 = 1024;
        v63 = a4;
        _os_log_error_impl(&dword_23D497000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: Remote candidate data is invalid (data:%p len:%d).\n", buf, 0x32u);
      }
    }

    return v11;
  }

  v8 = CheckInHandleDebug();
  if (!v8)
  {
    return 2148859906;
  }

  v9 = v8;
  v10 = CompressedCandidateByteOrderNToH(a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = UncompressCandidateList(a3, a4, &v53, &v52);
    if ((v11 & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEAddRemovedRemoteIPPort_cold_2();
        }
      }

      v12 = 0;
      goto LABEL_71;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v55 = v15;
      v56 = 2080;
      v57 = "ICEAddRemovedRemoteIPPort";
      v58 = 1024;
      v59 = 1713;
      v60 = 1024;
      *v61 = a2;
      _os_log_impl(&dword_23D497000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEGetRemovedRemoteInterface for call(%08X).", buf, 0x22u);
    }
  }

  pthread_mutex_lock((v9 + 168));
  v17 = *(v9 + 232);
  if (!v17)
  {
LABEL_21:
    v12 = 0;
    goto LABEL_70;
  }

  while (*(v17 + 148) != a2)
  {
    v17 = *(v17 + 912);
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  pthread_mutex_lock((v17 + 16));
  v18 = malloc_type_malloc(40 * *(v17 + 196), 0x100004053E81896uLL);
  v12 = v18;
  if (!v18 || *(v17 + 196) < 1)
  {
    goto LABEL_69;
  }

  v19 = 0;
  v20 = 0;
  v51 = v18 + 20;
  do
  {
    if (IsIPPORTValid(*(v17 + 176) + 148 * v19 + 24))
    {
      if (v52 >= 1)
      {
        v21 = 0;
        v22 = *(v17 + 176) + 148 * v19;
        v24 = *(v22 + 24);
        v23 = v22 + 24;
        v25 = v24 & 1;
        v26 = v53 + 44;
        while (1)
        {
          if ((*(v26 - 5) & 1) == v25)
          {
            if (v25)
            {
              if (*v26 == *(v23 + 20) && v26[1] == *(v23 + 28))
              {
                goto LABEL_39;
              }
            }

            else if (*v26 == *(v23 + 20))
            {
              goto LABEL_39;
            }
          }

          ++v21;
          v26 = (v26 + 148);
          if (v52 == v21)
          {
            goto LABEL_40;
          }
        }
      }

      LODWORD(v21) = 0;
LABEL_39:
      if (v21 == v52)
      {
LABEL_40:
        if (v20 >= 1)
        {
          v28 = 0;
          v29 = *(v17 + 176) + 148 * v19;
          v31 = *(v29 + 24);
          v30 = v29 + 24;
          v32 = v31 & 1;
          v33 = v51;
          while (1)
          {
            if (v32 == (*(v33 - 5) & 1))
            {
              if (v32)
              {
                if (*(v30 + 20) == *v33 && *(v30 + 28) == *(v33 + 1))
                {
LABEL_51:
                  if (*(v30 + 36) == *(v33 + 8))
                  {
                    goto LABEL_55;
                  }
                }
              }

              else if (*(v30 + 20) == *v33)
              {
                goto LABEL_51;
              }
            }

            ++v28;
            v33 += 40;
            if (v20 == v28)
            {
              goto LABEL_56;
            }
          }
        }

        LODWORD(v28) = 0;
LABEL_55:
        if (v28 == v20)
        {
LABEL_56:
          v35 = *(v17 + 176) + 148 * v19;
          v36 = *(v35 + 24);
          v37 = *(v35 + 40);
          v38 = v12;
          v39 = &v12[40 * v20];
          *(v39 + 4) = *(v35 + 56);
          *v39 = v36;
          *(v39 + 1) = v37;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v40 = VRTraceErrorLogLevelToCSTR();
            v41 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v42 = IPPORTToStringWithSize(v64, *(v17 + 176) + 148 * v19 + 24, 0x36uLL);
              *buf = 136315906;
              v55 = v40;
              v56 = 2080;
              v57 = "ICEAddRemovedRemoteIPPort";
              v58 = 1024;
              v59 = 1751;
              v60 = 2080;
              *v61 = v42;
              _os_log_impl(&dword_23D497000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove remoteIPPort [%s]", buf, 0x26u);
            }
          }

          ++v20;
          (*(v9 + 80))(*(v9 + 8), a2, *(v17 + 176) + 148 * v19 + 24, 0);
          v12 = v38;
        }
      }
    }

    ++v19;
  }

  while (v19 < *(v17 + 196));
  if (v20 >= 1)
  {
    v43 = *(v17 + 828);
    v44 = *(v17 + 824);
    v45 = v20 - (v43 - v44);
    if (v20 <= v43 - v44)
    {
      goto LABEL_68;
    }

    v46 = malloc_type_realloc(*(v17 + 832), 40 * (v20 + v44), 0x100004053E81896uLL);
    if (v46)
    {
      *(v17 + 832) = v46;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v47 = VRTraceErrorLogLevelToCSTR();
        v48 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v49 = *(v17 + 828);
          *buf = 136316162;
          v55 = v47;
          v56 = 2080;
          v57 = "ICEAddRemovedRemoteIPPort";
          v58 = 1024;
          v59 = 1773;
          v60 = 1024;
          *v61 = v49;
          *&v61[4] = 1024;
          *&v61[6] = v49 + v45;
          _os_log_impl(&dword_23D497000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Increase removed remote buffer size (%d->%d).", buf, 0x28u);
        }
      }

      *(v17 + 828) += v45;
      v44 = *(v17 + 824);
LABEL_68:
      memcpy((*(v17 + 832) + 40 * v44), v12, 40 * v20);
      *(v17 + 824) += v20;
    }

    else
    {
      v11 = 2148859907;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEAddRemovedRemoteIPPort_cold_1();
          v11 = 2148859907;
        }
      }
    }
  }

LABEL_69:
  pthread_mutex_unlock((v17 + 16));
LABEL_70:
  pthread_mutex_unlock((v9 + 168));
LABEL_71:
  if (v53)
  {
    free(v53);
  }

  if (v12)
  {
    free(v12);
  }

  CheckOutHandleDebug();
  return v11;
}

uint64_t AppendInterfaceNameToRemoteCandidates(uint64_t result, int a2)
{
  v2 = *(result + 192);
  if (v2 >= 1)
  {
    v4 = result;
    for (i = *(result + 168) + 28; *(i - 24) != a2; i += 148)
    {
      if (!--v2)
      {
        return result;
      }
    }

    result = __strlcpy_chk();
    v6 = *(v4 + 196);
    if (v6 >= 1)
    {
      v7 = 0;
      for (j = 0; j < v6; ++j)
      {
        if (*(*(v4 + 176) + v7 + 4) == a2)
        {
          result = __strlcpy_chk();
          v6 = *(v4 + 196);
        }

        v7 += 148;
      }
    }
  }

  return result;
}

uint64_t ICEGetCallInfoForConnectionData(uint64_t a1, uint64_t a2, _DWORD *a3, _BYTE *a4)
{
  result = 2148859905;
  if (a1 && a2 >= 1)
  {
    if ((CompressedCandidateByteOrderNToH(a1, a2) & 0x80000000) != 0)
    {
      result = 0;
      *a3 = bswap32(*(a1 + 8));
      *a4 = 0;
    }

    else
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
      v10 = -1431655766;
      result = UncompressCandidateList(a1, a2, &v11, &v10);
      if ((result & 0x80000000) == 0)
      {
        v9 = v11;
        *a3 = *(v11 + 2);
        *a4 = v9[36];
        free(v9);
        return 0;
      }
    }
  }

  return result;
}

uint64_t ICEDiscardResult(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (v3)
  {
    v4 = v3;
    pthread_rwlock_wrlock((v3 + 240));
    v5 = *(v4 + 440);
    if (v5)
    {
      v6 = (v4 + 440);
      do
      {
        if (*v5 == a2)
        {
          *v6 = v5[38];
          free(v5);
        }

        else
        {
          v6 = v5 + 38;
        }

        v5 = *v6;
      }

      while (*v6);
    }

    pthread_rwlock_unlock((v4 + 240));
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    v7 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEDiscardResult_cold_1();
      }
    }
  }

  return v7;
}

uint64_t ICECloseHandle(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = CheckInHandleDebug();
  if (v2)
  {
    v3 = v2;
    pthread_mutex_lock((v2 + 168));
    *(v3 + 448) = 1;
    pthread_mutex_unlock((v3 + 168));
    CheckOutHandleDebug();
    pthread_mutex_lock((v3 + 96));
    v4 = *(v3 + 160);
    if (v4)
    {
      do
      {
        v5 = v4[30];
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(v3 + 160) = 0;
    pthread_mutex_unlock((v3 + 96));
    pthread_mutex_lock((v3 + 168));
    v6 = *(v3 + 232);
    if (v6)
    {
      do
      {
        v7 = *(v6 + 912);
        pthread_mutex_destroy((v6 + 16));
        pthread_cond_destroy((v6 + 80));
        v8 = *(v6 + 160);
        if (v8)
        {
          *(v6 + 160) = 0;
          FreeEQ(v8);
        }

        v9 = *(v6 + 168);
        if (v9)
        {
          *(v6 + 168) = 0;
          free(v9);
        }

        v10 = *(v6 + 176);
        if (v10)
        {
          *(v6 + 176) = 0;
          free(v10);
        }

        v11 = *(v6 + 184);
        if (v11)
        {
          *(v6 + 184) = 0;
          free(v11);
        }

        v12 = *(v6 + 744);
        if (v12)
        {
          CFRelease(v12);
        }

        v13 = *(v6 + 776);
        if (v13)
        {
          free(v13);
          *(v6 + 768) = 0u;
        }

        v14 = *(v6 + 792);
        if (v14)
        {
          free(v14);
          *(v6 + 784) = 0u;
        }

        v15 = *(v6 + 816);
        if (v15)
        {
          free(v15);
          *(v6 + 808) = 0u;
        }

        v16 = *(v6 + 832);
        if (v16)
        {
          free(v16);
          *(v6 + 824) = 0u;
        }

        v17 = *(v3 + 56);
        if (v17)
        {
          v17(*(v3 + 8), *(v6 + 148), a1);
        }

        free(v6);
        v6 = v7;
      }

      while (v7);
    }

    *(v3 + 232) = 0;
    v18 = *(v3 + 720);
    if (v18)
    {
      CFRelease(v18);
      *(v3 + 720) = 0;
    }

    pthread_mutex_unlock((v3 + 168));
    pthread_rwlock_wrlock((v3 + 240));
    v19 = *(v3 + 440);
    if (v19)
    {
      do
      {
        v20 = v19[38];
        free(v19);
        v19 = v20;
      }

      while (v20);
    }

    *(v3 + 440) = 0;
    pthread_rwlock_unlock((v3 + 240));
    pthread_mutex_destroy((v3 + 96));
    pthread_mutex_destroy((v3 + 168));
    pthread_rwlock_destroy((v3 + 240));
    pthread_mutex_lock((v3 + 496));
    v21 = *(v3 + 560);
    if (v21)
    {
      do
      {
        v22 = v21[198];
        free(v21);
        v21 = v22;
      }

      while (v22);
    }

    *(v3 + 560) = 0;
    pthread_mutex_unlock((v3 + 496));
    pthread_mutex_destroy((v3 + 496));
    pthread_mutex_lock((v3 + 568));
    v23 = *(v3 + 632);
    if (v23)
    {
      do
      {
        v24 = v23[32];
        if (v24)
        {
          CFRelease(v24);
        }

        v25 = v23[41];
        free(v23);
        v23 = v25;
      }

      while (v25);
    }

    *(v3 + 632) = 0;
    pthread_mutex_unlock((v3 + 568));
    pthread_mutex_destroy((v3 + 568));
    free(v3);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v30 = 136315650;
        v31 = v26;
        v32 = 2080;
        v33 = "ICECloseHandle";
        v34 = 1024;
        v35 = 2296;
        _os_log_impl(&dword_23D497000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICECloseHandle ... done.", &v30, 0x1Cu);
      }
    }

    return 0;
  }

  else
  {
    v28 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICECloseHandle_cold_1();
      }
    }
  }

  return v28;
}

BOOL ICECheckPacket(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 4);
  if (v6 == 2)
  {
    v9 = bswap32(*(a2 + 7));
    v10 = HIWORD(v9) & 0x110;
    v11 = (v9 >> 17) & 0x70 | HIWORD(v9) & 0xF | (v9 >> 18) & 0xF80;
    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 == 1;
    }

    if (v12)
    {
      memset(v21, 170, 0x480uLL);
      ParseSTUNMessage((a2 + 7), *(a2 + 1492), v21);
      STUNAttr = GetSTUNAttr(v21, 6);
      if (STUNAttr)
      {
        v18 = *(STUNAttr + 2);
        pthread_mutex_lock((a1 + 168));
        v19 = *(a1 + 232);
        if (v19)
        {
          while (*(v19 + 148) != a4 || FindMatchCP(*(v19 + 184), *(v19 + 200), v18, 0) == -1)
          {
            v19 = *(v19 + 912);
            if (!v19)
            {
              goto LABEL_24;
            }
          }

          v8 = 1;
        }

        else
        {
LABEL_24:
          v8 = 0;
        }

        pthread_mutex_unlock((a1 + 168));
      }

      else
      {
        v8 = 0;
      }

      FreeSTUNMessage(v21);
    }

    else
    {
      if (v11 == 7)
      {
        return 1;
      }

      if (v10 >= 0x100 && v11 == 5)
      {
        return 1;
      }

      else
      {
        v14 = HIWORD(v9);
        *v21 = *(a2 + 11);
        if (v21[0] == 1118048801)
        {
          v21[0] = 554869826;
        }

        return IsSTUNIDValid(a3, v21, (v11 == 9) & (v14 >> 8), *(a2 + 1576)) != 0;
      }
    }
  }

  else if (v6 == 1 && (v21[0] = -1431655766, (SNATMAP_GetNonceValue() & 0x80000000) == 0) && (SNATMAPRequest = FindSNATMAPRequest(a3, v21[0], 0)) != 0)
  {
    v8 = 1;
    *(SNATMAPRequest + 6) = 1;
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t ICEDiscardOneRelayBindingForRemote(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 2148859906;
  }

  *&v24[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v6;
  *v24 = v6;
  pthread_mutex_lock((a1 + 568));
  v7 = *(a1 + 632);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = (a1 + 632);
  while (1)
  {
    if ((GetIPPortFromDict(*(v7 + 256), @"GKSRelayPeerRelayNatIP", @"GKSRelayPeerRelayNatPort", &v23) & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    v9 = bswap32(*&v24[4]);
    *&v24[4] = v9;
    if (*(v7 + 36) != *(a2 + 148) || (v23 & 1) != (*a3 & 1))
    {
      goto LABEL_16;
    }

    if (v23)
    {
      if (*&v24[4] != *(a3 + 20) || *&v24[12] != *(a3 + 28))
      {
        goto LABEL_16;
      }
    }

    else if (v9 != *(a3 + 20))
    {
      goto LABEL_16;
    }

    if (*&v24[20] == *(a3 + 36))
    {
      break;
    }

LABEL_16:
    v8 = (v7 + 328);
    v7 = *(v7 + 328);
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  *v8 = *(v7 + 328);
LABEL_17:
  v11 = DiscardOneRelayBinding(v7, a2);
  pthread_mutex_unlock((a1 + 568));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315906;
      v16 = v12;
      v17 = 2080;
      v18 = "ICEDiscardOneRelayBindingForRemote";
      v19 = 1024;
      v20 = 2530;
      v21 = 1024;
      v22 = v11;
      _os_log_impl(&dword_23D497000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d discard one relay binding %x", &v15, 0x22u);
    }
  }

  return v11;
}

uint64_t DiscardOneRelayBinding(pthread_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 2148859926;
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v8.__opaque[24] = v3;
  *&v8.__opaque[40] = v3;
  *&v8.__sig = v3;
  *&v8.__opaque[8] = v3;
  if (a2)
  {
    v4 = *(a2 + 160);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = __DiscardOneRelayBinding_block_invoke;
    v7[3] = &__block_descriptor_tmp;
    v7[4] = a1;
    FreeEventsMatchingPredicate(v4, v7);
  }

  pthread_attr_init(&v8);
  pthread_attr_setdetachstate(&v8, 2);
  v5 = pthread_create(a1 + 3, &v8, RelayDiscardProc, a1);
  pthread_attr_destroy(&v8);
  if (v5)
  {
    return v5 | 0xC0150000;
  }

  else
  {
    return 0;
  }
}

uint64_t DiscardOneRelayBindingWithChannelNumber(uint64_t a1, int a2, int a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = 2148859925;
  if (!a1)
  {
    return 2148859906;
  }

  v35 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v7;
  v34 = v7;
  v31[0] = v7;
  v31[1] = v7;
  v32[0] = v7;
  *(v32 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v29[0] = v7;
  v29[1] = v7;
  v30[0] = v7;
  *(v30 + 14) = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock((a1 + 568));
  v8 = *(a1 + 632);
  if (v8)
  {
    v9 = (a1 + 632);
    while (1)
    {
      if ((GetIPPortFromDict(*(v8 + 256), @"GKSRelayPeerRelayNatIP", @"GKSRelayPeerRelayNatPort", &v33) & 0x80000000) == 0)
      {
        DWORD1(v34) = bswap32(DWORD1(v34));
        if (*(v8 + 36) == a2 && *(v8 + 264) == a3)
        {
          break;
        }
      }

      v9 = (v8 + 328);
      v8 = *(v8 + 328);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    *v9 = *(v8 + 328);
    pthread_mutex_lock((a1 + 168));
    for (i = *(a1 + 232); i; i = *(i + 912))
    {
      if (*(i + 148) == a2)
      {
        break;
      }
    }

    pthread_mutex_unlock((a1 + 168));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v13 = IPPORTToStringWithSize(v31, v8 + 124, 0x36uLL);
        v14 = IPPORTToStringWithSize(v29, &v33, 0x36uLL);
        v15 = *(v8 + 264);
        v17 = 136316418;
        v18 = v11;
        v19 = 2080;
        v20 = "DiscardOneRelayBindingWithChannelNumber";
        v21 = 1024;
        v22 = 2574;
        v23 = 2080;
        v24 = v13;
        v25 = 2080;
        v26 = v14;
        v27 = 1024;
        v28 = v15;
        _os_log_impl(&dword_23D497000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d relay %s - %s is torn down, channel#[%04X]", &v17, 0x36u);
      }
    }

    v3 = DiscardOneRelayBinding(v8, i);
  }

  else
  {
LABEL_8:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        DiscardOneRelayBindingWithChannelNumber_cold_1();
      }
    }
  }

  pthread_mutex_unlock((a1 + 568));
  return v3;
}

uint64_t ICEDiscardOneRelayBindingWithChannelNumber(uint64_t a1, int a2, int a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2148859906;
  }

  v6 = DiscardOneRelayBindingWithChannelNumber(v5, a2, a3);
  CheckOutHandleDebug();
  return v6;
}

uint64_t ICEDiscardRelayBinding(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148859906;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 568));
  pthread_mutex_lock((v4 + 168));
  for (i = *(v4 + 232); i; i = *(i + 912))
  {
    if (*(i + 148) == a2)
    {
      break;
    }
  }

  pthread_mutex_unlock((v4 + 168));
  v6 = *(v4 + 632);
  if (v6)
  {
    v7 = 0;
    v8 = (v4 + 632);
    do
    {
      while (*(v6 + 36) == a2)
      {
        v7 = DiscardOneRelayBinding(v6, i);
        v6 = *(v6 + 328);
        *v8 = v6;
        if (!v6)
        {
          goto LABEL_14;
        }
      }

      v8 = (v6 + 328);
      v6 = *(v6 + 328);
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

LABEL_14:
  pthread_mutex_unlock((v4 + 568));
  CheckOutHandleDebug();
  return v7;
}

uint64_t ICERefreshRelayBinding(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v17 = *MEMORY[0x277D85DE8];
  v3 = micro(a1, a2);
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2148859906;
  }

  v5 = v4;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v16.__opaque[24] = v6;
  *&v16.__opaque[40] = v6;
  *&v16.__sig = v6;
  *&v16.__opaque[8] = v6;
  pthread_mutex_lock((v4 + 568));
  v7 = *(v5 + 632);
  if (v7)
  {
    v8 = 0;
    do
    {
      if (*(v7 + 36) == v2 && v3 - *(v7 + 248) > 20.0)
      {
        v9 = malloc_type_malloc(0x150uLL, 0x10A0040062F5B3BuLL);
        if (v9)
        {
          v10 = v9;
          memcpy(v9, v7, 0x150uLL);
          v11 = *(v7 + 256);
          if (v11)
          {
            v10[32] = CFRetain(v11);
          }

          pthread_attr_init(&v16);
          pthread_attr_setdetachstate(&v16, 2);
          v15 = 0xAAAAAAAAAAAAAAAALL;
          v12 = pthread_create(&v15, &v16, RelayRefreshProc, v10);
          pthread_attr_destroy(&v16);
          if (v12)
          {
            v13 = v10[32];
            if (v13)
            {
              CFRelease(v13);
            }

            v8 = v12 | 0xC0150000;
            free(v10);
          }
        }
      }

      v7 = *(v7 + 328);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  pthread_mutex_unlock((v5 + 568));
  CheckOutHandleDebug();
  return v8;
}

uint64_t ICERefreshAllRelayBinding(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2148859906;
  }

  v2 = v1;
  pthread_mutex_lock((v1 + 568));
  v3 = *(v2 + 632);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = malloc_type_malloc(0x150uLL, 0x10A0040062F5B3BuLL);
      if (v5)
      {
        v6 = v5;
        memcpy(v5, v3, 0x150uLL);
        v7 = v3[32];
        if (v7)
        {
          v6[32] = CFRetain(v7);
        }

        v6[41] = 0;
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v15.__opaque[24] = v8;
        *&v15.__opaque[40] = v8;
        *&v15.__sig = v8;
        *&v15.__opaque[8] = v8;
        pthread_attr_init(&v15);
        pthread_attr_setdetachstate(&v15, 2);
        v14 = 0xAAAAAAAAAAAAAAAALL;
        v9 = pthread_create(&v14, &v15, RelayRefreshProc, v6);
        pthread_attr_destroy(&v15);
        if (v9)
        {
          v10 = v6[32];
          if (v10)
          {
            CFRelease(v10);
          }

          v4 = v9 | 0xC0150000;
          free(v6);
        }
      }

      else
      {
        v4 = 2148859907;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            LODWORD(v15.__sig) = 136315906;
            *(&v15.__sig + 4) = v11;
            *&v15.__opaque[4] = 2080;
            *&v15.__opaque[6] = "ICERefreshAllRelayBinding";
            *&v15.__opaque[14] = 1024;
            *&v15.__opaque[16] = 2698;
            *&v15.__opaque[20] = 1024;
            *&v15.__opaque[22] = 2698;
            _os_log_error_impl(&dword_23D497000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: malloc failed!", &v15, 0x22u);
          }
        }
      }

      v3 = v3[41];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock((v2 + 568));
  CheckOutHandleDebug();
  return v4;
}

uint64_t ICEStopConnectivityCheck(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = v3;
      v12 = 2080;
      v13 = "ICEStopConnectivityCheck";
      v14 = 1024;
      v15 = 2734;
      v16 = 1024;
      v17 = v2;
      _os_log_impl(&dword_23D497000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEStopConnectivityCheck() callID=%d", &v10, 0x22u);
    }
  }

  v5 = 2148859926;
  v6 = CheckInHandleDebug();
  if (!v6)
  {
    return 2148859906;
  }

  v7 = v6;
  pthread_mutex_lock((v6 + 168));
  v8 = *(v7 + 232);
  if (v8)
  {
    while (*(v8 + 148) != v2)
    {
      v8 = *(v8 + 912);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    *(v8 + 136) = 1;
    pthread_mutex_unlock((v7 + 168));
    v5 = 0;
  }

  else
  {
LABEL_8:
    pthread_mutex_unlock((v7 + 168));
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEStopConnectivityCheck_cold_1();
      }
    }
  }

  CheckOutHandleDebug();
  return v5;
}

uint64_t ICESetSKEState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v22 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316162;
      v13 = v5;
      v14 = 2080;
      v15 = "ICESetSKEState";
      v16 = 1024;
      v17 = 2767;
      v18 = 1024;
      v19 = v4;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_23D497000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICESetSKEState() callID=%d pSKEState=%p", &v12, 0x2Cu);
    }
  }

  v7 = 2148859926;
  v8 = CheckInHandleDebug();
  if (!v8)
  {
    return 2148859906;
  }

  v9 = v8;
  pthread_mutex_lock((v8 + 168));
  v10 = *(v9 + 232);
  if (v10)
  {
    while (*(v10 + 148) != v4)
    {
      v10 = *(v10 + 912);
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    pthread_mutex_lock((v10 + 16));
    *(v10 + 896) = a3;
    pthread_mutex_unlock((v10 + 16));
    pthread_mutex_unlock((v9 + 168));
    v7 = 0;
  }

  else
  {
LABEL_8:
    pthread_mutex_unlock((v9 + 168));
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICESetSKEState_cold_1();
      }
    }
  }

  CheckOutHandleDebug();
  return v7;
}

uint64_t ICEGetExtIPPorts(uint64_t a1, _BYTE *a2, unsigned int a3, uint64_t a4)
{
  v97 = *MEMORY[0x277D85DE8];
  SNATMAPServer = 2148859906;
  if (!a2 || (*a2 & 1) != 0)
  {
    return 2148859905;
  }

  v96 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v95 = v8;
  v94 = v8;
  memset(__b, 170, sizeof(__b));
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v91[0] = v9;
  v91[1] = v9;
  v92[0] = v9;
  *(v92 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v75 = -1431655766;
  v10 = CheckInHandleDebug();
  if (!v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetExtIPPorts_cold_4();
      }
    }

    return SNATMAPServer;
  }

  v11 = v10;
  v71 = *(v10 + 16);
  v12 = v10 + 452;
  if (IsIPPORTValid(v10 + 452))
  {
    SNATMAPServer = 0;
    v13 = *(v12 + 16);
    v94 = *v12;
    v95 = v13;
    v96 = *(v12 + 32);
  }

  else
  {
    SNATMAPServer = GetSNATMAPServer();
    if ((SNATMAPServer & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEGetExtIPPorts_cold_3();
        }
      }

      goto LABEL_107;
    }

    v14 = v95;
    *v12 = v94;
    *(v12 + 16) = v14;
    *(v12 + 32) = v96;
  }

  v70 = a2;
  v69 = a4;
  pthread_mutex_lock((v11 + 96));
  v72 = v11;
  v73 = a3;
  v66 = a3;
  if (a3 < 1)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_56;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = *(v11 + 160);
    if (!v18)
    {
      goto LABEL_46;
    }

    v19 = &v70[40 * v15];
    while (1)
    {
      if (!IsIPPORTValid(v19))
      {
        goto LABEL_45;
      }

      v20 = (v18 + 8);
      if ((*(v18 + 8) & 1) != (*v19 & 1))
      {
        goto LABEL_45;
      }

      if (*(v18 + 8))
      {
        if (*(v18 + 28) != *(v19 + 20) || *(v18 + 36) != *(v19 + 28))
        {
          goto LABEL_45;
        }
      }

      else if (*(v18 + 28) != *(v19 + 20))
      {
        goto LABEL_45;
      }

      if (*(v18 + 44) != *(v19 + 36))
      {
        goto LABEL_45;
      }

      v17 = *(v18 + 4);
      if (IsIPPORTValid(v18 + 96))
      {
        v36 = v69 + 40 * v15;
        v37 = *(v18 + 96);
        v38 = *(v18 + 112);
        *(v36 + 32) = *(v18 + 128);
        *v36 = v37;
        *(v36 + 16) = v38;
        goto LABEL_46;
      }

      v75 = 1472;
      SNATMAPRequest = MakeSNATMAPRequest(v16, v18 + 8, __b, &v75);
      if ((SNATMAPRequest & 0x80000000) == 0)
      {
        break;
      }

      SNATMAPServer = SNATMAPRequest;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v84 = v32;
          v85 = 2080;
          v86 = "ICEGetExtIPPorts";
          v87 = 1024;
          v88 = 2847;
          v89 = 1024;
          *v90 = 2847;
          *&v90[4] = 1024;
          *&v90[6] = SNATMAPServer;
          v30 = v33;
          v31 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: MakeSNATMAPRequest failed (%08X)\n";
          goto LABEL_43;
        }

LABEL_44:
        v11 = v72;
      }

LABEL_45:
      v18 = *(v18 + 240);
      if (!v18)
      {
        goto LABEL_46;
      }
    }

    SNATMAPServer = v71(*(v11 + 8), 0, __b, v75, v18 + 8, &v94, 0, 0);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if ((SNATMAPServer & 0x80000000) != 0)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v34 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v84 = v34;
          v85 = 2080;
          v86 = "ICEGetExtIPPorts";
          v87 = 1024;
          v88 = 2855;
          v89 = 1024;
          *v90 = 2855;
          *&v90[4] = 1024;
          *&v90[6] = SNATMAPServer;
          v30 = v35;
          v31 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: UDPSENDCALLBACK failed (%08X)";
LABEL_43:
          _os_log_error_impl(&dword_23D497000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x28u);
        }

        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (ErrorLogLevelForModule >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v26 = IPPORTToStringWithSize(v91, v18 + 8, 0x36uLL);
        *buf = 136315906;
        v84 = v24;
        v85 = 2080;
        v86 = "ICEGetExtIPPorts";
        v87 = 1024;
        v88 = 2860;
        v89 = 2080;
        *v90 = v26;
        _os_log_impl(&dword_23D497000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sent SNATMAP request for [%s]", buf, 0x26u);
      }
    }

    v27 = malloc_type_calloc(1uLL, 0x638uLL, 0x102004070FB87F4uLL);
    if (!v27)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v84 = v28;
          v85 = 2080;
          v86 = "ICEGetExtIPPorts";
          v87 = 1024;
          v88 = 2864;
          v89 = 1024;
          *v90 = 2864;
          *&v90[4] = 1024;
          *&v90[6] = 1592;
          v30 = v29;
          v31 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: calloc(%d) failed";
          goto LABEL_43;
        }
      }

      goto LABEL_44;
    }

    v39 = v27;
    *v27 = *v20 & 4;
    *(v27 + 2) = 1;
    v27[6] = 0;
    *(v27 + 373) = v75;
    __memcpy_chk();
    v40 = *(v18 + 40);
    v41 = *(v18 + 24);
    *(v39 + 1496) = *v20;
    *(v39 + 1512) = v41;
    *(v39 + 191) = v40;
    *(v39 + 196) = v96;
    *(v39 + 97) = v95;
    *(v39 + 96) = v94;
    if (v16)
    {
      v42 = v16;
      do
      {
        v43 = v42;
        v42 = v42[198];
      }

      while (v42);
      v43[198] = v39;
    }

    else
    {
      v16 = v39;
    }

    v11 = v72;
LABEL_46:
    ++v15;
  }

  while (v15 != v73);
LABEL_56:
  v44 = pthread_mutex_unlock((v11 + 96));
  *&v45 = 0xAAAAAAAAAAAAAAAALL;
  *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81 = v45;
  *v82 = v45;
  *&v82[16] = 0xAAAAAAAAAAAAAAAALL;
  v79[0] = v45;
  v79[1] = v45;
  v80 = 0xAAAAAAAAAAAAAAAALL;
  v76 = v45;
  v77 = v45;
  v78 = 0xAAAAAAAAAAAAAAAALL;
  v74 = 0;
  v49 = micro(v44, v46);
  if (v16)
  {
    v50 = v49;
    v51 = *(v11 + 24);
    while (1)
    {
LABEL_58:
      v52 = v16;
      while (*(v52 + 6))
      {
        v52 = v52[198];
        if (!v52)
        {
          goto LABEL_106;
        }
      }

      if (micro(NonceValue, v48) - v50 >= 5.0)
      {
        SNATMAPServer = 2148859927;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEGetExtIPPorts_cold_1();
            SNATMAPServer = 2148859927;
          }
        }

        goto LABEL_106;
      }

      NonceValue = v51(*(v72 + 8), v17, __b, &v75, &v81, v79, &v74, 1000, 0);
      SNATMAPServer = NonceValue;
      if ((NonceValue & 0x80000000) != 0)
      {
        break;
      }

      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      if (!__b[0] && v75 == 16)
      {
        NonceValue = SNATMAP_GetNonceValue();
        if ((NonceValue & 0x80000000) == 0)
        {
          NonceValue = FindSNATMAPRequest(v16, 2863311530, 0);
          if (NonceValue)
          {
            v53 = NonceValue;
            SNATMAPServer = ProcessSNATMAPResponse();
            if ((SNATMAPServer & 0x80000000) != 0)
            {
              NonceValue = VRTraceGetErrorLogLevelForModule();
              if (NonceValue >= 3)
              {
                v68 = VRTraceErrorLogLevelToCSTR();
                v61 = *MEMORY[0x277CE5818];
                NonceValue = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
                if (NonceValue)
                {
                  *buf = 136316162;
                  v84 = v68;
                  v85 = 2080;
                  v86 = "ICEGetExtIPPorts";
                  v87 = 1024;
                  v88 = 2939;
                  v89 = 1024;
                  *v90 = 2939;
                  *&v90[4] = 1024;
                  *&v90[6] = SNATMAPServer;
                  _os_log_error_impl(&dword_23D497000, v61, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ProcessSNATMAPResponse failed (%08X)", buf, 0x28u);
                }
              }

              continue;
            }

            *(v53 + 6) = 1;
            NonceValue = VRTraceGetErrorLogLevelForModule();
            if (NonceValue >= 6)
            {
              v67 = VRTraceErrorLogLevelToCSTR();
              v54 = *MEMORY[0x277CE5818];
              NonceValue = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
              if (NonceValue)
              {
                v55 = IPPORTToStringWithSize(v91, &v76, 0x36uLL);
                *buf = 136315906;
                v84 = v67;
                v85 = 2080;
                v86 = "ICEGetExtIPPorts";
                v87 = 1024;
                v88 = 2944;
                v89 = 2080;
                *v90 = v55;
                _os_log_impl(&dword_23D497000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SNATMAP mapping [%s]", buf, 0x26u);
              }
            }

            if (v66 >= 1)
            {
              v56 = v73;
              v57 = v70 + 20;
              v58 = v69;
              while (1)
              {
                if ((v81 & 1) == (*(v57 - 5) & 1))
                {
                  if (v81)
                  {
                    if (*&v82[4] != *v57 || *&v82[12] != *(v57 + 1))
                    {
                      goto LABEL_84;
                    }
                  }

                  else if (*&v82[4] != *v57)
                  {
                    goto LABEL_84;
                  }

                  if (*&v82[20] == *(v57 + 8))
                  {
                    v62 = v77;
                    *v58 = v76;
                    *(v58 + 16) = v62;
                    *(v58 + 32) = v78;
                    goto LABEL_58;
                  }
                }

LABEL_84:
                v58 += 40;
                v57 += 40;
                if (!--v56)
                {
                  goto LABEL_58;
                }
              }
            }
          }
        }
      }
    }

    if (NonceValue == 23 || NonceValue == 30)
    {
      NonceValue = ReXmitCollectionRequest(*(v72 + 8), *(v72 + 720), v16, v71);
      goto LABEL_58;
    }

    v63 = VRTraceGetErrorLogLevelForModule();
    if (v63 >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetExtIPPorts_cold_2();
      }
    }

    do
    {
LABEL_106:
      v64 = v16[198];
      free(v16);
      v16 = v64;
    }

    while (v64);
  }

LABEL_107:
  CheckOutHandleDebug();
  return SNATMAPServer;
}

uint64_t ICEConnectionDataContainsCallID(const __CFData *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFDataGetLength(a1);
  v5 = Length;
  if (Length < 1)
  {
    return 0;
  }

  v20 = 0;
  v19 = -1431655766;
  v6 = Length & 0x7FFFFFFF;
  v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v21.location = 0;
  v21.length = v5 & 0x7FFFFFFF;
  CFDataGetBytes(a1, v21, v7);
  if ((CompressedCandidateByteOrderNToH(v8, v5) & 0x80000000) != 0)
  {
    v15 = v5 / 0x94;
    v19 = v5 / 0x94;
    if (v6 >= 0x94)
    {
      v16 = CFDataGetLength(a1);
      v17 = malloc_type_calloc(1uLL, v16, 0x1000040C185D105uLL);
      v20 = v17;
      if (v17)
      {
        v10 = v17;
        v22.location = 0;
        v22.length = v6;
        CFDataGetBytes(a1, v22, v17);
        if ((CandidateByteOrderNToH(v10, v15) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }

        goto LABEL_6;
      }
    }

    return 0;
  }

  v9 = UncompressCandidateList(v8, v5, &v20, &v19);
  v10 = v20;
  if (v9 < 0)
  {
LABEL_15:
    if (v10)
    {
      free(v10);
    }

    free(v8);
    return 0;
  }

LABEL_6:
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v19;
  free(v8);
  if (v11 < 1)
  {
LABEL_11:
    v14 = 0;
  }

  else
  {
    v12 = v10 + 2;
    while (1)
    {
      v13 = *v12;
      v12 += 37;
      if (v13 == a2)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_11;
      }
    }

    v14 = 1;
  }

  free(v10);
  return v14;
}

uint64_t ICEGetExtIPIndex(const __CFData *a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v39 = 0;
  if (a1)
  {
    Length = CFDataGetLength(a1);
    v3 = Length;
    if (Length >= 1)
    {
      v4 = Length & 0x7FFFFFFF;
      v5 = malloc_type_calloc(1uLL, v4, 0x100004077774924uLL);
      if (v5)
      {
        v6 = v5;
        v38 = -1431655766;
        v55.location = 0;
        v55.length = v3 & 0x7FFFFFFF;
        CFDataGetBytes(a1, v55, v5);
        v7 = CompressedCandidateByteOrderNToH(v6, v3);
        if (v7 < 0)
        {
          v38 = v3 / 0x94;
          if (v4 < 0x94 || (v27 = CFDataGetLength(a1), v28 = malloc_type_calloc(1uLL, v27, 0x1000040C185D105uLL), (v39 = v28) == 0))
          {
            LOWORD(v26) = -1;
LABEL_61:
            free(v6);
            return v26;
          }

          v29 = v28;
          v56.location = 0;
          v56.length = v3 & 0x7FFFFFFF;
          CFDataGetBytes(a1, v56, v28);
          if ((CandidateByteOrderNToH(v29, v3 / 0x94) & 0x80000000) != 0)
          {
            goto LABEL_59;
          }
        }

        else if ((UncompressCandidateList(v6, v3, &v39, &v38) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }

        if (v38 <= 0)
        {
          LODWORD(v8) = 0;
          v25 = v38 == 0;
          v10 = -1;
          v12 = -1;
        }

        else
        {
          v8 = 0;
          v9 = v39 + 24;
          v10 = -1;
          v11 = -1;
          v12 = -1;
          do
          {
            if ((*v9 & 1) == 0)
            {
              v13 = *(v9 - 5);
              if (v13 == 3)
              {
                if ((*v9 & 4) == 0)
                {
                  goto LABEL_36;
                }

                if (v11 == -1)
                {
                  v11 = v8;
                }
              }

              else
              {
                v14 = v9[5];
                v15 = v14 & 0xFFF00000;
                v16 = v14 & 0xFFFF0000;
                v17 = HIBYTE(v14);
                if (v12 == -1)
                {
                  v18 = v8;
                }

                else
                {
                  v18 = v12;
                }

                if (v10 == -1)
                {
                  v19 = v8;
                }

                else
                {
                  v19 = v10;
                }

                v20 = v13 == 7;
                if (v13 == 7)
                {
                  v21 = v12;
                }

                else
                {
                  v21 = v18;
                }

                if (v20)
                {
                  v22 = v19;
                }

                else
                {
                  v22 = v10;
                }

                if (v17 != 10 && v15 != -1408237568 && v16 != -1062731776)
                {
                  v12 = v21;
                  v10 = v22;
                }
              }
            }

            ++v8;
            v9 += 37;
          }

          while (v38 != v8);
          LODWORD(v8) = v38;
LABEL_36:
          v25 = v8 == v38;
          if ((v11 & 0x80000000) == 0)
          {
LABEL_46:
            if (v12 >= 0)
            {
              v30 = v12;
            }

            else
            {
              v30 = v11;
            }

            if (v25)
            {
              v31 = v30;
            }

            else
            {
              v31 = v8;
            }

            if (v31 != -1)
            {
              if (v7 < 0)
              {
                LOWORD(v26) = 148 * v31 + 44;
                if ((v26 & 0x8000) == 0)
                {
LABEL_70:
                  *&v53[14] = 0xAAAAAAAAAAAAAAAALL;
                  *&v34 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v52[1] = v34;
                  *v53 = v34;
                  v52[0] = v34;
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v35 = VRTraceErrorLogLevelToCSTR();
                    v36 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      v37 = IPPORTToStringWithSize(v52, v39 + 148 * v31 + 24, 0x36uLL);
                      *buf = 136316418;
                      v41 = v35;
                      v42 = 2080;
                      v43 = "ICEGetExtIPIndex";
                      v44 = 1024;
                      v45 = 3170;
                      v46 = 1024;
                      v47 = v26;
                      v48 = 1024;
                      v49 = v3;
                      v50 = 2080;
                      v51 = v37;
                      _os_log_impl(&dword_23D497000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEGetExtIPIndex: %d (blob length: %d) for %s", buf, 0x32u);
                    }
                  }
                }
              }

              else
              {
                LODWORD(v52[0]) = -1431655766;
                *buf = -1431655766;
                breakByte(*v6, v52, buf);
                if (SLODWORD(v52[0]) < 1)
                {
                  LODWORD(v32) = 0;
                  LOWORD(v26) = -1;
                }

                else
                {
                  v32 = 0;
                  v26 = 1;
                  while (*&v6[v26] != *(v39 + 37 * v31 + 11))
                  {
                    ++v32;
                    v26 += 4;
                    if (LODWORD(v52[0]) == v32)
                    {
                      LOWORD(v26) = -1;
                      goto LABEL_67;
                    }
                  }
                }

                if (v32 == LODWORD(v52[0]))
                {
LABEL_67:
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                    {
                      ICEGetExtIPIndex_cold_1();
                      if ((v26 & 0x8000) == 0)
                      {
                        goto LABEL_70;
                      }

                      goto LABEL_60;
                    }
                  }
                }

                if ((v26 & 0x8000) == 0)
                {
                  goto LABEL_70;
                }
              }

LABEL_60:
              free(v39);
              goto LABEL_61;
            }

LABEL_59:
            LOWORD(v26) = -1;
            goto LABEL_60;
          }
        }

        v11 = v10;
        goto LABEL_46;
      }
    }
  }

  LOWORD(v26) = -1;
  return v26;
}

uint64_t ICESetTimeout(uint64_t a1, double a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148859906;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 168));
  *(v4 + 712) = a2;
  pthread_mutex_unlock((v4 + 168));
  CheckOutHandleDebug();
  return 0;
}

uint64_t ICESetReportingAgent(uint64_t a1, const void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148859906;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 168));
  v5 = *(v4 + 720);
  *(v4 + 720) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  pthread_mutex_unlock((v4 + 168));
  CheckOutHandleDebug();
  return 0;
}

uint64_t ICEConvertToOldCompression(unsigned __int8 **a1, int *a2, const void *a3, int a4)
{
  v4 = 2148859905;
  if (a3 && a4)
  {
    v9 = malloc_type_malloc(a4, 0x100004077774924uLL);
    if (v9)
    {
      v10 = v9;
      *a2 = a4;
      memcpy(v9, a3, a4);
      v4 = CompressedCandidateByteOrderNToH(v10, *a2);
      if ((v4 & 0x80000000) != 0)
      {
        free(v10);
      }

      else
      {
        *a1 = v10;
      }
    }

    else
    {
      return 2148859907;
    }
  }

  return v4;
}

uint64_t ICEConvertToNewCompression(unsigned __int8 **a1, int *a2, const void *a3, int a4)
{
  v4 = 2148859905;
  if (a3 && a4)
  {
    v9 = malloc_type_malloc(a4, 0x100004077774924uLL);
    if (v9)
    {
      v10 = v9;
      *a2 = a4;
      memcpy(v9, a3, a4);
      v4 = CompressedCandidateByteOrderHToN(v10, *a2);
      if ((v4 & 0x80000000) != 0)
      {
        free(v10);
      }

      else
      {
        *a1 = v10;
      }
    }

    else
    {
      return 2148859907;
    }
  }

  return v4;
}

uint64_t ICESetForceRelay(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = 2148859906;
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    pthread_mutex_lock((v4 + 168));
    v6 = *(v5 + 232);
    if (v6)
    {
      while (*(v6 + 148) != v2)
      {
        v6 = *(v6 + 912);
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      *(v6 + 760) = 1;
      pthread_mutex_unlock((v5 + 168));
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICESetForceRelay_cold_1();
        }
      }

      v3 = 0;
    }

    else
    {
LABEL_5:
      pthread_mutex_unlock((v5 + 168));
      v3 = 2148859926;
    }

    CheckOutHandleDebug();
  }

  return v3;
}

uint64_t ICESetForceIPv6(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = 2148859926;
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2148859906;
  }

  v5 = v4;
  pthread_mutex_lock((v4 + 168));
  v6 = *(v5 + 232);
  if (v6)
  {
    while (*(v6 + 148) != a2)
    {
      v6 = *(v6 + 912);
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 764) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "ICESetForceIPv6";
        v14 = 1024;
        v15 = 3314;
        v16 = 1024;
        v17 = a2;
        _os_log_impl(&dword_23D497000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Force IPv6 for call (%d).", &v10, 0x22u);
      }
    }

    v3 = 0;
  }

LABEL_11:
  pthread_mutex_unlock((v5 + 168));
  CheckOutHandleDebug();
  return v3;
}

uint64_t ICEUpdateRole(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v22 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    pthread_mutex_lock((v5 + 168));
    v7 = *(v6 + 232);
    if (v7)
    {
      while (*(v7 + 148) != v4)
      {
        v7 = *(v7 + 912);
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      if (!*(v7 + 840))
      {
        *(v7 + 840) = a3;
        if (a3)
        {
          *(v7 + 848) = arc4random() & 0x7FFFFFFF;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v12 = 136316162;
            v13 = v9;
            v14 = 2080;
            v15 = "ICEUpdateRole";
            v16 = 1024;
            v17 = 3343;
            v18 = 1024;
            v19 = v4;
            v20 = 1024;
            v21 = a3;
            _os_log_impl(&dword_23D497000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Updated ICEList(%d) to role (%d)", &v12, 0x28u);
          }
        }
      }

      v8 = 0;
    }

    else
    {
LABEL_5:
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v8 = 2148859926;
      }

      else
      {
        VRTraceErrorLogLevelToCSTR();
        v8 = 2148859926;
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEUpdateRole_cold_1();
        }
      }
    }

    pthread_mutex_unlock((v6 + 168));
    CheckOutHandleDebug();
  }

  else
  {
    v8 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEUpdateRole_cold_2();
      }
    }
  }

  return v8;
}

uint64_t ICEUpdateServingNetworkInfo(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v22 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    pthread_mutex_lock((v5 + 168));
    v7 = *(v6 + 232);
    if (v7)
    {
      while (*(v7 + 148) != v4)
      {
        v7 = *(v7 + 912);
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      *(v7 + 872) = a3;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136316162;
          v13 = v9;
          v14 = 2080;
          v15 = "ICEUpdateServingNetworkInfo";
          v16 = 1024;
          v17 = 3376;
          v18 = 1024;
          v19 = v4;
          v20 = 1024;
          v21 = a3;
          _os_log_impl(&dword_23D497000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Call (%d) serving network QoS available (%d)", &v12, 0x28u);
        }
      }

      v8 = 0;
    }

    else
    {
LABEL_5:
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v8 = 2148859926;
      }

      else
      {
        VRTraceErrorLogLevelToCSTR();
        v8 = 2148859926;
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEUpdateServingNetworkInfo_cold_1();
        }
      }
    }

    pthread_mutex_unlock((v6 + 168));
    CheckOutHandleDebug();
  }

  else
  {
    v8 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEUpdateServingNetworkInfo_cold_2();
      }
    }
  }

  return v8;
}

uint64_t ICEUpdateCellTech(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v23 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    pthread_mutex_lock((v5 + 168));
    v7 = *(v6 + 232);
    if (v7)
    {
      while (*(v7 + 148) != v4)
      {
        v7 = *(v7 + 912);
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(v7 + 880);
          v13 = 136316162;
          v14 = v9;
          v15 = 2080;
          v16 = "ICEUpdateCellTech";
          v17 = 1024;
          v18 = 3408;
          v19 = 1024;
          v20 = v11;
          v21 = 1024;
          v22 = a3;
          _os_log_impl(&dword_23D497000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEUpdateCellTech (%d->%d)", &v13, 0x28u);
        }
      }

      v8 = 0;
      *(v7 + 880) = a3;
    }

    else
    {
LABEL_5:
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v8 = 2148859926;
      }

      else
      {
        VRTraceErrorLogLevelToCSTR();
        v8 = 2148859926;
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEUpdateCellTech_cold_1();
        }
      }
    }

    pthread_mutex_unlock((v6 + 168));
    CheckOutHandleDebug();
  }

  else
  {
    v8 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEUpdateCellTech_cold_2();
      }
    }
  }

  return v8;
}

uint64_t ICEGetCellTech(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v10 = a2;
  v11 = CheckInHandleDebug();
  if (v11)
  {
    v12 = v11;
    pthread_mutex_lock((v11 + 168));
    v13 = *(v12 + 232);
    if (v13)
    {
      while (*(v13 + 148) != v10)
      {
        v13 = *(v13 + 912);
        if (!v13)
        {
          goto LABEL_5;
        }
      }

      v14 = 0;
      *a3 = *(v13 + 880);
      *a4 = *(v13 + 872);
      *a5 = *(v13 + 884);
      *a6 = *(v13 + 876);
    }

    else
    {
LABEL_5:
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v14 = 2148859926;
      }

      else
      {
        VRTraceErrorLogLevelToCSTR();
        v14 = 2148859926;
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEGetCellTech_cold_1();
        }
      }
    }

    pthread_mutex_unlock((v12 + 168));
    CheckOutHandleDebug();
  }

  else
  {
    v14 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetCellTech_cold_2();
      }
    }
  }

  return v14;
}

uint64_t ICEGetConnErrorCode(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  v30 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    pthread_mutex_lock((v5 + 168));
    v7 = *(v6 + 632);
    if (v7)
    {
      while (*(v7 + 36) != v4)
      {
        v7 = *(v7 + 328);
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      *a3 = *(v7 + 268);
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_22;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v12 = *a3;
      v20 = 136316162;
      v21 = v10;
      v22 = 2080;
      v23 = "ICEGetConnErrorCode";
      v24 = 1024;
      v25 = 3475;
      v26 = 1024;
      v27 = v4;
      v28 = 1024;
      v29 = v12;
      v13 = " [%s] %s:%d Call (%d) failure code: %d";
      v14 = v11;
      v15 = 40;
    }

    else
    {
LABEL_5:
      v8 = *(v6 + 232);
      if (!v8)
      {
LABEL_8:
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          v9 = 2148859926;
        }

        else
        {
          VRTraceErrorLogLevelToCSTR();
          v9 = 2148859926;
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEGetConnErrorCode_cold_1();
          }
        }

        goto LABEL_23;
      }

      while (*(v8 + 148) != v4)
      {
        v8 = *(v8 + 912);
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      *a3 = *(v8 + 424);
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v16 = VRTraceErrorLogLevelToCSTR(), v17 = *MEMORY[0x277CE5818], !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_22:
        v9 = 0;
LABEL_23:
        pthread_mutex_unlock((v6 + 168));
        CheckOutHandleDebug();
        return v9;
      }

      v18 = *a3;
      v20 = 136315906;
      v21 = v16;
      v22 = 2080;
      v23 = "ICEGetConnErrorCode";
      v24 = 1024;
      v25 = 3485;
      v26 = 1024;
      v27 = v18;
      v13 = " [%s] %s:%d Relay Allocation failure code: %d";
      v14 = v17;
      v15 = 34;
    }

    _os_log_impl(&dword_23D497000, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
    goto LABEL_22;
  }

  v9 = 2148859906;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ICEGetConnErrorCode_cold_2();
    }
  }

  return v9;
}

void ICEDisableCandidatePairFilter(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (v1)
  {
    v2 = v1;
    pthread_mutex_lock((v1 + 168));
    *(v2 + 88) = 1;
    pthread_mutex_unlock((v2 + 168));

    CheckOutHandleDebug();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ICEDisableCandidatePairFilter_cold_1();
    }
  }
}

void ICEInterfaceNeedsUpdateExternalMapping(uint64_t a1, _DWORD *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *&v18[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[1] = v2;
  *v18 = v2;
  v17[0] = v2;
  if (a2)
  {
    *a2 = 0;
    v4 = CheckInHandleDebug();
    if (v4)
    {
      v5 = v4;
      pthread_mutex_lock((v4 + 96));
      v6 = *(v5 + 160);
      if (v6)
      {
        while ((*(v6 + 8) & 1) != 0 && !*(v6 + 232) || IsIPPORTValid(v6 + 96))
        {
          v6 = *(v6 + 240);
          if (!v6)
          {
            goto LABEL_19;
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v9 = 136315906;
            v10 = v7;
            v11 = 2080;
            v12 = "ICEInterfaceNeedsUpdateExternalMapping";
            v13 = 1024;
            v14 = 3535;
            v15 = 2080;
            v16 = IPPORTToStringWithSize(v17, v6 + 8, 0x36uLL);
            _os_log_impl(&dword_23D497000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: needs to update external mapping on interface [%s]", &v9, 0x26u);
          }
        }

        *a2 = 1;
      }

LABEL_19:
      pthread_mutex_unlock((v5 + 96));
      CheckOutHandleDebug();
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEInterfaceNeedsUpdateExternalMapping_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ICEInterfaceNeedsUpdateExternalMapping_cold_2();
    }
  }
}

uint64_t ICESetEnableLoopbackInterface(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148859906;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 96));
  *(v4 + 728) = a2;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316418;
      v9 = v5;
      v10 = 2080;
      v11 = "ICESetEnableLoopbackInterface";
      v12 = 1024;
      v13 = 3556;
      v14 = 1024;
      v15 = 3556;
      v16 = 2048;
      v17 = v4;
      v18 = 1024;
      v19 = a2;
      _os_log_impl(&dword_23D497000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICESetEnableLoopbackInterface pICEInfo=%p enableLoopbackInterface=%d", &v8, 0x32u);
    }
  }

  pthread_mutex_unlock((v4 + 96));
  CheckOutHandleDebug();
  return 0;
}