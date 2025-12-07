const void *AVE_ISP_CopyCFMetadata(__CVBuffer *a1)
{
  v1 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Value = CFDictionaryGetValue(v1, *MEMORY[0x29EDBFF98]);
  v4 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v2);
  return v4;
}

uint64_t AVE_ISP_GetMetadata(__CVBuffer *a1, double *a2)
{
  if (a1 && a2)
  {
    v4 = AVE_ISP_CopyCFMetadata(a1);
    if (v4)
    {
      v5 = v4;
      Metadata = AVE_ISP_RetrieveMetadata(v4, a2);
      CFRelease(v5);
      return Metadata;
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x37u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x37u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 55, LevelStr, "AVE_ISP_GetMetadata", 240, "pImgBuf != __null && pData != __null", a1, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 55);
    }

    return 4294966295;
  }
}

uint64_t AVE_Log_UpdateConf(unsigned int a1, int a2)
{
  if (a1 > 0xFF)
  {
    return 4294966295;
  }

  if (a2)
  {
    v4 = a2;
    v5 = a1;
    v6 = a2;
  }

  else
  {
    v4 = 0;
    v5 = a1;
    v6 = *(&gs_sAVE_Log_Default + a1);
  }

  gs_sAVE_Log[v5] = v6;
  if ((byte_2A1899DF0 & 0xFu) >= 7)
  {
    v7 = byte_2A1899DF0;
    CurrTime = AVE_GetCurrTime();
    if ((v7 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d %d 0x%x\n", CurrTime, 64, "VERB", "AVE_Log_UpdateConf", 116, a1, v4);
      CurrTime = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s:%d %d 0x%x", CurrTime, 64, "VERB", "AVE_Log_UpdateConf", 116, a1, v4);
  }

  return 0;
}

BOOL AVE_Log_CheckLevel(unsigned int a1, int a2)
{
  if (a2 >= 0)
  {
    LOBYTE(v2) = a2;
  }

  else
  {
    v2 = -a2;
  }

  return a1 < 5 || a1 <= 0xFF && (v2 & 0xFu) <= (gs_sAVE_Log[a1] & 0xFu);
}

uint64_t AVE_Log_CheckConsole(unsigned int a1)
{
  if (a1 < 2)
  {
    return 1;
  }

  if (a1 <= 0xFF)
  {
    return (gs_sAVE_Log[a1] >> 4) & 1;
  }

  return 0;
}

void *AVE_Log_GetLevelStr(int a1)
{
  if (a1 >= 0)
  {
    LOBYTE(v1) = a1;
  }

  else
  {
    v1 = -a1;
  }

  v2 = v1 & 0xF;
  if (v2 > 8)
  {
    return &unk_295613FE7;
  }

  else
  {
    return *(&gsc_piaAVE_Log_LevelStr + v2);
  }
}

uint64_t AVE_Log_Init(void)
{
  if (!gs_iAVE_Timestamp)
  {
    *&v0 = 0x505050505050505;
    *(&v0 + 1) = 0x505050505050505;
    xmmword_2A1899CC8 = v0;
    unk_2A1899CD8 = v0;
    xmmword_2A1899D88 = v0;
    unk_2A1899D98 = v0;
    xmmword_2A1899D68 = v0;
    unk_2A1899D78 = v0;
    xmmword_2A1899D48 = v0;
    unk_2A1899D58 = v0;
    xmmword_2A1899D28 = v0;
    unk_2A1899D38 = v0;
    xmmword_2A1899D08 = v0;
    unk_2A1899D18 = v0;
    xmmword_2A1899CE8 = v0;
    unk_2A1899CF8 = v0;
    gs_sAVE_Log_Default = v0;
    unk_2A1899CB8 = v0;
    BYTE4(gs_sAVE_Log_Default) = 6;
    BYTE12(xmmword_2A1899CC8) = 6;
    byte_2A1899CE5 = 6;
    *(&gs_sAVE_Log_Default + 11) = 1542;
    BYTE5(xmmword_2A1899D08) = 6;
    BYTE1(xmmword_2A1899CE8) = 6;
    dword_2A1899DAC = 20000;
    dword_2A1899DA8 = 25;
    AVE_MemCpyV2V(gs_sAVE_Log, &gs_sAVE_Log_Default, 256);
    dword_2A1899EB4 = dword_2A1899DAC;
    dword_2A1899EB0 = dword_2A1899DA8;
    gs_iAVE_Timestamp = 1;
  }

  return 0;
}

uint64_t AVE_Log_UpdateConsole(int a1)
{
  if ((byte_2A1899DF0 & 0xEu) > 5)
  {
    v2 = byte_2A1899DF0;
    CurrTime = AVE_GetCurrTime();
    if ((v2 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Enter %d\n", CurrTime, 64, "INFO", "AVE_Log_UpdateConsole", a1);
      CurrTime = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d", CurrTime, 64, "INFO", "AVE_Log_UpdateConsole", a1);
  }

  for (i = 0; i != 256; ++i)
  {
    gs_sAVE_Log[i] = gs_sAVE_Log[i] & 0xEF | (16 * ((gs_sAVE_Log[i] & 0xF) <= a1));
  }

  gs_iAVE_Timestamp = AVE_GetAbsTime();
  AVE_Log_Print();
  if ((byte_2A1899DF0 & 0xEu) >= 6)
  {
    v5 = byte_2A1899DF0;
    v6 = AVE_GetCurrTime();
    if ((v5 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Exit %d %d\n", v6, 64, "INFO", "AVE_Log_UpdateConsole", a1, 0);
      v6 = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s Exit %d %d", v6, 64, "INFO", "AVE_Log_UpdateConsole", a1, 0);
  }

  return 0;
}

void AVE_Log_Print()
{
  if ((byte_2A1899DF0 & 0xFu) >= 7)
  {
    v0 = byte_2A1899DF0;
    CurrTime = AVE_GetCurrTime();
    if ((v0 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d %llu\n", CurrTime, 64, "VERB", "AVE_Log_Print", 85, gs_iAVE_Timestamp);
      CurrTime = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s:%d %llu", CurrTime, 64, "VERB", "AVE_Log_Print", 85, gs_iAVE_Timestamp);
  }

  for (i = 0; i != 256; ++i)
  {
    if ((byte_2A1899DF0 & 0xFu) >= 7)
    {
      v3 = byte_2A1899DF0;
      v4 = AVE_GetCurrTime();
      v5 = gs_sAVE_Log[i];
      if ((v3 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: Log Cfg: %3d = 0x%02x\n", v4, 64, "VERB", i, v5);
        v4 = AVE_GetCurrTime();
        v5 = gs_sAVE_Log[i];
      }

      syslog(3, "%lld %d AVE %s: Log Cfg: %3d = 0x%02x", v4, 64, "VERB", i, v5);
    }
  }

  if ((byte_2A1899DF0 & 0xFu) >= 7)
  {
    v6 = byte_2A1899DF0;
    v7 = AVE_GetCurrTime();
    if ((v6 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: Log Cfg: %d (us) %d%%\n", v7, 64, "VERB", dword_2A1899EB4, dword_2A1899EB0);
      v7 = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: Log Cfg: %d (us) %d%%", v7, 64, "VERB", dword_2A1899EB4, dword_2A1899EB0);
  }
}

uint64_t AVE_Log_Load(void *a1, uint64_t a2)
{
  result = 4294966295;
  if (a1)
  {
    if (a2)
    {
      *a1 = gs_iAVE_Timestamp;
      AVE_MemCpyV2V(a2, gs_sAVE_Log, 256);
      result = 0;
      *(a2 + 256) = dword_2A1899EB0;
      *(a2 + 260) = dword_2A1899EB4;
    }
  }

  return result;
}

uint64_t AVE_Log_PresetConf(unsigned __int8 *a1, int a2, int a3)
{
  for (i = 5; i != 256; ++i)
  {
    v7 = i >> 3;
    if (v7 >= a2)
    {
      break;
    }

    if ((a1[v7] >> (i & 7)))
    {
      AVE_Log_UpdateConf(i, a3);
    }
  }

  return 0;
}

uint64_t AVE_Log_PresetCfg(unsigned int a1, unint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  *v15 = 0u;
  v16 = 0u;
  if ((byte_2A1899DF0 & 0xEu) >= 6)
  {
    v5 = byte_2A1899DF0;
    CurrTime = AVE_GetCurrTime();
    if ((v5 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Enter 0x%x 0x%llx\n", CurrTime, 64, "INFO", "AVE_Log_PresetCfg", a1, a2);
      CurrTime = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s Enter 0x%x 0x%llx", CurrTime, 64, "INFO", "AVE_Log_PresetCfg", a1, a2);
  }

  v7 = (a1 >> 2) & 0x3FFFFFC0;
  v8 = v7 - 64;
  if (a2)
  {
    for (i = 0; i != 64; ++i)
    {
      if ((v8 | i) > 255)
      {
        break;
      }

      v15[(v8 | i) / 8] |= ((a2 >> i) & 1) << ((v8 | i) - (v2 & 0xF8));
    }

    AVE_Log_PresetConf(v15, 32, a1);
  }

  else
  {
    v10 = 320 - v7;
    if ((v8 - 192) >= 0xFFFFFFFFFFFFFF00)
    {
      v11 = 64;
    }

    else
    {
      v11 = v10;
    }

    AVE_MemCpyV2V(&gs_sAVE_Log[v8], &gs_sAVE_Log_Default + v8, v11);
  }

  if ((a1 & 0xFFFFFEFF) != 0)
  {
    gs_iAVE_Timestamp = AVE_GetAbsTime();
  }

  AVE_Log_Print();
  if ((byte_2A1899DF0 & 0xEu) >= 6)
  {
    v12 = byte_2A1899DF0;
    v13 = AVE_GetCurrTime();
    if ((v12 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Exit 0x%x 0x%llx %d\n", v13, 64, "INFO", "AVE_Log_PresetCfg", a1, a2, 0);
      v13 = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s Exit 0x%x 0x%llx %d", v13, 64, "INFO", "AVE_Log_PresetCfg", a1, a2, 0);
  }

  return 0;
}

uint64_t AVE_Log_ReadCfg(const char *a1)
{
  v78 = *MEMORY[0x29EDCA608];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  *v66 = 0u;
  v67 = 0u;
  memset(&v65, 0, sizeof(v65));
  v64 = 0;
  v63 = 0;
  gsc_piaAVE_Log_DefaultCfgFilePath[0] = 0;
  qword_2A1899C90 = 0;
  if (a1)
  {
    gsc_piaAVE_Log_DefaultCfgFilePath[0] = a1;
  }

  TemporayPath = AVE_GetTemporayPath(v66, 192);
  if (TemporayPath >= 1)
  {
    AVE_SNPrintf(&v66[TemporayPath], 192 - TemporayPath, "%s", "ave_log.cfg");
    qword_2A1899C90 = v66;
  }

  for (i = 0; i != 4; ++i)
  {
    v3 = gsc_piaAVE_Log_DefaultCfgFilePath[i];
    if (!v3)
    {
      continue;
    }

    if (stat(gsc_piaAVE_Log_DefaultCfgFilePath[i], &v65))
    {
      if ((byte_2A1899DF0 & 8) != 0)
      {
        v4 = byte_2A1899DF0;
        CurrTime = AVE_GetCurrTime();
        if ((v4 & 0x10) != 0)
        {
          printf("%lld %d AVE %s: %s:%d log config file doesn't exist at %s\n", CurrTime, 64, "DBG", "AVE_Log_ReadCfg", 650, v3);
          AVE_GetCurrTime();
        }

        syslog(3, "%lld %d AVE %s: %s:%d log config file doesn't exist at %s");
      }

      continue;
    }

    if ((byte_2A1899DF0 & 8) != 0)
    {
      v6 = byte_2A1899DF0;
      v7 = AVE_GetCurrTime();
      if ((v6 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: %s:%d log config file is at %s\n", v7, 64, "DBG", "AVE_Log_ReadCfg", 654, v3);
        v7 = AVE_GetCurrTime();
      }

      syslog(3, "%lld %d AVE %s: %s:%d log config file is at %s", v7, 64, "DBG", "AVE_Log_ReadCfg", 654, v3);
    }

    v8 = v65.st_mtimespec.tv_nsec / 1000 + 1000000 * v65.st_mtimespec.tv_sec;
    if (v8 == gs_iAVE_Timestamp && gs_iAVE_Timestamp)
    {
      if ((byte_2A1899DF0 & 8) != 0)
      {
        v9 = byte_2A1899DF0;
        v10 = AVE_GetCurrTime();
        if ((v9 & 0x10) != 0)
        {
          printf("%lld %d AVE %s: %s:%d log config file has been updated %s %llu\n", v10, 64, "DBG", "AVE_Log_ReadCfg", 662, v3, gs_iAVE_Timestamp);
          v10 = AVE_GetCurrTime();
        }

        syslog(3, "%lld %d AVE %s: %s:%d log config file has been updated %s %llu", v10, 64, "DBG", "AVE_Log_ReadCfg", 662, v3, gs_iAVE_Timestamp);
      }

      continue;
    }

    v11 = fopen(v3, "r");
    if (v11)
    {
      v21 = v11;
      v22 = malloc_type_malloc(0x108uLL, 0x10000400BDB4DB4uLL);
      if (v22)
      {
        v23 = v22;
        *(v22 + 32) = 0;
        *(v22 + 14) = 0u;
        *(v22 + 15) = 0u;
        *(v22 + 12) = 0u;
        *(v22 + 13) = 0u;
        *(v22 + 10) = 0u;
        *(v22 + 11) = 0u;
        *(v22 + 8) = 0u;
        *(v22 + 9) = 0u;
        *(v22 + 6) = 0u;
        *(v22 + 7) = 0u;
        *(v22 + 4) = 0u;
        *(v22 + 5) = 0u;
        *(v22 + 2) = 0u;
        *(v22 + 3) = 0u;
        *v22 = 0u;
        *(v22 + 1) = 0u;
        if ((byte_2A1899DF0 & 0xFu) >= 5)
        {
          v24 = byte_2A1899DF0;
          v25 = AVE_GetCurrTime();
          if ((v24 & 0x10) != 0)
          {
            printf("%lld %d AVE %s: %s:%d used log config file is at %s %llu\n", v25, 64, "WARN", "AVE_Log_ReadCfg", 690, v3, v8);
            v25 = AVE_GetCurrTime();
          }

          syslog(3, "%lld %d AVE %s: %s:%d used log config file is at %s %llu", v25, 64, "WARN", "AVE_Log_ReadCfg", 690, v3, v8);
        }

        gs_iAVE_Timestamp = v8;
        v28 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
        if (v28)
        {
          v29 = v28;
          *(v28 + 14) = 0u;
          *(v28 + 15) = 0u;
          *(v28 + 12) = 0u;
          *(v28 + 13) = 0u;
          *(v28 + 10) = 0u;
          *(v28 + 11) = 0u;
          *(v28 + 8) = 0u;
          *(v28 + 9) = 0u;
          *(v28 + 6) = 0u;
          *(v28 + 7) = 0u;
          *(v28 + 4) = 0u;
          *(v28 + 5) = 0u;
          *(v28 + 2) = 0u;
          *(v28 + 3) = 0u;
          *v28 = 0u;
          *(v28 + 1) = 0u;
          v62 = 0;
          v30 = fgetln(v21, &v62);
          if (v30)
          {
            v31 = v30;
            v32 = v23 + 64;
            v33 = v23 + 65;
            v34 = 1;
            while (1)
            {
              v35 = *v31;
              v36 = v35 > 0x23;
              v37 = (1 << v35) & 0x800002400;
              if (!v36 && v37 != 0)
              {
                goto LABEL_55;
              }

              if (v62 >= 0x100)
              {
                if ((byte_2A1899DF0 & 0xFu) >= 5)
                {
                  v39 = byte_2A1899DF0;
                  v40 = AVE_GetCurrTime();
                  if ((v39 & 0x10) != 0)
                  {
                    printf("%lld %d AVE %s: %s:%d Line too long, skipping %s:%lld\n", v40, 64, "WARN", "AVE_Log_ReadCfg", 732, v3, v34);
                    v40 = AVE_GetCurrTime();
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d Line too long, skipping %s:%lld", v40, 64, "WARN", "AVE_Log_ReadCfg", 732, v3, v34);
                }

                goto LABEL_55;
              }

              AVE_StrNCpy(v29, v31, v62 + 1);
              LODWORD(v64) = 15;
              v63 = 0;
              if (sscanf(v29, "LOG_ID_%d=%d%c", &v64 + 4, &v64, &v63) >= 2)
              {
                v41 = v64;
                if ((v63 & 0xDF) == 0x43)
                {
                  v41 = v64 | 0x10;
                }

                *(v23 + SHIDWORD(v64)) = v41;
                goto LABEL_55;
              }

              if (sscanf(v29, "THRESHOLD=%d", v32) != 1)
              {
                break;
              }

              v42 = &dword_2A1899DA8;
              if (*v32)
              {
                v42 = v32;
              }

              dword_2A1899EB0 = *v42;
              if ((byte_2A1899DF0 & 0xFu) < 7)
              {
                goto LABEL_55;
              }

              v43 = v32;
              v44 = byte_2A1899DF0;
              v45 = AVE_GetCurrTime();
              v61 = v43;
              if ((v44 & 0x10) == 0)
              {
                syslog(3, "%lld %d AVE %s: %s:%d Read threshold %d");
LABEL_82:
                v32 = v61;
                goto LABEL_55;
              }

              printf("%lld %d AVE %s: %s:%d Read threshold %d\n", v45, 64, "VERB", "AVE_Log_ReadCfg", 757, *v43);
              v49 = AVE_GetCurrTime();
              syslog(3, "%lld %d AVE %s: %s:%d Read threshold %d", v49, 64, "VERB", "AVE_Log_ReadCfg", 757, *v43);
              v32 = v43;
LABEL_55:
              v62 = 0;
              v31 = fgetln(v21, &v62);
              ++v34;
              if (!v31)
              {
                goto LABEL_83;
              }
            }

            if (sscanf(v29, "INTERVAL=%d", v33) != 1)
            {
              goto LABEL_55;
            }

            v46 = &dword_2A1899DAC;
            if (*v33)
            {
              v46 = v23 + 65;
            }

            dword_2A1899EB4 = *v46;
            if ((byte_2A1899DF0 & 0xFu) < 7)
            {
              goto LABEL_55;
            }

            v61 = v32;
            v47 = byte_2A1899DF0;
            v48 = AVE_GetCurrTime();
            if ((v47 & 0x10) != 0)
            {
              printf("%lld %d AVE %s: %s:%d Read interval %d (us)\n", v48, 64, "VERB", "AVE_Log_ReadCfg", 764, *v33);
              AVE_GetCurrTime();
            }

            syslog(3, "%lld %d AVE %s: %s:%d Read interval %d (us)");
            goto LABEL_82;
          }

LABEL_83:
          if (ferror(v21))
          {
            if ((byte_2A1899DF0 & 0xC) != 0)
            {
              v50 = byte_2A1899DF0;
              v51 = AVE_GetCurrTime();
              v52 = __error();
              v53 = strerror(*v52);
              if ((v50 & 0x10) != 0)
              {
                printf("%lld %d AVE %s: %s:%d error while reading config file: %s\n", v51, 64, "ERR", "AVE_Log_ReadCfg", 713, v53);
                v58 = AVE_GetCurrTime();
                v59 = __error();
                v60 = strerror(*v59);
                syslog(3, "%lld %d AVE %s: %s:%d error while reading config file: %s", v58, 64, "ERR", "AVE_Log_ReadCfg", 713, v60);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d error while reading config file: %s", v51, 64, "ERR", "AVE_Log_ReadCfg", 713, v53);
              }
            }

            v19 = 4294966284;
          }

          else
          {
            for (j = 0; j != 256; ++j)
            {
              v57 = v23 + j;
              if (!*(v23 + j))
              {
                v57 = v23;
              }

              AVE_Log_UpdateConf(j, *v57);
            }

            AVE_Log_Print();
            v19 = 0;
          }

          free(v29);
        }

        else
        {
          if ((byte_2A1899DF0 & 0xC) != 0)
          {
            v54 = byte_2A1899DF0;
            v55 = AVE_GetCurrTime();
            if ((v54 & 0x10) != 0)
            {
              printf("%lld %d AVE %s: %s:%d %s | cannot allocate memory for line reader\n", v55, 64, "ERR", "AVE_Log_ReadCfg", 696, "pLineBuf != __null");
              v55 = AVE_GetCurrTime();
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | cannot allocate memory for line reader", v55, 64, "ERR", "AVE_Log_ReadCfg", 696, "pLineBuf != __null");
          }

          v19 = 4294966293;
        }

        free(v23);
      }

      else
      {
        if ((byte_2A1899DF0 & 0xC) != 0)
        {
          v26 = byte_2A1899DF0;
          v27 = AVE_GetCurrTime();
          if ((v26 & 0x10) != 0)
          {
            printf("%lld %d AVE %s: %s:%d %s | cannot allocate memory for log config\n", v27, 64, "ERR", "AVE_Log_ReadCfg", 686, "pTmpLog != __null");
            v27 = AVE_GetCurrTime();
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | cannot allocate memory for log config", v27, 64, "ERR", "AVE_Log_ReadCfg", 686, "pTmpLog != __null");
        }

        v19 = 4294966293;
      }

      fclose(v21);
      return v19;
    }

    if ((byte_2A1899DF0 & 8) != 0)
    {
      v12 = byte_2A1899DF0;
      v13 = AVE_GetCurrTime();
      v14 = __error();
      v15 = strerror(*v14);
      if ((v12 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: %s:%d log config file cannot be opened %s : %s\n", v13, 64, "DBG", "AVE_Log_ReadCfg", 673, v3, v15);
        v13 = AVE_GetCurrTime();
        v16 = __error();
        strerror(*v16);
      }

      syslog(3, "%lld %d AVE %s: %s:%d log config file cannot be opened %s : %s", v13);
    }
  }

  if ((byte_2A1899DF0 & 8) != 0)
  {
    v17 = byte_2A1899DF0;
    v18 = AVE_GetCurrTime();
    if ((v17 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d cannot find available config file\n", v18, 64, "DBG", "AVE_Log_ReadCfg", 679);
      v18 = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s:%d cannot find available config file", v18, 64, "DBG", "AVE_Log_ReadCfg", 679);
  }

  return 4294966288;
}

uint64_t AVE_Log_Config(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 44))
    {
      v2 = (result + 44);
    }

    else
    {
      v2 = 0;
    }

    result = AVE_Log_ReadCfg(v2);
    v3 = 256;
    for (i = 2; i != 10; i += 2)
    {
      if ((*v1 & v3) != 0)
      {
        AVE_Log_PresetCfg(v3 + 7, *&v1[i]);
        result = 0;
      }

      v3 += 256;
    }

    v5 = v1[10];
    if (v5)
    {
      AVE_Log_UpdateConsole(v5);
      return 0;
    }
  }

  return result;
}

_DWORD *AVE_DevCap_SearchRange_Find(unsigned int *a1, int a2)
{
  v2 = *a1;
  if (v2 < 1)
  {
    return 0;
  }

  for (result = a1 + 1; *result != a2; result += 4)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_CreateUSurface(uint64_t a1, const char *a2, IOSurfaceID a3, uint64_t a4, AVE_USurface **a5)
{
  if (a3 && a5)
  {
    *a5 = 0;
    operator new();
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v10 = AVE_Log_CheckConsole(0x4Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p\n", CurrTime, 76, LevelStr, "AVE_CreateUSurface", 64, "SID != 0 && ppSurface != __null", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v13, 76, v15, "AVE_CreateUSurface", 64);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", CurrTime, 76, LevelStr, "AVE_CreateUSurface", 64);
    }
  }

  return 4294966295;
}

uint64_t AVE_CreateUSurface(uint64_t a1, const char *a2, int a3, __IOSurface **a4, AVE_USurface **a5)
{
  if (a3 >= 1 && a5)
  {
    *a5 = 0;
    operator new();
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v10 = AVE_Log_CheckConsole(0x4Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p\n", CurrTime, 76, LevelStr, "AVE_CreateUSurface", 122, "size > 0 && ppSurface != __null", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v13, 76, v15, "AVE_CreateUSurface", 122);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", CurrTime, 76, LevelStr, "AVE_CreateUSurface", 122);
    }
  }

  return 4294966295;
}

uint64_t AVE_DestroyUSurface(AVE_USurface *a1)
{
  if (a1)
  {
    v2 = AVE_USurface::Destroy(a1);
    AVE_USurface::~AVE_USurface(a1);
    MEMORY[0x29C24E920]();
    return v2;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v4 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", CurrTime, 76, LevelStr, "AVE_DestroyUSurface", 174, "pSurface != __null", 0);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", CurrTime);
    }

    return 4294966295;
  }
}

uint64_t AVE_CreateInUSurfaces(const void *a1, uint64_t a2, const void *a3)
{
  if (a1 && a3)
  {
    return 0;
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v7 = AVE_Log_CheckConsole(0x4Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p\n", CurrTime, 76, LevelStr, "AVE_CreateInUSurfaces", 219, "pSInfoSet != __null && pSet != __null", a1, a2, a3);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v10, 76, v11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", CurrTime, 76, LevelStr);
    }
  }

  AVE_DestroyInUSurfaces(a3);
  return 4294966295;
}

uint64_t AVE_DestroyInUSurfaces(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v2 = AVE_Log_CheckConsole(0x4Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", CurrTime, 76, LevelStr, "AVE_DestroyInUSurfaces", 245, "pSet != __null", 0);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", CurrTime);
  }

  return 4294966295;
}

uint64_t AVE_RetrieveDataUSurfaces(AVE_USurface **a1, _DWORD *a2)
{
  v4 = *a1;
  if (v4)
  {
    *a2 = AVE_USurface::GetID(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a2[1] = AVE_USurface::GetID(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    a2[2] = AVE_USurface::GetID(v6);
  }

  v7 = a1[3];
  if (v7)
  {
    a2[3] = AVE_USurface::GetID(v7);
  }

  v8 = a1[4];
  if (v8)
  {
    a2[4] = AVE_USurface::GetID(v8);
  }

  v9 = a1[5];
  if (v9)
  {
    a2[5] = AVE_USurface::GetID(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    a2[6] = AVE_USurface::GetID(v10);
  }

  v11 = 0;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = a1[v11 + 7];
    if (v14)
    {
      a2[v11 + 7] = AVE_USurface::GetID(v14);
    }

    v12 = 0;
    v11 = 1;
  }

  while ((v13 & 1) != 0);
  v15 = a1[9];
  if (v15)
  {
    a2[9] = AVE_USurface::GetID(v15);
  }

  v16 = a1[10];
  if (v16)
  {
    a2[10] = AVE_USurface::GetID(v16);
  }

  v17 = a1[11];
  if (v17)
  {
    a2[11] = AVE_USurface::GetID(v17);
  }

  return 0;
}

uint64_t AVE_CreateDataUSurfaces(_DWORD *a1, uint64_t a2, uint64_t a3, AVE_USurface **a4, IOSurfaceID a5)
{
  v37 = *MEMORY[0x29EDCA608];
  v35 = 0u;
  v36 = 0u;
  *v33 = 0u;
  v34 = 0u;
  if (!a1 || !a4)
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p\n", CurrTime, 76, LevelStr, "AVE_CreateDataUSurfaces", 352, "pSInfoSet != __null && pSet != __null", a1, a2, a4);
        v20 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v20, 76, v32);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", CurrTime, 76, LevelStr);
      }
    }

    v21 = 4294966295;
    goto LABEL_24;
  }

  SurfaceCfg = AVE_GetSurfaceCfg(4);
  v11 = a1[14];
  v10 = a1[15];
  v12 = SurfaceCfg[1];
  AVE_SNPrintf(v33, 64, "%s-%lld", *SurfaceCfg, a2);
  if (v11 >= 1)
  {
    v14 = a4 + 1;
    v13 = a4[1];
    if (v13)
    {
      Size = AVE_USurface::GetSize(v13);
      v16 = *v14;
      if (Size >= v10)
      {
        if (v16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        AVE_DestroyUSurface(v16);
        *v14 = 0;
      }
    }

    USurface = AVE_CreateUSurface(a2, v33, v10, v12, a4 + 1);
    if (USurface)
    {
      v21 = USurface;
      if (!AVE_Log_CheckLevel(0x4Cu, 4))
      {
LABEL_24:
        AVE_DestroyDataUSurfaces(a4);
        return v21;
      }

      v23 = AVE_Log_CheckConsole(0x4Cu);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create surface %s %d\n", v24, 76, v25, "AVE_CreateDataUSurfaces", 372, "ret == 0", v33, v21);
        v26 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v26, 76);
        goto LABEL_24;
      }

LABEL_23:
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v24, 76);
      goto LABEL_24;
    }
  }

LABEL_17:
  if (a5)
  {
    v27 = AVE_GetSurfaceCfg(5);
    v21 = AVE_CreateUSurface(a2, v33, a5, v27[1], a4);
    if (v21)
    {
      if (!AVE_Log_CheckLevel(0x4Cu, 4))
      {
        goto LABEL_24;
      }

      v28 = AVE_Log_CheckConsole(0x4Cu);
      v24 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create surface %s %d\n", v24, 76, v29, "AVE_CreateDataUSurfaces", 386, "ret == 0", v33, v21);
        v30 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v30, 76);
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v21 = 0;
    *a4 = 0;
  }

  return v21;
}

uint64_t AVE_DestroyDataUSurfaces(uint64_t a1)
{
  if (a1)
  {
    result = *a1;
    if (result)
    {
      result = AVE_DestroyUSurface(result);
      *a1 = 0;
    }

    if (*(a1 + 8))
    {
      result = AVE_DestroyUSurface(*(a1 + 8));
      *(a1 + 8) = 0;
    }

    if (*(a1 + 16))
    {
      result = AVE_DestroyUSurface(*(a1 + 16));
      *(a1 + 16) = 0;
    }

    if (*(a1 + 24))
    {
      result = AVE_DestroyUSurface(*(a1 + 24));
      *(a1 + 24) = 0;
    }

    if (*(a1 + 32))
    {
      result = AVE_DestroyUSurface(*(a1 + 32));
      *(a1 + 32) = 0;
    }

    if (*(a1 + 40))
    {
      result = AVE_DestroyUSurface(*(a1 + 40));
      *(a1 + 40) = 0;
    }

    if (*(a1 + 48))
    {
      result = AVE_DestroyUSurface(*(a1 + 48));
      *(a1 + 48) = 0;
    }

    v3 = 0;
    v4 = a1 + 56;
    v5 = 1;
    do
    {
      v6 = v5;
      if (*(v4 + 8 * v3))
      {
        result = AVE_DestroyUSurface(*(v4 + 8 * v3));
        *(v4 + 8 * v3) = 0;
      }

      v5 = 0;
      v3 = 1;
    }

    while ((v6 & 1) != 0);
    if (*(a1 + 72))
    {
      result = AVE_DestroyUSurface(*(a1 + 72));
      *(a1 + 72) = 0;
    }

    if (*(a1 + 80))
    {
      result = AVE_DestroyUSurface(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    if (*(a1 + 88))
    {
      result = AVE_DestroyUSurface(*(a1 + 88));
      *(a1 + 88) = 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v7 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", CurrTime, 76, LevelStr, "AVE_DestroyDataUSurfaces", 414, "pSet != __null", 0);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", CurrTime);
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_UC_Verify(void)
{
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v0 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", CurrTime, 35, LevelStr, "AVE_UC_Verify");
      v3 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 35, v18, "AVE_UC_Verify");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", CurrTime, 35, LevelStr, "AVE_UC_Verify");
    }
  }

  v4 = IOServiceMatching("AppleAVE2Driver");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v4);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    v6 = 0;
    v7 = 6;
  }

  else
  {
    v7 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x23u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | can not find matched driver\n", v9, 35, v10, "AVE_UC_Verify", 26, "pService != 0");
        v11 = AVE_GetCurrTime();
        v7 = 4;
        v12 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver", v11, 35, v12, "AVE_UC_Verify", 26, "pService != 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver", v9, 35, v10, "AVE_UC_Verify", 26, "pService != 0");
        v7 = 4;
      }
    }

    v6 = 4294966291;
  }

  if (AVE_Log_CheckLevel(0x23u, v7))
  {
    v13 = AVE_Log_CheckConsole(0x23u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(v7);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v14, 35, v15, "AVE_UC_Verify", v6);
      v16 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(v7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v16, 35, v19, "AVE_UC_Verify", v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v14, 35, v15, "AVE_UC_Verify", v6);
    }
  }

  return v6;
}

uint64_t AVE_UC_Create(uint32_t a1, void *a2)
{
  connect = 0;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v4 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %d %p\n", CurrTime, 35, LevelStr, "AVE_UC_Create", a1, a2);
      v7 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v7, 35, v34, "AVE_UC_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", CurrTime, 35, LevelStr, "AVE_UC_Create", a1, a2);
    }
  }

  if (a2)
  {
    v8 = IOServiceMatching("AppleAVE2Driver");
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      kdebug_trace();
      v11 = IOServiceOpen(v10, *MEMORY[0x29EDCA6B0], a1, &connect);
      v12 = AVE_IOReturn2RetCode(v11);
      kdebug_trace();
      if (v12)
      {
        if (AVE_Log_CheckLevel(0x23u, 4))
        {
          v13 = AVE_Log_CheckConsole(0x23u);
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
          if (v13)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d\n", v14, 35, v15, "AVE_UC_Create", 77, "ret == 0", a1, a2, v11, v12);
            v16 = AVE_GetCurrTime();
            v35 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d", v16, 35, v35);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d", v14, 35, v15);
          }
        }
      }

      else
      {
        *a2 = connect;
      }

      IOObjectRelease(v10);
      if (v12)
      {
        v28 = connect == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if (v12)
        {
          v17 = 4;
        }

        else
        {
          v17 = 6;
        }
      }

      else
      {
        IOServiceClose(connect);
        connect = 0;
        v17 = 4;
      }
    }

    else
    {
      v17 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v23 = AVE_Log_CheckConsole(0x23u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p\n", v24, 35, v25, "AVE_UC_Create", 67, "pService != 0", a1, a2);
          v26 = AVE_GetCurrTime();
          v17 = 4;
          v27 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p", v26, 35, v27, "AVE_UC_Create", 67, "pService != 0", a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p", v24, 35, v25, "AVE_UC_Create", 67, "pService != 0", a1, a2);
          v17 = 4;
        }
      }

      v12 = 4294966291;
    }
  }

  else
  {
    v17 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x23u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v19, 35, v20, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
        v21 = AVE_GetCurrTime();
        v17 = 4;
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v21, 35, v22, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v19, 35, v20, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
        v17 = 4;
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v17))
  {
    v29 = AVE_Log_CheckConsole(0x23u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v17);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d\n", v30, 35, v31, "AVE_UC_Create", a1, a2, v12);
      v32 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v17);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v30);
    }
  }

  return v12;
}

uint64_t AVE_UC_Destroy(void *a1)
{
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 35, LevelStr, "AVE_UC_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 35, v22, "AVE_UC_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 35, LevelStr, "AVE_UC_Destroy", a1);
    }
  }

  if (a1)
  {
    kdebug_trace();
    v6 = IOServiceClose(a1);
    v7 = AVE_IOReturn2RetCode(v6);
    if (v7)
    {
      v8 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v9 = AVE_Log_CheckConsole(0x23u);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d\n", v10, 35, v11, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
          v12 = AVE_GetCurrTime();
          v8 = 4;
          v13 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d", v12, 35, v13, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d", v10, 35, v11, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
          v8 = 4;
        }
      }
    }

    else
    {
      kdebug_trace();
      a1 = 0;
      v8 = 6;
    }
  }

  else
  {
    v8 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v14 = AVE_Log_CheckConsole(0x23u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 35, v16, "AVE_UC_Destroy", 121, "pUC != __null", 0);
        v15 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    a1 = 0;
    v7 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v8))
  {
    v17 = AVE_Log_CheckConsole(0x23u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(v8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v18, 35, v19, "AVE_UC_Destroy", a1, v7);
      v20 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(v8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v20, 35, v23, "AVE_UC_Destroy", a1, v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v18, 35, v19, "AVE_UC_Destroy", a1, v7);
    }
  }

  return v7;
}

uint64_t AVE_UC_Open(const void *a1, const void *a2, void *a3)
{
  outputStructCnt = 40;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Open", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 1u, a2, 0x7A0uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x\n", v13, 35, v14, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v9);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x", v15, 35, v16, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v9);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x", v13, 35, v14, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v9);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x27)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Open", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_UC_Close(const void *a1, const void *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Close", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 2u, a2, 0x28uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Close", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_UC_Config(const void *a1, const void *a2, const void *a3, void *a4)
{
  v40 = *MEMORY[0x29EDCA608];
  v38 = 0u;
  v39 = 0u;
  *reference = 0u;
  v37 = 0u;
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v8 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Config", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", CurrTime, 35);
  }

  if (a1 && a2 && a3 && a4)
  {
    kdebug_trace();
    v11 = IOConnectCallAsyncMethod(a1, 3u, a2, reference, 8u, 0, 0, a3, 0x38uLL, 0, 0, a4, &outputStructCnt);
    v12 = AVE_IOReturn2RetCode(v11);
    kdebug_trace();
    if (v12)
    {
      v13 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v14 = AVE_Log_CheckConsole(0x23u);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d\n", v15, 35, v16, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v11, v12);
          v17 = AVE_GetCurrTime();
          v13 = 4;
          v18 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d", v17, 35, v18, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v11, v12);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v11, v12);
          v13 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v13 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v29 = AVE_Log_CheckConsole(0x23u);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v30, 35, v31, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
          v32 = AVE_GetCurrTime();
          v13 = 4;
          v33 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v30, 35, v31, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
          v13 = 4;
        }
      }

      v12 = 4294966281;
    }

    else
    {
      v12 = 0;
      v13 = 6;
    }
  }

  else
  {
    v13 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v19 = AVE_Log_CheckConsole(0x23u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v20, 35, v21, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
        v22 = AVE_GetCurrTime();
        v13 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 35, v23, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 35, v21, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
        v13 = 4;
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v13))
  {
    v24 = AVE_Log_CheckConsole(0x23u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v13);
    if (v24)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v25, 35, v26, "AVE_UC_Config", a1, a2, a3, a4, v12);
      v27 = AVE_GetCurrTime();
      outputCnt = AVE_Log_GetLevelStr(v13);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v27, 35, outputCnt);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v25, 35, v26);
    }
  }

  return v12;
}

uint64_t AVE_UC_Prepare(const void *a1, const void *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Prepare", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 4u, a2, 0x1A0A0uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Prepare", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_UC_Start(const void *a1, const void *a2, void *a3)
{
  outputStructCnt = 336;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Start", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 5u, a2, 0x1A0B0uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x14F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Start", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_UC_Stop(const void *a1, const void *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Stop", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 6u, a2, 0x30uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Stop", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_UC_Process(const void *a1, const void *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Process", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 7u, a2, 0x30uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 8;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Process", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_UC_Complete(const void *a1, const void *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 7))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Complete", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 8u, a2, 0x30uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 7;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Complete", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_UC_Reset(const void *a1, const void *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Reset", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 0xAu, a2, 0x30uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Reset", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

float AVE_MultiPass::histogram_diff(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = *(a2 + 16 + v3);
    *&v8 = v7;
    v4 += v7;
    LODWORD(v8) = *(a3 + 16 + v3);
    v6 = v6 + v7 - v8;
    v9 = -v6;
    if (v6 >= 0.0)
    {
      v9 = v6;
    }

    v5 = v5 + v9;
    v3 += 4;
  }

  while (v3 != 1024);
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v10)
    {
      printf("%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d\n", CurrTime, 216, LevelStr, v5, v4);
      v13 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d", v13, 216, v15, v5, v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d", CurrTime, 216, LevelStr, v5, v4);
    }
  }

  return v5 / v4;
}

BOOL AVE_MultiPass::scene_change_detect(AVE_MultiPass *this, float a2, float a3, float a4, float a5)
{
  v5 = a3;
  v6 = a4;
  if (v5 <= 0.00272072)
  {
    v10 = a5 <= 0.96605313 && v6 > 1.34009841;
  }

  else
  {
    v7 = a2;
    if (v7 <= 71.5876885)
    {
      v8 = v7 > 26.7539587;
      v9 = 23.2484817;
    }

    else
    {
      v8 = v5 <= 0.03005953;
      v9 = 4.51769352;
    }

    v10 = v6 > v9 && v8;
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v11 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v11)
    {
      printf("%lld %d AVE %s: MP: scene_change_detect() returns %d\n", CurrTime, 216, LevelStr, v10);
      v14 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_detect() returns %d", v14, 216, v16, v10);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_detect() returns %d", CurrTime, 216, LevelStr, v10);
    }
  }

  return v10;
}

void AVE_MultiPass::accumulate_scene_info(uint64_t a1, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v7 = *(a2 + 44);
    if (v4)
    {
      printf("%lld %d AVE %s: MP: accumulate_scene_info() display_order %d\n", CurrTime, 216, LevelStr, v7);
      v8 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: accumulate_scene_info() display_order %d", v8, 216, v31, *(a2 + 44));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: accumulate_scene_info() display_order %d", CurrTime, 216, LevelStr, v7);
    }
  }

  if (*(a2 + 44) != -1)
  {
    v9 = *(a1 + 25500) + 1;
    *(a1 + 25500) = v9;
    if (*(a2 + 1200))
    {
      ++*(a1 + 25496);
    }

    v10 = *(a2 + 64);
    *(a1 + 25504) += v10;
    if (*(a2 + 52) == 2)
    {
      *(a1 + 25516) += v10;
      ++*(a1 + 25512);
      v11 = *(a2 + 1556);
      *(a1 + 25576) = *(a1 + 25576) + v11;
    }

    else
    {
      v11 = *(a2 + 1556);
    }

    v12 = (a2 + 1220);
    v13 = *(a1 + 25760) + v11;
    *(a1 + 25760) = v13;
    *&v13 = v13 / v9;
    *(a1 + 25572) = LODWORD(v13);
    *(a1 + 25584) = vaddq_f64(*(a1 + 25584), vcvtq_f64_f32(*(a2 + 1560)));
    v14 = (a2 + 1460);
    v15 = (a1 + 25664);
    v16 = 16;
    v17 = (a2 + 1460);
    do
    {
      *(v15 - 16) += *(v17 - 16);
      v18 = *v17++;
      *v15 = v18 + *v15;
      ++v15;
      --v16;
    }

    while (v16);
    v19 = *(a2 + 1572);
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        *(a1 + 25552) += *(a2 + 64);
        ++*(a1 + 25548);
      }

      else if (v19 == 3)
      {
        *(a1 + 25564) += *(a2 + 64);
        ++*(a1 + 25560);
      }
    }

    else if (*(a2 + 1572))
    {
      if (v19 == 1)
      {
        *(a1 + 25540) += *(a2 + 64);
        ++*(a1 + 25536);
      }
    }

    else
    {
      *(a1 + 25528) += *(a2 + 64);
      ++*(a1 + 25524);
    }

    if (!*(a2 + 1200))
    {
      v20 = *(a1 + 25488);
      v21 = *(v20 + 1220);
      v22 = vadd_s32(v21, *v12);
      *(v20 + 1216) = ((*(a2 + 1216) * v12->u32[0]) + (*(v20 + 1216) * v21.u32[0])) / v22.u32[0];
      *(v20 + 1220) = v22;
      *(v20 + 1228) = vaddq_s64(*(v20 + 1228), *(a2 + 1228));
      *(v20 + 1244) = vaddq_s64(*(v20 + 1244), *(a2 + 1244));
      *(v20 + 1260) += *(a2 + 1260);
      *(v20 + 1268) = vaddq_f64(*(a2 + 1268), *(v20 + 1268));
      v23 = *(a2 + 1284);
      if (v23 >= *(v20 + 1284))
      {
        v23 = *(v20 + 1284);
      }

      *(v20 + 1284) = v23;
      v24 = *(v20 + 1288);
      if (v24 < *(a2 + 1288))
      {
        v24 = *(a2 + 1288);
      }

      *(v20 + 1288) = v24;
      *(v20 + 1292) += *(a2 + 1292);
      v25 = vaddq_s64(*(v20 + 1316), *(a2 + 1316));
      *(v20 + 1300) = vaddq_s32(*(v20 + 1300), *(a2 + 1300));
      *(v20 + 1316) = v25;
      v26 = vaddq_f64(*(a2 + 1348), *(v20 + 1348));
      *(v20 + 1332) = vaddq_s64(*(v20 + 1332), *(a2 + 1332));
      *(v20 + 1348) = v26;
      v27 = vaddq_f64(*(v20 + 1380), vcvtq_f64_f32(*(a2 + 1560)));
      *(v20 + 1364) = vaddq_f64(*(a2 + 1364), *(v20 + 1364));
      *(v20 + 1380) = v27;
      v28 = (v20 + 1460);
      v29 = 16;
      do
      {
        *(v28 - 16) += *(v14 - 16);
        v30 = *v14++;
        *v28 = v30 + *v28;
        ++v28;
        --v29;
      }

      while (v29);
    }

    AVE_MultiPass::print_sc_info(a1);
  }
}

void AVE_MultiPass::print_sc_info(AVE_MultiPass *this)
{
  v2 = this + 24576;
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v3 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v3)
    {
      printf("%lld %d AVE %s: MP: seq_rc_info()\n", CurrTime, 216, LevelStr);
      v6 = AVE_GetCurrTime();
      v71 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: seq_rc_info()", v6, 216, v71);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: seq_rc_info()", CurrTime, 216, LevelStr);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v7 = AVE_Log_CheckConsole(0xD8u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(7);
    v10 = *(v2 + 230);
    if (v7)
    {
      printf("%lld %d AVE %s:  total_scenes %u\n", v8, 216, v9, v10);
      v11 = AVE_GetCurrTime();
      v72 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v11, 216, v72, *(v2 + 230));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v8, 216, v9, v10);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD8u);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(7);
    v15 = *(v2 + 231);
    if (v12)
    {
      printf("%lld %d AVE %s:  cnt_All %u\n", v13, 216, v14, v15);
      v16 = AVE_GetCurrTime();
      v73 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v16, 216, v73, *(v2 + 231));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v13, 216, v14, v15);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v17 = AVE_Log_CheckConsole(0xD8u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(7);
    v20 = *(this + 3188);
    if (v17)
    {
      printf("%lld %d AVE %s:  bits_All %llu\n", v18, 216, v19, v20);
      v21 = AVE_GetCurrTime();
      v74 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v21, 216, v74, *(this + 3188));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v18, 216, v19, v20);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v22 = AVE_Log_CheckConsole(0xD8u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(7);
    v25 = *(v2 + 237);
    if (v22)
    {
      printf("%lld %d AVE %s:  cnt_NORMAL %u\n", v23, 216, v24, v25);
      v26 = AVE_GetCurrTime();
      v75 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v26, 216, v75, *(v2 + 237));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v23, 216, v24, v25);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v27 = AVE_Log_CheckConsole(0xD8u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(7);
    v30 = *(this + 3191);
    if (v27)
    {
      printf("%lld %d AVE %s:  bits_NORMAL %llu\n", v28, 216, v29, v30);
      v31 = AVE_GetCurrTime();
      v76 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v31, 216, v76, *(this + 3191));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v28, 216, v29, v30);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v32 = AVE_Log_CheckConsole(0xD8u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(7);
    v35 = *(v2 + 240);
    if (v32)
    {
      printf("%lld %d AVE %s:  cnt_MIN %u\n", v33, 216, v34, v35);
      v36 = AVE_GetCurrTime();
      v77 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v36, 216, v77, *(v2 + 240));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v33, 216, v34, v35);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v37 = AVE_Log_CheckConsole(0xD8u);
    v38 = AVE_GetCurrTime();
    v39 = AVE_Log_GetLevelStr(7);
    v40 = *(v2 + 964);
    if (v37)
    {
      printf("%lld %d AVE %s:  bits_MIN %llu\n", v38, 216, v39, v40);
      v41 = AVE_GetCurrTime();
      v78 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v41, 216, v78, *(v2 + 964));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v38, 216, v39, v40);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v42 = AVE_Log_CheckConsole(0xD8u);
    v43 = AVE_GetCurrTime();
    v44 = AVE_Log_GetLevelStr(7);
    v45 = *(v2 + 243);
    if (v42)
    {
      printf("%lld %d AVE %s:  cnt_MAX %u\n", v43, 216, v44, v45);
      v46 = AVE_GetCurrTime();
      v79 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v46, 216, v79, *(v2 + 243));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v43, 216, v44, v45);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v47 = AVE_Log_CheckConsole(0xD8u);
    v48 = AVE_GetCurrTime();
    v49 = AVE_Log_GetLevelStr(7);
    v50 = *(this + 3194);
    if (v47)
    {
      printf("%lld %d AVE %s:  bits_MAX %llu\n", v48, 216, v49, v50);
      v51 = AVE_GetCurrTime();
      v80 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v51, 216, v80, *(this + 3194));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v48, 216, v49, v50);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v52 = AVE_Log_CheckConsole(0xD8u);
    v53 = AVE_GetCurrTime();
    v54 = AVE_Log_GetLevelStr(7);
    v55 = *(v2 + 246);
    if (v52)
    {
      printf("%lld %d AVE %s:  cnt_BLANK %u\n", v53, 216, v54, v55);
      v56 = AVE_GetCurrTime();
      v81 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v56, 216, v81, *(v2 + 246));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v53, 216, v54, v55);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v57 = AVE_Log_CheckConsole(0xD8u);
    v58 = AVE_GetCurrTime();
    v59 = AVE_Log_GetLevelStr(7);
    v60 = *(v2 + 988);
    if (v57)
    {
      printf("%lld %d AVE %s:  bits_BLANK %llu\n", v58, 216, v59, v60);
      v61 = AVE_GetCurrTime();
      v82 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  bits_BLANK %llu", v61, 216, v82, *(v2 + 988));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_BLANK %llu", v58, 216, v59, v60);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v62 = AVE_Log_CheckConsole(0xD8u);
    v63 = AVE_GetCurrTime();
    v64 = AVE_Log_GetLevelStr(7);
    if (v62)
    {
      printf("%lld %d AVE %s:  avg_qscale %f\n", v63, 216, v64, *(v2 + 249));
      v63 = AVE_GetCurrTime();
      v64 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s:  avg_qscale %f", v63, 216, v64, *(v2 + 249));
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v65 = AVE_Log_CheckConsole(0xD8u);
    v66 = AVE_GetCurrTime();
    v67 = AVE_Log_GetLevelStr(7);
    if (v65)
    {
      printf("%lld %d AVE %s:  current_complexity %lf\n", v66, 216, v67, *(this + 3198));
      v66 = AVE_GetCurrTime();
      v67 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s:  current_complexity %lf", v66, 216, v67, *(this + 3198));
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v68 = AVE_Log_CheckConsole(0xD8u);
    v69 = AVE_GetCurrTime();
    v70 = AVE_Log_GetLevelStr(7);
    if (v68)
    {
      printf("%lld %d AVE %s:  totalcplxsum %lf\n", v69, 216, v70, *(this + 3199));
      v69 = AVE_GetCurrTime();
      v70 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s:  totalcplxsum %lf", v69, 216, v70, *(this + 3199));
  }
}

_DWORD *AVE_MultiPass::scene_change_pipeline(uint64_t a1, _DWORD *a2)
{
  v59 = a2;
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      if (a2)
      {
        v7 = a2[11];
      }

      else
      {
        v7 = -1;
      }

      printf("%lld %d AVE %s: MP: scene_change_pipeline() Entry stats %p display_order %d\n", CurrTime, 216, LevelStr, a2, v7);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else if (!a2)
    {
LABEL_9:
      v8 = -1;
      goto LABEL_10;
    }

    v8 = a2[11];
LABEL_10:
    syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() Entry stats %p display_order %d", CurrTime, 216, LevelStr, a2, v8);
  }

  if (!*(a1 + 25488))
  {
    v9 = v59;
    v59[300] = 1;
    *(a1 + 25488) = v9;
    std::deque<_S_AVE_MultiPassStats *>::push_back((a1 + 25432), (a1 + 25488));
  }

  std::deque<_S_AVE_MultiPassStats *>::push_back((a1 + 25384), &v59);
  v11 = *(a1 + 25424);
  v12 = v59;
  if (v11 <= 1)
  {
    *(v59 + 151) = 0;
LABEL_19:
    v59 = 0;
    goto LABEL_20;
  }

  v13 = v11 - 2;
  v14 = *(a1 + 25416);
  v15 = v14 + v11 - 2;
  v16 = *(a1 + 25392);
  v17 = v15 >> 9;
  v18 = *(v16 + 8 * (v15 >> 9));
  v19 = v15 & 0x1FF;
  v20 = *(v18 + 8 * v19);
  if (v59[11] == -1)
  {
    v22 = *(v20 + 1208);
  }

  else
  {
    v21 = *(v59 + 304) + *(v20 + 1216);
    if (v21 < 1.0)
    {
      v21 = 1.0;
    }

    v22 = fmaxf(AVE_MultiPass::histogram_diff(v10, (v59 + 40), v20 + 160) / (v21 * 0.0019531), 0.01);
    v14 = *(a1 + 25416);
    v16 = *(a1 + 25392);
    v12 = v59;
    v17 = (v14 + v13) >> 9;
    v19 = (v14 + v13) & 0x1FF;
  }

  v28 = *(*(*(v16 + 8 * v17) + 8 * v19) + 1208);
  if (v22 >= v28)
  {
    v28 = v22;
  }

  v12[302] = v22;
  v12[303] = v28;
  if (v11 < 4)
  {
    if (v11 == 2)
    {
      v38 = *(*(v16 + ((v14 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v14 & 0x1FF));
      *(v38 + 1208) = *(*(*(v16 + (((v14 + 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + 1) & 0x1FF)) + 1208);
      AVE_MultiPass::accumulate_scene_info(a1, v38);
    }

    goto LABEL_19;
  }

  v29 = v11 + v14;
  v30 = *(*(v16 + (((v29 - 3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29 - 3) & 0x1FF));
  v58 = v30;
  v31 = *(*(*(v16 + (((v29 - 4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29 - 4) & 0x1FF)) + 1212);
  v32 = *(v30 + 1208);
  v33 = *(*(*(v16 + (((v29 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29 - 1) & 0x1FF)) + 1212);
  v34 = v32 / v31;
  v35 = v33 / v32;
  v36 = (v33 / v32) / (v32 / v31);
  if (*(v12 + 11) == -1 || *(v30 + 44) < 3u)
  {
    *(v30 + 1200) = *(v30 + 80) & 1;
    AVE_MultiPass::accumulate_scene_info(a1, v30);
    *(v30 + 1200) |= *(v30 + 44) == -1;
  }

  else
  {
    v37 = *(v30 + 36);
    *(v30 + 1200) = 0;
    if ((*(v30 + 80) & 1) != 0 || AVE_MultiPass::scene_change_detect(v10, v32, (v33 / v32) / (v32 / v31), v32 / v31, v33 / v32) || *(*(a1 + 25488) + 1220) >= ((v37 * 6.0) + 0.5))
    {
      *(v30 + 1200) = 1;
    }

    AVE_MultiPass::accumulate_scene_info(a1, v30);
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v39 = AVE_Log_CheckConsole(0xD8u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(7);
    v42 = *(v30 + 44);
    v43 = *(v30 + 1200);
    if (v39)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d\n", v40, 216, v41, v42, *(v30 + 80) & 1, v43);
      v44 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d", v44, 216, v45, *(v30 + 44), *(v30 + 80) & 1, *(v30 + 1200));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d", v40, 216, v41, v42, *(v30 + 80) & 1, v43);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v46 = AVE_Log_CheckConsole(0xD8u);
    v47 = AVE_GetCurrTime();
    v48 = AVE_Log_GetLevelStr(7);
    v49 = v31;
    v50 = v32;
    v51 = v33;
    v52 = v36;
    v53 = v34;
    v54 = v35;
    if (v46)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() m0 %f m1 %f m2 %f m0m2 %f mdpa_ratio_p %f mdpa_ratio_n %f\n", v47, 216, v48, v49, v50, v51, v52, v53, v54);
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() m0 %f m1 %f m2 %f m0m2 %f mdpa_ratio_p %f mdpa_ratio_n %f");
  }

  if (*(v30 + 1200))
  {
    std::deque<_S_AVE_MultiPassStats *>::push_back((a1 + 25432), &v58);
    *(a1 + 25488) = v58;
  }

  v55 = vaddq_s64(*(a1 + 25416), xmmword_295661BF0);
  v59 = *(*(*(a1 + 25392) + ((*(a1 + 25416) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 25416) & 0x1FFLL));
  *(a1 + 25416) = v55;
  std::deque<_S_AVE_MultiPassStats *>::__maybe_remove_front_spare[abi:ne200100](a1 + 25384, 1);
  if (v59[300])
  {
    v59 = 0;
    v56 = *(a1 + 25464);
    if (*(*(*(a1 + 25440) + ((v56 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v56 & 0x1FF)) != *(a1 + 25488))
    {
      v59 = *(*(*(a1 + 25440) + ((*(a1 + 25464) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 25464) & 0x1FFLL));
      --*(a1 + 25472);
      *(a1 + 25464) = v56 + 1;
      std::deque<_S_AVE_MultiPassStats *>::__maybe_remove_front_spare[abi:ne200100](a1 + 25432, 1);
    }
  }

LABEL_20:
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v23 = AVE_Log_CheckConsole(0xD8u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(7);
    if (v23)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p\n", v24, 216, v25, v59);
      v26 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p", v26, 216, v57, v59);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p", v24, 216, v25, v59);
    }
  }

  return v59;
}

void std::deque<_S_AVE_MultiPassStats *>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<_S_AVE_MultiPassStats *>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void AVE_MultiPass::fixup_frame_bits(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (AVE_Log_CheckLevel(0xD8u, 7))
    {
      v5 = AVE_Log_CheckConsole(0xD8u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v8 = *(a2 + 44);
      if (v5)
      {
        printf("%lld %d AVE %s: MP: F %d frame_bits %u correction_bits %d\n", CurrTime, 216, LevelStr, v8, *(a2 + 64), a3);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: MP: F %d frame_bits %u correction_bits %d", v9, 216, v10, *(a2 + 44), *(a2 + 64), a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: MP: F %d frame_bits %u correction_bits %d", CurrTime, 216, LevelStr, v8, *(a2 + 64), a3);
      }
    }

    if (a3)
    {
      v11 = *(a2 + 64);
      if (v11 + a3 >= 1)
      {
        v12 = *(a2 + 68) * a3 / v11;
        if (AVE_Log_CheckLevel(0xD8u, 7))
        {
          v13 = AVE_Log_CheckConsole(0xD8u);
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(7);
          v16 = *(a2 + 44);
          if (v13)
          {
            printf("%lld %d AVE %s: MP: F %d hdr_bits %u hdr_correction %d\n", v14, 216, v15, v16, *(a2 + 68), v12);
            v17 = AVE_GetCurrTime();
            v18 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: MP: F %d hdr_bits %u hdr_correction %d", v17, 216, v18, *(a2 + 44), *(a2 + 68), v12);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: MP: F %d hdr_bits %u hdr_correction %d", v14, 216, v15, v16, *(a2 + 68), v12);
          }
        }

        v19 = *(a2 + 68);
        v20 = *(a2 + 64) + a3;
        *(a2 + 1228) += a3;
        *(a2 + 1244) += v12;
        *(a2 + 64) = v20;
        *(a2 + 68) = v19 + v12;
        v21 = *(a2 + 52);
        if (v21 == 2)
        {
          v22 = 1252;
        }

        else
        {
          if (v21)
          {
LABEL_17:
            v23 = *(a2 + 1316);
            if (v23)
            {
              *(a2 + 1316) = v23 + a3;
            }

            v24 = *(a2 + 1324);
            if (v24)
            {
              *(a2 + 1324) = v24 + a3;
            }

            v25 = *(a2 + 1332);
            if (v25)
            {
              *(a2 + 1332) = v25 + a3;
            }

            v26 = *(a2 + 1340);
            if (v26)
            {
              *(a2 + 1340) = v26 + a3;
            }

            return;
          }

          v22 = 1260;
        }

        *(a2 + v22) += v12;
        goto LABEL_17;
      }
    }
  }
}

const void *AVE_MultiPass::enqueue_first_pass(void *a1, uint64_t a2, int a3)
{
  v6 = (a1 + 3072);
  v7 = AVE_Log_CheckLevel(0xD8u, 7);
  if (v7)
  {
    v8 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v8)
    {
      if (a2)
      {
        v11 = *(a2 + 44);
      }

      else
      {
        v11 = -1;
      }

      printf("%lld %d AVE %s: MP: enqueue_first_pass() display_order %d flush %d fixup_fifo_len %d\n", CurrTime, 216, LevelStr, v11, a3, v6[192]);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else if (!a2)
    {
LABEL_9:
      v12 = -1;
      goto LABEL_10;
    }

    v12 = *(a2 + 44);
LABEL_10:
    syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() display_order %d flush %d fixup_fifo_len %d", CurrTime, 216, LevelStr, v12, a3, v6[192]);
  }

  v13 = v6[192];
  if ((a3 & 1) == 0)
  {
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        v17 = 0;
        a1[(v6[193] == 0) + 3166] = a2;
        v18 = 2;
      }

      else
      {
        if (v13)
        {
          goto LABEL_66;
        }

        v17 = 0;
        a1[v6[193] + 3166] = a2;
        v18 = 1;
      }

      v6[192] = v18;
      goto LABEL_80;
    }

LABEL_21:
    v19 = a1 + 3166;
    AVE_MultiPass::fixup_frame_bits(v7, a1[v6[193] + 3166], *(a2 + 72));
    v20 = v6[193];
    v21 = a1[3170];
    v22 = a1[3171];
    if (v21 >= v22)
    {
      v29 = a1[3169];
      v30 = (v21 - v29) >> 3;
      if ((v30 + 1) >> 61)
      {
        goto LABEL_85;
      }

      v31 = v22 - v29;
      v32 = v31 >> 2;
      if (v31 >> 2 <= (v30 + 1))
      {
        v32 = v30 + 1;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        v33 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats *>>((a1 + 3169), v33);
      }

      v44 = (8 * v30);
      *v44 = v19[v20];
      v23 = 8 * v30 + 8;
      v45 = a1[3169];
      v46 = a1[3170] - v45;
      v47 = v44 - v46;
      memcpy(v44 - v46, v45, v46);
      v48 = a1[3169];
      a1[3169] = v47;
      a1[3170] = v23;
      a1[3171] = 0;
      if (v48)
      {
        operator delete(v48);
      }
    }

    else
    {
      *v21 = v19[v20];
      v23 = (v21 + 1);
    }

    a1[3170] = v23;
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(a1[3169], v23, &v82, (v23 - a1[3169]) >> 3);
    if (a3)
    {
      --v6[192];
      v6[193] = v6[193] == 0;
    }

    else
    {
      v49 = v6[193] == 0;
      v19[v6[193]] = a2;
      v6[193] = v49;
    }

    goto LABEL_66;
  }

  if (v13 == 2)
  {
    goto LABEL_21;
  }

  if (v13 == 1)
  {
    v24 = a1 + 3166;
    v25 = v6[193];
    v26 = a1[3170];
    v27 = a1[3171];
    if (v26 >= v27)
    {
      v34 = a1[3169];
      v35 = (v26 - v34) >> 3;
      if ((v35 + 1) >> 61)
      {
        goto LABEL_85;
      }

      v36 = v27 - v34;
      v37 = v36 >> 2;
      if (v36 >> 2 <= (v35 + 1))
      {
        v37 = v35 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats *>>((a1 + 3169), v38);
      }

      v50 = (8 * v35);
      *v50 = v24[v25];
      v28 = 8 * v35 + 8;
      v51 = a1[3169];
      v52 = a1[3170] - v51;
      v53 = v50 - v52;
      memcpy(v50 - v52, v51, v52);
      v54 = a1[3169];
      a1[3169] = v53;
      a1[3170] = v28;
      a1[3171] = 0;
      if (v54)
      {
        operator delete(v54);
      }
    }

    else
    {
      *v26 = v24[v25];
      v28 = (v26 + 1);
    }

    a1[3170] = v28;
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(a1[3169], v28, &v81, (v28 - a1[3169]) >> 3);
    --v6[192];
    v6[193] = v6[193] == 0;
    if (a2)
    {
      v55 = v6[186];
      a1[v55 + 3149] = a2;
      if (v55 < 0x10)
      {
        v56 = v55 + 1;
      }

      else
      {
        v56 = 16;
      }

      v6[186] = v56;
    }

    goto LABEL_66;
  }

  if (v13)
  {
    goto LABEL_66;
  }

  v14 = a1[3170];
  v15 = a1[3171];
  if (v14 >= v15)
  {
    v39 = a1[3169];
    v40 = (v14 - v39) >> 3;
    if (!((v40 + 1) >> 61))
    {
      v41 = v15 - v39;
      v42 = v41 >> 2;
      if (v41 >> 2 <= (v40 + 1))
      {
        v42 = v40 + 1;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF8)
      {
        v43 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      if (v43)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats *>>((a1 + 3169), v43);
      }

      v57 = (8 * v40);
      *v57 = a2;
      v16 = 8 * v40 + 8;
      v58 = a1[3169];
      v59 = a1[3170] - v58;
      v60 = v57 - v59;
      memcpy(v57 - v59, v58, v59);
      v61 = a1[3169];
      a1[3169] = v60;
      a1[3170] = v16;
      a1[3171] = 0;
      if (v61)
      {
        operator delete(v61);
      }

      goto LABEL_65;
    }

LABEL_85:
    std::vector<_S_AVE_MultiPassStats *>::__throw_length_error[abi:ne200100]();
  }

  *v14 = a2;
  v16 = (v14 + 1);
LABEL_65:
  a1[3170] = v16;
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(a1[3169], v16, &v80, (v16 - a1[3169]) >> 3);
LABEL_66:
  v62 = a1[3169];
  v63 = *v62;
  v64 = *(*v62 + 44);
  v65 = v6[226];
  if (v64 == -1 || v64 == v65)
  {
    v6[226] = v65 + 1;
    v67 = a1[3170];
    v68 = (v67 - v62) >> 3;
    if (v68 >= 2)
    {
      v69 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(v62, &v83, v68);
      v70 = (v67 - 8);
      if ((v67 - 8) == v69)
      {
        *v69 = v63;
      }

      else
      {
        *v69 = *v70;
        *v70 = v63;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(v62, (v69 + 1), &v83, v69 + 1 - v62);
      }
    }

    a1[3170] -= 8;
    v71 = AVE_MultiPass::scene_change_pipeline(a1, v63);
    v17 = v71;
    if (v71)
    {
      v72 = v6[186];
      a1[v72 + 3149] = v71;
      if (v72 < 0x10)
      {
        v73 = v72 + 1;
      }

      else
      {
        v73 = 16;
      }

      v6[186] = v73;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_80:
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v74 = AVE_Log_CheckConsole(0xD8u);
    v75 = AVE_GetCurrTime();
    v76 = AVE_Log_GetLevelStr(7);
    if (v74)
    {
      printf("%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p\n", v75, 216, v76, v17);
      v77 = AVE_GetCurrTime();
      v79 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p", v77, 216, v79, v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p", v75, 216, v76, v17);
    }
  }

  return v17;
}

void AVE_MultiPass::FinalizeSeqRcInfo(AVE_MultiPass *this)
{
  v1 = this + 24576;
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v3 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v3)
    {
      printf("%lld %d AVE %s: MP: FinalizeSeqRcInfo()\n", CurrTime, 216, LevelStr);
      v6 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: FinalizeSeqRcInfo()", v6, 216, v54);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: FinalizeSeqRcInfo()", CurrTime, 216, LevelStr);
    }
  }

  v66 = 0;
  v67 = 0;
  v7 = (v1 + 1088);
  v2.n128_u64[0] = 0;
  v8 = 16;
  v9 = 0.1875;
  v68 = 0;
  do
  {
    v10 = *(v7 - 16);
    if (v10)
    {
      v11 = *v7;
      *&v64 = *(v7 - 16);
      *(&v64 + 1) = v11 / v10;
      *(&v64 + 1) = __PAIR64__(LODWORD(v9), v2.n128_u32[0]);
      std::vector<AVE_MultiPass::_S_AVE_MPCluster>::push_back[abi:ne200100](&v66, &v64);
    }

    v2.n128_f32[0] = v9;
    v9 = v9 + 0.1875;
    ++v7;
    --v8;
  }

  while (v8);
  v12 = v66;
  v13 = v67;
  if (v66 == v67)
  {
    LODWORD(v64) = 1;
    *(&v64 + 4) = 1069547520;
    HIDWORD(v64) = 1077936128;
    std::vector<AVE_MultiPass::_S_AVE_MPCluster>::push_back[abi:ne200100](&v66, &v64);
    v12 = v66;
    v13 = v67;
  }

  v14 = v13 - v12;
  if (v14 <= 3)
  {
    do
    {
      v15 = 126 - 2 * __clz(v14);
      if (v13 == v12)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      v2 = std::__introsort<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,false>(v12, v13, &v64, v16, 1, v2);
      v12 = v66;
      v17 = v66[1];
      v18 = v66[2];
      v19 = (v18 + v17) * 0.5;
      v20 = *v66;
      v21 = *v66 >> 1;
      v2.n128_f32[0] = (v17 + v66[3]) * 0.5;
      v66[1] = v2.n128_f32[0];
      v12->n128_f32[2] = v17;
      v12->n128_u32[0] = LODWORD(v20) - (LODWORD(v20) >> 1);
      v22 = v67;
      if (v67 >= v68)
      {
        v23 = v67 - v12;
        v24 = v67 - v12;
        v25 = v24 + 1;
        if ((v24 + 1) >> 60)
        {
          std::vector<_S_AVE_MultiPassStats *>::__throw_length_error[abi:ne200100]();
        }

        v26 = v68 - v12;
        if ((v68 - v12) >> 3 > v25)
        {
          v25 = v26 >> 3;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF0)
        {
          v27 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<AVE_MultiPass::_S_AVE_MPCluster>>(&v66, v27);
        }

        v28 = 16 * v24;
        *v28 = v21;
        *(v28 + 4) = v19;
        *(v28 + 8) = v18;
        *(v28 + 12) = v17;
        v13 = (16 * v24 + 16);
        memcpy(0, v12, v23);
        v29 = v66;
        v66 = 0;
        v67 = v13;
        v68 = 0;
        if (v29)
        {
          operator delete(v29);
          v12 = v66;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v67->n128_u32[0] = v21;
        v22[1] = v19;
        v22[2] = v18;
        v13 = (v22 + 4);
        v22[3] = v17;
      }

      v67 = v13;
      v14 = v13 - v12;
    }

    while (v14 < 4);
  }

  v30 = 126 - 2 * __clz(v14);
  if (v13 == v12)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  std::__introsort<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,false>(v12, v13, &v64, v31, 1, v2);
  v64 = 0uLL;
  v65 = 0;
  v32 = v67[-1].n128_f32[3];
  v33 = v66[2];
  std::vector<AVE_MultiPass::_S_AVE_MPCluster>::resize(&v64, 4uLL);
  v34 = 0;
  v35 = (v32 - v33) * 0.25;
  v36 = v33 + v35;
  v37 = (v33 + (v33 + v35)) * 0.5;
  do
  {
    v38 = v64 + v34;
    *(v38 + 4) = v37;
    *(v38 + 8) = v33;
    *(v38 + 12) = v36;
    *v38 = 0;
    if (AVE_Log_CheckLevel(0x2Eu, 8))
    {
      if (AVE_Log_CheckConsole(0x2Eu))
      {
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(8);
        printf("%lld %d AVE %s: center %f left %f right %f count %u\n", v39, 46, v40, *(v64 + v34 + 4), *(v64 + v34 + 8), *(v64 + v34 + 12), *(v64 + v34));
      }

      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: center %f left %f right %f count %u", v41, 46, v42, *(v64 + v34 + 4), *(v64 + v34 + 8), *(v64 + v34 + 12), *(v64 + v34));
    }

    v37 = v35 + v37;
    v33 = v35 + v33;
    v36 = v35 + v36;
    v34 += 16;
  }

  while (v34 != 64);
  __p = 0;
  v62 = 0;
  v63 = 0;
  v43 = std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__init_with_size[abi:ne200100]<AVE_MultiPass::_S_AVE_MPCluster*,AVE_MultiPass::_S_AVE_MPCluster*>(&__p, v66, v67, (v67 - v66) >> 4);
  AVE_MultiPass::QuantizeData(v43, &__p, &v64);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v44 = std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__init_with_size[abi:ne200100]<AVE_MultiPass::_S_AVE_MPCluster*,AVE_MultiPass::_S_AVE_MPCluster*>(&v58, v66, v67, (v67 - v66) >> 4);
  AVE_MultiPass::QuantizeData(v44, &v58, &v64);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  v55 = 0;
  v56 = 0;
  v57 = 0;
  v45 = std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__init_with_size[abi:ne200100]<AVE_MultiPass::_S_AVE_MPCluster*,AVE_MultiPass::_S_AVE_MPCluster*>(&v55, v66, v67, (v67 - v66) >> 4);
  AVE_MultiPass::QuantizeData(v45, &v55, &v64);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  v46 = v1 + 1168;
  v47 = (v64 + 4);
  v48 = 4;
  do
  {
    *(v46 - 4) = *(v47 - 1);
    v49 = *v47;
    v47 += 4;
    *v46++ = v49;
    --v48;
  }

  while (v48);
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    if (AVE_Log_CheckConsole(0x2Eu))
    {
      v50 = AVE_GetCurrTime();
      v51 = AVE_Log_GetLevelStr(8);
      printf("%lld %d AVE %s: log10_cplx quantized histogram : values %f %f %f %f counts %u %u %u %u\n", v50, 46, v51, *(v1 + 292), *(v1 + 293), *(v1 + 294), *(v1 + 295), *(v1 + 288), *(v1 + 289), *(v1 + 290), *(v1 + 291));
    }

    v52 = AVE_GetCurrTime();
    v53 = AVE_Log_GetLevelStr(8);
    syslog(3, "%lld %d AVE %s: log10_cplx quantized histogram : values %f %f %f %f counts %u %u %u %u", v52, 46, v53, *(v1 + 292), *(v1 + 293), *(v1 + 294), *(v1 + 295), *(v1 + 288), *(v1 + 289), *(v1 + 290), *(v1 + 291));
  }

  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }
}

void sub_2955E2798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(v27 - 120);
  if (v29)
  {
    *(v27 - 112) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AVE_MultiPass::_S_AVE_MPCluster>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<_S_AVE_MultiPassStats *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AVE_MultiPass::_S_AVE_MPCluster>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<AVE_MultiPass::_S_AVE_MPCluster>::resize(const void **result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__append(result, a2 - v2);
  }
}

void AVE_MultiPass::QuantizeData(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v5 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: MP: QuantizeData()\n", CurrTime, 216, LevelStr);
      v8 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: QuantizeData()", v8, 216, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: QuantizeData()", CurrTime, 216, LevelStr);
    }
  }

  v10 = *a3;
  v9 = a3[1];
  if (*a3 < v9)
  {
    v11 = a2[1];
    v12 = 0.0;
    do
    {
      v13 = *a2;
      v14 = 0.0;
      if (*a2 >= v11)
      {
        v40 = ((v12 + 0.0) + 0.5);
        *v10 = v40;
      }

      else
      {
        v15 = 0.0;
        do
        {
          if (AVE_Log_CheckLevel(0x2Eu, 8))
          {
            v16 = AVE_Log_CheckConsole(0x2Eu);
            v17 = AVE_GetCurrTime();
            v18 = AVE_Log_GetLevelStr(8);
            v19 = *(v13 + 8);
            v20 = *(v13 + 4);
            v21 = *(v13 + 12);
            v22 = *(v10 + 8);
            v23 = *(v10 + 4);
            v24 = *(v10 + 12);
            if (v16)
            {
              printf("%lld %d AVE %s: it %f %f %f q_it %f %f %f\n", v17, 46, v18, v19, v20, v21, v22, *(v10 + 4), v24);
              v17 = AVE_GetCurrTime();
              v18 = AVE_Log_GetLevelStr(8);
              v19 = *(v13 + 8);
              v20 = *(v13 + 4);
              v21 = *(v13 + 12);
              v22 = *(v10 + 8);
              v23 = *(v10 + 4);
              v24 = *(v10 + 12);
            }

            syslog(3, "%lld %d AVE %s: it %f %f %f q_it %f %f %f", v17, 46, v18, v19, v20, v21, v22, v23, v24);
          }

          v25 = *(v13 + 12);
          v26 = *(v10 + 8);
          if (v25 > v26)
          {
            v27 = *(v13 + 8);
            v28 = *(v10 + 12);
            if (v27 < v28)
            {
              v29 = v27 >= v26 ? *(v13 + 8) : *(v10 + 8);
              v30 = v28 >= v25 ? *(v13 + 12) : *(v10 + 12);
              v31 = ((v30 - v29) * *v13) / (v25 - v27);
              v32 = (v29 + v30) * 0.5;
              v14 = v14 + v31;
              v15 = v15 + (v31 * v32);
              if (AVE_Log_CheckLevel(0x2Eu, 8))
              {
                v33 = AVE_Log_CheckConsole(0x2Eu);
                v34 = AVE_GetCurrTime();
                v35 = AVE_Log_GetLevelStr(8);
                v36 = v29;
                v37 = v30;
                v38 = v31;
                v39 = v32;
                if (v33)
                {
                  printf("%lld %d AVE %s: left_overlap %f right_overlap %f l_count %f center %f\n", v34, 46, v35, v36, v37, v38, v39);
                  v34 = AVE_GetCurrTime();
                  v35 = AVE_Log_GetLevelStr(8);
                }

                syslog(3, "%lld %d AVE %s: left_overlap %f right_overlap %f l_count %f center %f", v34, 46, v35, v36, v37, v38, v39);
              }
            }
          }

          v13 += 16;
          v11 = a2[1];
        }

        while (v13 < v11);
        v40 = ((v12 + v14) + 0.5);
        *v10 = v40;
        if (v14 > 0.0)
        {
          *(v10 + 4) = v15 / v14;
        }
      }

      v12 = v14 - v40;
      v10 += 16;
      v9 = a3[1];
    }

    while (v10 < v9);
    v10 = *a3;
  }

  if (v10 < v9)
  {
    do
    {
      v41 = v10 + 16;
      if (v10 + 16 != v9)
      {
        v42 = (*(v10 + 4) + *(v10 + 20)) * 0.5;
        *(v10 + 12) = v42;
        *(v10 + 24) = v42;
      }

      v10 += 16;
    }

    while (v41 < v9);
  }
}

void AVE_MultiPass::FlushStats(AVE_MultiPass *this, OpaqueVTMultiPassStorage *a2, __sFILE *a3)
{
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: MP: %s\n", CurrTime, 216, LevelStr, "FlushStats");
      v9 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: %s", v9, 216, v24, "FlushStats");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: %s", CurrTime, 216, LevelStr, "FlushStats");
    }
  }

  pass = 0;
  v11 = *MEMORY[0x29EDB8ED8];
  while (!pass || *(pass + 11) != -1)
  {
    v12 = AVE_MultiPass::new_stats(this);
    if (!v12)
    {
      break;
    }

    *(v12 + 44) = -1;
    pass = AVE_MultiPass::enqueue_first_pass(this, v12, 0);
    if (!AVE_Log_CheckLevel(0xD8u, 7))
    {
      goto LABEL_19;
    }

    v13 = AVE_Log_CheckConsole(0xD8u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(7);
    if (v13)
    {
      if (pass)
      {
        v16 = *(pass + 11);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: MP: %s flushes stats %p display_order %d\n", v14, 216, v15, "FlushStats", pass, v16);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      if (!pass)
      {
LABEL_17:
        v17 = -1;
        goto LABEL_18;
      }
    }

    else if (!pass)
    {
      goto LABEL_17;
    }

    v17 = *(pass + 11);
LABEL_18:
    syslog(3, "%lld %d AVE %s: MP: %s flushes stats %p display_order %d", v14, 216, v15, "FlushStats", pass, v17);
LABEL_19:
    if (pass && *(pass + 11) != -1)
    {
      if (a2)
      {
        Mutable = CFDataCreateMutable(v11, 0);
        CFDataAppendBytes(Mutable, pass, 1574);
        v19 = VTMultiPassStorageSetDataAtTimeStamp();
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v19 && AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v20 = AVE_Log_CheckConsole(0x2Eu);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          if (v20)
          {
            printf("%lld %d AVE %s: MP: %s ERROR: VTMultiPassStorageSetDataAtTimeStamp failed ...\n", v21, 46, v22, "FlushStats");
            v23 = AVE_GetCurrTime();
            v25 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: MP: %s ERROR: VTMultiPassStorageSetDataAtTimeStamp failed ...", v23, 46, v25, "FlushStats");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: MP: %s ERROR: VTMultiPassStorageSetDataAtTimeStamp failed ...", v21, 46, v22, "FlushStats");
          }
        }
      }

      if (a3)
      {
        fseeko(a3, 1574 * *(pass + 11) + 264, 0);
        fwrite(pass, 1uLL, 0x626uLL, a3);
      }
    }
  }

  AVE_MultiPass::empty_queues(this);
  AVE_MultiPass::FinalizeSeqRcInfo(this);
  if (a3)
  {
    fseek(a3, 0, 0);
    fwrite(this + 25496, 1uLL, 0x108uLL, a3);
  }
}

void std::deque<_S_AVE_MultiPassStats *>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats **>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<_S_AVE_MultiPassStats **>::emplace_back<_S_AVE_MultiPassStats **&>(a1, &v9);
}

void sub_2955E3154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<_S_AVE_MultiPassStats **>::emplace_back<_S_AVE_MultiPassStats **&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats **>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<_S_AVE_MultiPassStats **>::emplace_front<_S_AVE_MultiPassStats **>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats **>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<_S_AVE_MultiPassStats **>::emplace_back<_S_AVE_MultiPassStats **>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats **>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<_S_AVE_MultiPassStats **>::emplace_front<_S_AVE_MultiPassStats **&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats **>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<_S_AVE_MultiPassStats *>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EDCFE80, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *(v9 + 44);
    if (*(*v5 + 44) > v10)
    {
      do
      {
        v11 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v11;
      }

      while (*(*v5 + 44) > v10);
      *v11 = v8;
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3 + 1];
    v5 = (2 * v3) | 1;
    v6 = 2 * v3 + 2;
    if (v6 < a3)
    {
      v7 = *(*v4 + 44) > *(v4[1] + 44);
      v4 += v7;
      if (v7)
      {
        v5 = v6;
      }
    }

    *a1 = *v4;
    a1 = v4;
    v3 = v5;
  }

  while (v5 <= (a3 - 2) / 2);
  return v4;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AVE_MultiPass::_S_AVE_MPCluster>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-1];
  v10 = &a2[-2];
  v11 = &a2[-3];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v47 = a2[-1].n128_u32[0];
        v45 = &a2[-1];
        if (v47 <= v12->n128_u32[0])
        {
          return result;
        }

LABEL_77:
        v76 = *v12;
        *v12 = *v45;
        result = v76;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v42 = v12 + 1;
      v43 = v12[1].n128_u32[0];
      v46 = a2[-1].n128_u32[0];
      v45 = &a2[-1];
      v44 = v46;
      if (v43 > v12->n128_u32[0])
      {
        if (v44 > v43)
        {
          goto LABEL_77;
        }

        v75 = *v12;
        *v12 = *v42;
        result = v75;
        *v42 = v75;
        if (*v45 <= v12[1].n128_u32[0])
        {
          return result;
        }

        result = *v42;
        *v42 = *v45;
LABEL_78:
        *v45 = result;
        return result;
      }

      if (v44 <= v43)
      {
        return result;
      }

      result = *v42;
      *v42 = *v45;
      *v45 = result;
      goto LABEL_109;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,0>(v12, v12 + 1, &v12[2], v12[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(v12, a2);
      }

      else if (v12 != a2)
      {
        v51 = &v12[1];
        while (v51 != a2)
        {
          v52 = v51;
          v53 = a1[1].n128_u64[0];
          if (v53 > a1->n128_u32[0])
          {
            v54 = a1[1].n128_u64[1];
            v55 = v52;
            do
            {
              result = v55[-1];
              *v55 = result;
              v56 = v55[-2].n128_u32[0];
              --v55;
            }

            while (v53 > v56);
            v55->n128_u64[0] = v53;
            v55->n128_u64[1] = v54;
          }

          v51 = &v52[1];
          a1 = v52;
        }
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPCluster *>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    v18 = *v9;
    if (v15 >= 0x81)
    {
      v19 = v16->n128_u32[0];
      if (v16->n128_u32[0] <= v12->n128_u32[0])
      {
        if (v18 > v19)
        {
          v60 = *v16;
          *v16 = *v9;
          *v9 = v60;
          if (v16->n128_u32[0] > v12->n128_u32[0])
          {
            v61 = *v12;
            *v12 = *v16;
            *v16 = v61;
          }
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v64 = *v12;
          *v12 = *v16;
          *v16 = v64;
          if (*v9 <= v16->n128_u32[0])
          {
            goto LABEL_28;
          }

          v58 = *v16;
          *v16 = *v9;
        }

        else
        {
          v58 = *v12;
          *v12 = *v9;
        }

        *v9 = v58;
      }

LABEL_28:
      v21 = v12 + 1;
      v22 = v16 - 1;
      v23 = v16[-1].n128_u32[0];
      v24 = *v10;
      if (v23 <= v12[1].n128_u32[0])
      {
        if (v24 > v23)
        {
          v65 = *v22;
          *v22 = *v10;
          *v10 = v65;
          if (v22->n128_u32[0] > v21->n128_u32[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 <= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (*v10 <= v22->n128_u32[0])
          {
            goto LABEL_40;
          }

          v67 = *v22;
          *v22 = *v10;
          v25 = v67;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = v12 + 2;
      v31 = v16[1].n128_u32[0];
      v29 = v16 + 1;
      v30 = v31;
      v32 = *v11;
      if (v31 <= v12[2].n128_u32[0])
      {
        if (v32 > v30)
        {
          v68 = *v29;
          *v29 = *v11;
          *v11 = v68;
          if (v29->n128_u32[0] > v28->n128_u32[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 <= v30)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (*v11 <= v29->n128_u32[0])
          {
            goto LABEL_49;
          }

          v69 = *v29;
          *v29 = *v11;
          v33 = v69;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = v17->n128_u32[0];
      v37 = v29->n128_u32[0];
      if (v17->n128_u32[0] <= v22->n128_u32[0])
      {
        if (v37 > v36)
        {
          v71 = *v17;
          *v17 = *v29;
          *v29 = v71;
          if (v17->n128_u32[0] > v22->n128_u32[0])
          {
            v72 = *v22;
            *v22 = *v17;
            *v17 = v72;
          }
        }

        goto LABEL_58;
      }

      if (v37 <= v36)
      {
        v73 = *v22;
        *v22 = *v17;
        *v17 = v73;
        if (v29->n128_u32[0] <= v17->n128_u32[0])
        {
LABEL_58:
          v74 = *v12;
          *v12 = *v17;
          *v17 = v74;
          goto LABEL_59;
        }

        v70 = *v17;
        *v17 = *v29;
      }

      else
      {
        v70 = *v22;
        *v22 = *v29;
      }

      *v29 = v70;
      goto LABEL_58;
    }

    v20 = v12->n128_u32[0];
    if (v12->n128_u32[0] <= v17->n128_u32[0])
    {
      if (v18 > v20)
      {
        v62 = *v12;
        *v12 = *v9;
        *v9 = v62;
        if (v12->n128_u32[0] > v17->n128_u32[0])
        {
          v63 = *v17;
          *v17 = *v12;
          *v12 = v63;
        }
      }
    }

    else
    {
      if (v18 > v20)
      {
        v59 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v59;
        goto LABEL_59;
      }

      v66 = *v17;
      *v17 = *v12;
      *v12 = v66;
      if (*v9 > v12->n128_u32[0])
      {
        v59 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && v12[-1].n128_u32[0] <= v12->n128_u32[0])
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCount &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCount &>(v12, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_64;
    }

    v40 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(v12, v38, result);
    v12 = (v38 + 1);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>((v38 + 1), a2, v41))
    {
      a4 = -v14;
      a2 = v38;
      if (v40)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v40)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,false>(a1, v38, a3, -v14, a5 & 1, result);
      v12 = (v38 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v42 = v12 + 1;
  v48 = v12[1].n128_u32[0];
  v49 = v12 + 2;
  v50 = v12[2].n128_u32[0];
  if (v48 <= v12->n128_u32[0])
  {
    if (v50 > v48)
    {
      result = *v42;
      *v42 = *v49;
      *v49 = result;
      if (v12[1].n128_u32[0] > v12->n128_u32[0])
      {
        v78 = *v12;
        *v12 = *v42;
        result = v78;
        *v42 = v78;
      }
    }
  }

  else
  {
    if (v50 > v48)
    {
      v77 = *v12;
      *v12 = *v49;
      result = v77;
      goto LABEL_105;
    }

    v79 = *v12;
    *v12 = *v42;
    result = v79;
    *v42 = v79;
    if (v50 > v12[1].n128_u32[0])
    {
      result = *v42;
      *v42 = *v49;
LABEL_105:
      *v49 = result;
    }
  }

  if (*v9 <= v49->n128_u32[0])
  {
    return result;
  }

  result = *v49;
  *v49 = *v9;
  *v9 = result;
  if (v49->n128_u32[0] <= v42->n128_u32[0])
  {
    return result;
  }

  result = *v42;
  *v42 = *v49;
  *v49 = result;
LABEL_109:
  if (v12[1].n128_u32[0] > v12->n128_u32[0])
  {
    v80 = *v12;
    *v12 = *v42;
    result = v80;
    *v42 = v80;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,0>(__n128 *a1, __n128 *a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = *a3;
  if (a2->n128_u32[0] <= a1->n128_u32[0])
  {
    if (v7 > v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] > a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 > a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 > *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 > a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] > a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 > *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 > *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 > a2->n128_u32[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[0] > a1->n128_u32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (v6 > *v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 16);
            v8 -= 16;
            if (v6 <= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCount &>(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (v3 <= *(a2 - 4))
  {
    v6 = a1 + 4;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 += 4;
    }

    while (v3 <= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[4];
      v4 += 4;
    }

    while (v3 <= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 4);
      a2 -= 4;
    }

    while (v3 > v7);
  }

  while (v4 < a2)
  {
    v11 = *v4;
    *v4 = *a2;
    *a2 = v11;
    do
    {
      v8 = v4[4];
      v4 += 4;
    }

    while (v3 <= v8);
    do
    {
      v9 = *(a2 - 4);
      a2 -= 4;
    }

    while (v3 > v9);
  }

  if (v4 - 4 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCount &>(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  do
  {
    v5 = a1[++v2];
  }

  while (v4 < v5);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *(a2-- - 4);
    }

    while (v4 >= v9);
  }

  else
  {
    do
    {
      v8 = *(a2-- - 4);
    }

    while (v4 >= v8);
  }

  if (v6 < a2)
  {
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = *(v10++ + 4);
      }

      while (v4 < v13);
      do
      {
        v14 = *(v11-- - 4);
      }

      while (v4 >= v14);
    }

    while (v10 < v11);
    v7 = v10 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u32[0];
      v4 = a2 - 1;
      v8 = v9;
      if (v7 > *a1)
      {
        if (v8 <= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u32[0] <= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v8 <= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) > *a1)
      {
        v42 = *a1;
        *a1 = *v6;
        *v6 = v42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 <= *a1)
    {
      if (v19 > v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u32[0] > v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 <= v17)
    {
      v39 = *a1;
      *a1 = *v6;
      *v6 = v39;
      if (v19 <= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u32[0] <= v18->n128_u32[0])
    {
      return 1;
    }

    v40 = *v18;
    *v18 = *v20;
    *v20 = v40;
    if (v18->n128_u32[0] <= v6->n128_u32[0])
    {
      return 1;
    }

    v41 = *v6;
    *v6 = *v18;
    *v18 = v41;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u32[0];
    v4 = a2 - 1;
    if (v5 <= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 <= *a1)
  {
    if (v12 > v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u32[0] > v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 <= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 <= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    v34 = v11->n128_u32[0];
    v35 = *v30;
    if (v35 > v34)
    {
      v36 = v31;
      while (1)
      {
        *(a1 + v36 + 48) = *(a1 + v36 + 32);
        if (v36 == -32)
        {
          break;
        }

        v37 = *(a1 + v36 + 16);
        v36 -= 16;
        if (v35 <= v37)
        {
          v38 = (a1 + v36 + 48);
          goto LABEL_41;
        }
      }

      v38 = a1;
LABEL_41:
      *v38 = v33;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPCluster *>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 > *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v30 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[v14];
          v17 = v16 + 1;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = *(v16 + 8);
            v19 = v16 + 2;
            if (*(v19 - 4) <= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v17 == --v6)
        {
          *v17 = v30;
        }

        else
        {
          *v17 = *v6;
          *v6 = v30;
          v21 = (v17 - a1 + 16) >> 4;
          v22 = v21 < 2;
          v23 = v21 - 2;
          if (!v22)
          {
            v24 = v23 >> 1;
            v25 = &a1[v24];
            v26 = *v17;
            if (*v25 > *v17)
            {
              v27 = *(v17 + 1);
              do
              {
                v28 = v25;
                *v17 = *v25;
                if (!v24)
                {
                  break;
                }

                v24 = (v24 - 1) >> 1;
                v25 = &a1[v24];
                v17 = v28;
              }

              while (*v25 > v26);
              *v28 = v26;
              *(v28 + 1) = v27;
            }
          }
        }

        v22 = v8-- <= 2;
      }

      while (!v22);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      v10 = *v8;
      if (v9 < a3 && v10 > *(v8 + 2))
      {
        v10 = *(v8++ + 2);
        v7 = v9;
      }

      v11 = *a4;
      v12 = *a4;
      if (v12 >= v10)
      {
        do
        {
          v13 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + 16 * v14);
          v15 = 2 * v7 + 2;
          v16 = *v8;
          if (v15 < a3 && v16 > *(v8 + 2))
          {
            v16 = *(v8++ + 2);
            v14 = v15;
          }

          a4 = v13;
          v7 = v14;
        }

        while (v12 >= v16);
        *v13 = v11;
      }
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        result.n128_u32[0] = a2[-1].n128_u32[1];
        if (result.n128_f32[0] >= v12->n128_f32[1])
        {
          return result;
        }

LABEL_77:
        v64 = *v12;
        *v12 = *v9;
        result = v64;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v41 = v12 + 1;
      v42 = v12 + 2;
      v43 = v12[1].n128_f32[1];
      v44 = v12[2].n128_f32[1];
      if (v43 >= v12->n128_f32[1])
      {
        if (v44 < v43)
        {
          result = *v41;
          *v41 = *v42;
          *v42 = result;
          if (v12[1].n128_f32[1] < v12->n128_f32[1])
          {
            v67 = *v12;
            *v12 = *v41;
            result = v67;
            *v41 = v67;
          }
        }
      }

      else
      {
        if (v44 < v43)
        {
          v65 = *v12;
          *v12 = *v42;
          result = v65;
          goto LABEL_101;
        }

        v68 = *v12;
        *v12 = *v41;
        *v41 = v68;
        if (v44 < v12[1].n128_f32[1])
        {
          result = *v41;
          *v41 = *v42;
LABEL_101:
          *v42 = result;
        }
      }

      result.n128_u32[0] = a2[-1].n128_u32[1];
      if (result.n128_f32[0] < v12[2].n128_f32[1])
      {
        result = *v42;
        *v42 = *v9;
        *v9 = result;
        result.n128_u32[0] = v12[2].n128_u32[1];
        if (result.n128_f32[0] < v12[1].n128_f32[1])
        {
          result = *v41;
          *v41 = *v42;
          *v42 = result;
          result.n128_u32[0] = v12[1].n128_u32[1];
          if (result.n128_f32[0] < v12->n128_f32[1])
          {
            v69 = *v12;
            *v12 = *v41;
            result = v69;
            *v41 = v69;
          }
        }
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPCluster *>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = a2[-1].n128_f32[1];
    if (v15 >= 0x81)
    {
      v18 = v16->n128_f32[1];
      if (v18 >= v12->n128_f32[1])
      {
        if (v17 < v18)
        {
          v48 = *v16;
          *v16 = *v9;
          *v9 = v48;
          if (v16->n128_f32[1] < v12->n128_f32[1])
          {
            v49 = *v12;
            *v12 = *v16;
            *v16 = v49;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v46 = *v12;
          *v12 = *v9;
          goto LABEL_27;
        }

        v52 = *v12;
        *v12 = *v16;
        *v16 = v52;
        if (a2[-1].n128_f32[1] < v16->n128_f32[1])
        {
          v46 = *v16;
          *v16 = *v9;
LABEL_27:
          *v9 = v46;
        }
      }

      v20 = v12 + 1;
      v21 = v16 - 1;
      v22 = v16[-1].n128_f32[1];
      v23 = a2[-2].n128_f32[1];
      if (v22 >= v12[1].n128_f32[1])
      {
        if (v23 < v22)
        {
          v53 = *v21;
          *v21 = *v10;
          *v10 = v53;
          if (v16[-1].n128_f32[1] < v12[1].n128_f32[1])
          {
            v25 = *v20;
            *v20 = *v21;
            *v21 = v25;
          }
        }
      }

      else
      {
        if (v23 < v22)
        {
          v24 = *v20;
          *v20 = *v10;
          goto LABEL_39;
        }

        v26 = *v20;
        *v20 = *v21;
        *v21 = v26;
        if (a2[-2].n128_f32[1] < v16[-1].n128_f32[1])
        {
          v55 = *v21;
          *v21 = *v10;
          v24 = v55;
LABEL_39:
          *v10 = v24;
        }
      }

      v27 = v12 + 2;
      v28 = v16 + 1;
      v29 = v16[1].n128_f32[1];
      v30 = a2[-3].n128_f32[1];
      if (v29 >= v12[2].n128_f32[1])
      {
        if (v30 < v29)
        {
          v56 = *v28;
          *v28 = *v11;
          *v11 = v56;
          if (v16[1].n128_f32[1] < v12[2].n128_f32[1])
          {
            v32 = *v27;
            *v27 = *v28;
            *v28 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v27;
          *v27 = *v11;
          goto LABEL_48;
        }

        v33 = *v27;
        *v27 = *v28;
        *v28 = v33;
        if (a2[-3].n128_f32[1] < v16[1].n128_f32[1])
        {
          v57 = *v28;
          *v28 = *v11;
          v31 = v57;
LABEL_48:
          *v11 = v31;
        }
      }

      v34 = v16->n128_f32[1];
      v35 = v16[1].n128_f32[1];
      if (v34 >= v16[-1].n128_f32[1])
      {
        if (v35 < v34)
        {
          v59 = *v16;
          *v16 = *v28;
          *v28 = v59;
          if (v16->n128_f32[1] < v16[-1].n128_f32[1])
          {
            v60 = *v21;
            *v21 = *v16;
            *v16 = v60;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v58 = *v21;
          *v21 = *v28;
          goto LABEL_57;
        }

        v61 = *v21;
        *v21 = *v16;
        *v16 = v61;
        if (v16[1].n128_f32[1] < v16->n128_f32[1])
        {
          v58 = *v16;
          *v16 = *v28;
LABEL_57:
          *v28 = v58;
        }
      }

      v62 = *v12;
      *v12 = *v16;
      *v16 = v62;
      goto LABEL_59;
    }

    v19 = v12->n128_f32[1];
    if (v19 >= v16->n128_f32[1])
    {
      if (v17 < v19)
      {
        v50 = *v12;
        *v12 = *v9;
        *v9 = v50;
        if (v12->n128_f32[1] < v16->n128_f32[1])
        {
          v51 = *v16;
          *v16 = *v12;
          *v12 = v51;
        }
      }
    }

    else
    {
      if (v17 < v19)
      {
        v47 = *v16;
        *v16 = *v9;
LABEL_36:
        *v9 = v47;
        goto LABEL_59;
      }

      v54 = *v16;
      *v16 = *v12;
      *v12 = v54;
      if (a2[-1].n128_f32[1] < v12->n128_f32[1])
      {
        v47 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && v12[-1].n128_f32[1] >= v12->n128_f32[1])
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCenter &>(v12, a2);
      goto LABEL_66;
    }

    v36 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCenter &>(v12, a2);
    if ((v37 & 1) == 0)
    {
      goto LABEL_64;
    }

    v38 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(v12, v36, result);
    v12 = v36 + 1;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(v36 + 1, a2, v39))
    {
      a4 = -v14;
      a2 = v36;
      if (v38)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v38)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,false>(a1, v36, a3, -v14, a5 & 1, result);
      v12 = v36 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  result.n128_u32[0] = v12[1].n128_u32[1];
  v40 = a2[-1].n128_f32[1];
  if (result.n128_f32[0] < v12->n128_f32[1])
  {
    if (v40 < result.n128_f32[0])
    {
      goto LABEL_77;
    }

    v63 = *v12;
    *v12 = v12[1];
    result = v63;
    v12[1] = v63;
    result.n128_u32[0] = a2[-1].n128_u32[1];
    if (result.n128_f32[0] >= v12[1].n128_f32[1])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v9;
LABEL_78:
    *v9 = result;
    return result;
  }

  if (v40 < result.n128_f32[0])
  {
    result = v12[1];
    v12[1] = *v9;
    *v9 = result;
    result.n128_u32[0] = v12[1].n128_u32[1];
    if (result.n128_f32[0] < v12->n128_f32[1])
    {
      v66 = *v12;
      *v12 = v12[1];
      result = v66;
      v12[1] = v66;
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f32[1];
  v7 = a3->n128_f32[1];
  if (v6 >= a1->n128_f32[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[1] < a1->n128_f32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_f32[1] < a2->n128_f32[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f32[1] < a3->n128_f32[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_f32[1] < a2->n128_f32[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[1] < a1->n128_f32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u32[0] = a5->n128_u32[1];
  if (result.n128_f32[0] < a4->n128_f32[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u32[0] = a4->n128_u32[1];
    if (result.n128_f32[0] < a3->n128_f32[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_u32[0] = a3->n128_u32[1];
      if (result.n128_f32[0] < a2->n128_f32[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u32[0] = a2->n128_u32[1];
        if (result.n128_f32[0] < a1->n128_f32[1])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 2);
        if (*(&v6 + 1) < v4[1])
        {
          v7 = *(v4 + 3);
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 12);
            v8 -= 16;
            if (*(&v6 + 1) >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 16);
      if (*(&v4 + 1) < *(result + 4))
      {
        v5 = *(result + 24);
        v6 = v3;
        do
        {
          *v6 = *(v6 - 16);
          v7 = *(v6 - 28);
          v6 -= 16;
        }

        while (*(&v4 + 1) < v7);
        *v6 = v4;
        *(v6 + 8) = v5;
      }

      v2 = v3 + 16;
      result = v3;
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCenter &>(float *a1, float *a2)
{
  v2 = *a1;
  LODWORD(v3) = HIDWORD(*a1);
  if (v3 >= *(a2 - 3))
  {
    v7 = a1 + 4;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = v7[1];
      v7 += 4;
    }

    while (v3 >= v8);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = (v4 + 4);
      v6 = v4[5];
      v4 += 4;
    }

    while (v3 >= v6);
  }

  if (v5 >= a2)
  {
    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 4;
      v10 = *(a2 - 3);
      a2 -= 4;
    }

    while (v3 < v10);
  }

  while (v5 < v9)
  {
    v14 = *v5;
    *v5 = *v9;
    *v9 = v14;
    do
    {
      v11 = *(v5 + 20);
      v5 += 16;
    }

    while (v3 >= v11);
    do
    {
      v12 = *(v9 - 3);
      v9 -= 4;
    }

    while (v3 < v12);
  }

  if ((v5 - 16) != a1)
  {
    *a1 = *(v5 - 16);
  }

  *(v5 - 16) = v2;
  return v5;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCenter &>(__int128 *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  LODWORD(v4) = HIDWORD(*a1);
  do
  {
    v5 = *(&a1[++v2] + 1);
  }

  while (v5 < v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    while (v6 < a2)
    {
      v8 = a2 - 4;
      v10 = *(a2 - 3);
      a2 -= 4;
      if (v10 < v4)
      {
        goto LABEL_9;
      }
    }

    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 4;
      v9 = *(a2 - 3);
      a2 -= 4;
    }

    while (v9 >= v4);
  }

LABEL_9:
  if (v6 < v8)
  {
    v11 = v6;
    v12 = v8;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      do
      {
        v14 = *(v11++ + 5);
      }

      while (v14 < v4);
      do
      {
        v15 = *(v12 - 3);
        v12 -= 4;
      }

      while (v15 >= v4);
    }

    while (v11 < v12);
    v7 = v11 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = a2 - 1;
      v5 = a1[1].n128_f32[1];
      v6 = a2[-1].n128_f32[1];
      if (v5 >= a1->n128_f32[1])
      {
        if (v6 < v5)
        {
          v21 = a1[1];
          a1[1] = *v4;
          *v4 = v21;
          if (a1[1].n128_f32[1] < a1->n128_f32[1])
          {
            v22 = *a1;
            *a1 = a1[1];
            a1[1] = v22;
          }
        }

        return 1;
      }

      if (v6 < v5)
      {
        goto LABEL_49;
      }

      v7 = *a1;
      *a1 = a1[1];
      a1[1] = v7;
      if (a2[-1].n128_f32[1] < a1[1].n128_f32[1])
      {
        v8 = a1[1];
        a1[1] = *v4;
LABEL_50:
        *v4 = v8;
        return 1;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

      goto LABEL_14;
    }

    v4 = a1 + 1;
    v15 = a1 + 2;
    v16 = a2 - 1;
    v17 = a1[1].n128_f32[1];
    v18 = a1->n128_f32[1];
    v19 = a1[2].n128_f32[1];
    if (v17 >= v18)
    {
      if (v19 < v17)
      {
        v25 = *v4;
        *v4 = *v15;
        *v15 = v25;
        if (a1[1].n128_f32[1] < v18)
        {
          v26 = *a1;
          *a1 = *v4;
          *v4 = v26;
        }
      }
    }

    else
    {
      if (v19 < v17)
      {
        v20 = *a1;
        *a1 = *v15;
LABEL_45:
        *v15 = v20;
        goto LABEL_46;
      }

      v36 = *a1;
      *a1 = *v4;
      *v4 = v36;
      if (v19 < a1[1].n128_f32[1])
      {
        v20 = *v4;
        *v4 = *v15;
        goto LABEL_45;
      }
    }

LABEL_46:
    if (a2[-1].n128_f32[1] >= a1[2].n128_f32[1])
    {
      return 1;
    }

    v37 = *v15;
    *v15 = *v16;
    *v16 = v37;
    if (a1[2].n128_f32[1] >= a1[1].n128_f32[1])
    {
      return 1;
    }

    v38 = *v4;
    *v4 = *v15;
    *v15 = v38;
    if (a1[1].n128_f32[1] >= a1->n128_f32[1])
    {
      return 1;
    }

    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_f32[1] < a1->n128_f32[1])
    {
      v4 = a2 - 1;
LABEL_49:
      v8 = *a1;
      *a1 = *v4;
      goto LABEL_50;
    }

    return 1;
  }

LABEL_14:
  v9 = a1 + 2;
  v10 = a1 + 1;
  v11 = a1[1].n128_f32[1];
  v12 = a1->n128_f32[1];
  v13 = a1[2].n128_f32[1];
  if (v11 >= v12)
  {
    if (v13 < v11)
    {
      v23 = *v10;
      *v10 = *v9;
      *v9 = v23;
      if (a1[1].n128_f32[1] < v12)
      {
        v24 = *a1;
        *a1 = *v10;
        *v10 = v24;
      }
    }
  }

  else
  {
    if (v13 >= v11)
    {
      v27 = *a1;
      *a1 = *v10;
      *v10 = v27;
      if (v13 >= a1[1].n128_f32[1])
      {
        goto LABEL_32;
      }

      v14 = *v10;
      *v10 = *v9;
    }

    else
    {
      v14 = *a1;
      *a1 = *v9;
    }

    *v9 = v14;
  }

LABEL_32:
  v28 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    v31 = *v28;
    LODWORD(v32) = HIDWORD(v28->n128_u64[0]);
    if (v32 < v9->n128_f32[1])
    {
      v33 = v29;
      while (1)
      {
        *(a1 + v33 + 48) = *(a1 + v33 + 32);
        if (v33 == -32)
        {
          break;
        }

        v34 = *(&a1[1].n128_f32[1] + v33);
        v33 -= 16;
        if (v32 >= v34)
        {
          v35 = (a1 + v33 + 48);
          goto LABEL_40;
        }
      }

      v35 = a1;
LABEL_40:
      *v35 = v31;
      if (++v30 == 8)
      {
        return &v28[1] == a2;
      }
    }

    v9 = v28;
    v29 += 16;
    if (++v28 == a2)
    {
      return 1;
    }
  }
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPCluster *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (v12[1] < a1[1])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v21 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[4 * v14];
          v17 = v16 + 4;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else if (v16[5] >= v16[9])
          {
            v14 = v18;
          }

          else
          {
            v17 = v16 + 8;
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 4;
        if (v17 == v6)
        {
          *v17 = v21;
        }

        else
        {
          *v17 = *v6;
          *v6 = v21;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(a1, (v17 + 4), a4, ((v17 + 4) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3 && *(v8 + 4) < *(v8 + 20))
      {
        v8 += 16;
        v7 = v9;
      }

      v10 = *a4;
      LODWORD(v11) = HIDWORD(*a4);
      if (*(v8 + 4) >= v11)
      {
        do
        {
          v12 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = result + 16 * v7;
          v14 = v13 + 2;
          if (v14 < a3 && *(v8 + 4) < *(v8 + 20))
          {
            v8 += 16;
            v7 = v14;
          }

          a4 = v12;
        }

        while (*(v8 + 4) >= v11);
        *v12 = v10;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v7 = (a2 - 16);
    v6 = *(a2 - 16);
    if (*(v5 + 4) < *(&v6 + 1))
    {
      v8 = *(a2 - 8);
      do
      {
        v9 = v5;
        *v7 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
        v7 = v9;
      }

      while (*(v5 + 4) < *(&v6 + 1));
      *v9 = v6;
      v9[1] = v8;
    }
  }

  return result;
}

void std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    a1[1] = &v5[16 * a2];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::vector<_S_AVE_MultiPassStats *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 4;
    v10 = v4 - v6;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF0;
    v12 = 0xFFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v8;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AVE_MultiPass::_S_AVE_MPCluster>>(a1, v12);
    }

    memcpy(0, v6, v7);
    v13 = *a1;
    *a1 = 0;
    a1[1] = (16 * v9 + 16 * a2);
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t *std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__init_with_size[abi:ne200100]<AVE_MultiPass::_S_AVE_MPCluster*,AVE_MultiPass::_S_AVE_MPCluster*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2955E5E2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AVE_MultiPass::_S_AVE_MPCluster>>(a1, a2);
  }

  std::vector<_S_AVE_MultiPassStats *>::__throw_length_error[abi:ne200100]();
}

const char *AVE_PixelFmt_FindByType(int a1)
{
  result = "v024\b";
  v3 = 86;
  while (*result != a1)
  {
    result += 44;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_PixelFmt_FindType(_DWORD *a1)
{
  v1 = a1[8];
  v2 = &dword_295661C10;
  v3 = 86;
  while (v1 != -1 && v1 != v2[4] || a1[6] != v2[2] || a1[3] != *(v2 - 1) || a1[1] != *(v2 - 3) || a1[2] != *(v2 - 2) || a1[4] != *v2 || a1[5] != v2[1])
  {
    v2 += 11;
    if (!--v3)
    {
      return 0;
    }
  }

  return *(v2 - 4);
}

uint64_t AVE_PS_CalcSizeOfavcC(int a1, int *a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v6 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %d\n", CurrTime, 212, LevelStr, "AVE_PS_CalcSizeOfavcC", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %d", CurrTime);
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v9 = AVE_Log_CheckConsole(0xD4u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(8);
    v12 = *a2;
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d pInfo->iNum %d\n", v10, 212, v11, "AVE_PS_CalcSizeOfavcC", 80, v12);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s:%d pInfo->iNum %d", v13, 212, v14, "AVE_PS_CalcSizeOfavcC", 80, *a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d pInfo->iNum %d", v10, 212, v11, "AVE_PS_CalcSizeOfavcC", 80, v12);
    }
  }

  v32 = a3;
  if (*a2 < 1)
  {
    v17 = 7;
  }

  else
  {
    v15 = 0;
    v16 = a2 + 4;
    v17 = 7;
    do
    {
      if (*v16)
      {
        if (*(v16 - 2) == a1 && (*(v16 - 3) & 0xFFFFFFFE) == 2)
        {
          v17 = (v17 + *v16 - 2);
          if (AVE_Log_CheckLevel(0xD4u, 8))
          {
            v18 = AVE_Log_CheckConsole(0xD4u);
            v19 = AVE_GetCurrTime();
            v20 = AVE_Log_GetLevelStr(8);
            if (v18)
            {
              printf("%lld %d AVE %s: %s:%d i %d iSize %d size %d\n", v19, 212, v20, "AVE_PS_CalcSizeOfavcC", 92, v15, *v16, v17);
              v19 = AVE_GetCurrTime();
              v20 = AVE_Log_GetLevelStr(8);
            }

            syslog(3, "%lld %d AVE %s: %s:%d i %d iSize %d size %d", v19, 212, v20, "AVE_PS_CalcSizeOfavcC", 92, v15, *v16, v17);
          }
        }
      }

      ++v15;
      v16 += 4;
    }

    while (v15 < *a2);
  }

  if ((v32 - 6) >= 3)
  {
    v21 = v17;
  }

  else
  {
    v21 = (v17 + 4);
    if (AVE_Log_CheckLevel(0xD4u, 8))
    {
      v22 = AVE_Log_CheckConsole(0xD4u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(8);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d size %d\n", v23, 212, v24, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
        v25 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s:%d size %d", v25, 212, v31, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d size %d", v23, 212, v24, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
      }
    }
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v26 = AVE_Log_CheckConsole(0xD4u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(8);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d %d\n", v27, 212, v28, "AVE_PS_CalcSizeOfavcC", a1, a2, v32, v21);
      v29 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d", v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d", v27);
    }
  }

  return v21;
}

uint64_t AVE_PS_Compose_avcC(int a1, char *a2, unsigned int *a3, int *a4, _BYTE *a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v10 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p %d\n", CurrTime, 212, LevelStr, "AVE_PS_Compose_avcC", a1, a2, a3, a4, a5, a6);
      v13 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p %d", v13, 212, v48, "AVE_PS_Compose_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p %d", CurrTime, 212, LevelStr, "AVE_PS_Compose_avcC");
    }
  }

  *a5 = 1;
  a5[1] = AVC_FindProfileIdc(*a4);
  a5[2] = (*(a4 + 8) << 6) | (*(a4 + 4) << 7) | (32 * *(a4 + 12)) | (16 * *(a4 + 16)) | (8 * a4[5]) | (4 * a4[6]);
  a5[3] = AVC_FindLevelIdc(a4[7]);
  a5[4] = -1;
  v14 = *a3;
  if (*a3 < 1)
  {
    goto LABEL_43;
  }

  v52 = a4;
  v15 = 0;
  v16 = 0;
  v17 = a2 + 4;
  v18 = a3 + 2;
  v19 = 6;
  do
  {
    v20 = v18[2];
    if (v20 && *v18 == a1 && *(v18 - 1) == 2)
    {
      v21 = v20 - 4;
      *&a5[v19] = bswap32(v20 - 4) >> 16;
      v22 = v19 + 2;
      memcpy(&a5[v22], &v17[v18[1]], (v20 - 4));
      v19 = v22 + v21;
      ++v16;
      v14 = *a3;
    }

    ++v15;
    v18 += 4;
  }

  while (v15 < v14);
  a4 = v52;
  if (!v16)
  {
LABEL_43:
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v34 = AVE_Log_CheckConsole(0xD4u);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      if (!v34)
      {
        v51 = *a3;
        v50 = 191;
        v49 = v36;
        v41 = "%lld %d AVE %s: %s:%d %s | no SPS %d";
        goto LABEL_34;
      }

      printf("%lld %d AVE %s: %s:%d %s | no SPS %d\n", v35, 212, v36, "AVE_PS_Compose_avcC", 191, "cnt != 0", *a3);
      v37 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | no SPS %d", v37);
    }

LABEL_35:
    v33 = 4294966295;
    goto LABEL_36;
  }

  a5[5] = v16 | 0xE0;
  v23 = *a3;
  if (*a3 < 1)
  {
    goto LABEL_44;
  }

  v24 = 0;
  v25 = 0;
  v26 = v19 + 1;
  v27 = a3 + 2;
  do
  {
    v28 = v27[2];
    if (v28 && *v27 == a1 && *(v27 - 1) == 3)
    {
      v29 = v28 - 4;
      *&a5[v26] = bswap32(v28 - 4) >> 16;
      v30 = a3;
      v31 = v26 + 2;
      memcpy(&a5[v31], &v17[v27[1]], (v28 - 4));
      v26 = v31 + v29;
      a3 = v30;
      ++v25;
      v23 = *v30;
    }

    ++v24;
    v27 += 4;
  }

  while (v24 < v23);
  a4 = v52;
  if (!v25)
  {
LABEL_44:
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v38 = AVE_Log_CheckConsole(0xD4u);
      v35 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | no PPS %d\n", v35, 212, v39, "AVE_PS_Compose_avcC", 226, "cnt != 0", *a3);
        v40 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | no PPS %d", v40);
        goto LABEL_35;
      }

      v51 = *a3;
      v50 = 226;
      v49 = v39;
      v41 = "%lld %d AVE %s: %s:%d %s | no PPS %d";
LABEL_34:
      syslog(3, v41, v35, 212, v49, "AVE_PS_Compose_avcC", v50, "cnt != 0", v51);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  a5[v19] = v25;
  if ((*v52 - 6) <= 2)
  {
    v32 = &a5[v26];
    *v32 = *(v52 + 36) | 0xFC;
    v32[1] = *(v52 + 44) | 0xF8;
    v32[2] = *(v52 + 48) | 0xF8;
    v32[3] = 0;
    v26 += 4;
  }

  if (v26 <= a6)
  {
    v33 = 0;
  }

  else
  {
    v33 = 4294966277;
  }

LABEL_36:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v42 = AVE_Log_CheckConsole(0xD4u);
    v43 = AVE_GetCurrTime();
    v44 = AVE_Log_GetLevelStr(8);
    if (v42)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d\n", v43, 212, v44, "AVE_PS_Compose_avcC", a1, a2, a3, a4, a5, a6, v33);
      v45 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d", v45, 212, v46, "AVE_PS_Compose_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d", v43, 212, v44, "AVE_PS_Compose_avcC");
    }
  }

  return v33;
}

uint64_t AVE_PS_CalcSizeOfhvcC(int a1, unsigned int *a2, int a3, int a4)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v8 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %d %d\n", CurrTime, 212, LevelStr, "AVE_PS_CalcSizeOfhvcC", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %d %d", CurrTime);
  }

  v24 = 0;
  v11 = *a2;
  if (v11 < 1)
  {
    v13 = 23;
  }

  else
  {
    v12 = a2 + 2;
    v13 = 23;
    do
    {
      v14 = v12[2];
      if (v14)
      {
        if (*v12 == a1)
        {
          v15 = *(v12 - 1);
          if ((v15 - 1) <= 2)
          {
            if ((*(&v24 + v15) & 1) == 0)
            {
              v13 += 3;
              *(&v24 + v15) = 1;
            }

            v13 = v14 + v13 - 2;
          }
        }
      }

      v12 += 4;
      --v11;
    }

    while (v11);
  }

  if (a3)
  {
    v16 = a3 + 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = a4 + 5;
  if (!a4)
  {
    v17 = 0;
  }

  v18 = (v17 + v16 + v13);
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v19 = AVE_Log_CheckConsole(0xD4u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d %d %d\n", v20, 212, v21, "AVE_PS_CalcSizeOfhvcC", a1, a2, a3, a4, v18);
      v22 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d %d", v22, 212);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d %d", v20, 212);
    }
  }

  return v18;
}

uint64_t AVE_PS_ComposeNALUArray(int a1, unsigned int a2, char *a3, int *a4, _BYTE *a5)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v9 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_ComposeNALUArray", a1, a2, a3, a4, a5);
      v12 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %d %p %p %p", v12, 212, v42);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %d %p %p %p", CurrTime, 212, LevelStr);
    }
  }

  if (a2 - 1 <= 2)
  {
    *a5 = (a2 - 1) | 0xA0;
    v13 = *a4;
    v46 = a4;
    if (*a4 >= 1)
    {
      v14 = 0;
      v15 = 0;
      v44 = a3;
      v45 = a3 + 4;
      v16 = a4 + 1;
      v17 = 3;
      v18 = a1;
      do
      {
        v19 = &v16[4 * v14];
        v20 = v19[3];
        if (v20 && *v19 == __PAIR64__(v18, a2))
        {
          v49 = v15;
          *&a5[v17] = bswap32(v20 - 4) >> 16;
          v47 = v17 + 2;
          v48 = v20 - 4;
          v21 = (v20 - 4);
          memcpy(&a5[v47], &v45[v19[2]], v21);
          if (AVE_Log_CheckLevel(0xD4u, 8))
          {
            v22 = AVE_Log_CheckConsole(0xD4u);
            v23 = AVE_GetCurrTime();
            v24 = AVE_Log_GetLevelStr(8);
            v25 = *v19;
            v26 = v19[1];
            if (v22)
            {
              printf("%lld %d AVE %s: type %d layer id %d\n", v23, 212, v24, *v19, v26);
              v23 = AVE_GetCurrTime();
              v24 = AVE_Log_GetLevelStr(8);
              v25 = *v19;
              v26 = v19[1];
            }

            syslog(3, "%lld %d AVE %s: type %d layer id %d", v23, 212, v24, v25, v26);
          }

          if (v21)
          {
            v27 = 0;
            v28 = v44;
            do
            {
              if (AVE_Log_CheckLevel(0xD4u, 8))
              {
                v29 = AVE_Log_CheckConsole(0xD4u);
                v30 = AVE_GetCurrTime();
                v31 = AVE_Log_GetLevelStr(8);
                v32 = &v28[v19[2]];
                v33 = *v32;
                if (v29)
                {
                  printf("%lld %d AVE %s: %p: 0x%x\n", v30, 212, v31, &v28[v19[2]], v33);
                  v30 = AVE_GetCurrTime();
                  v31 = AVE_Log_GetLevelStr(8);
                  v32 = &v28[v19[2]];
                  v33 = *v32;
                }

                syslog(3, "%lld %d AVE %s: %p: 0x%x", v30, 212, v31, v32, v33);
              }

              v27 += 2;
              v28 += 2;
            }

            while (v27 < v21);
          }

          v17 = v47 + v48;
          v15 = v49 + 1;
          a4 = v46;
          v13 = *v46;
          v18 = a1;
        }

        ++v14;
      }

      while (v14 < v13);
      a3 = v44;
      if (v15)
      {
        *(a5 + 1) = BYTE1(v15) | (v15 << 8);
        goto LABEL_31;
      }
    }

    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v34 = AVE_Log_CheckConsole(0xD4u);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | no PS %d\n", v35, 212, v36, "AVE_PS_ComposeNALUArray", 489, "cnt != 0", *a4);
        v35 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        a4 = v46;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | no PS %d", v35);
    }
  }

  v17 = 4294966295;
LABEL_31:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v37 = AVE_Log_CheckConsole(0xD4u);
    v38 = AVE_GetCurrTime();
    v39 = AVE_Log_GetLevelStr(8);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %p %p %d\n", v38, 212, v39, "AVE_PS_ComposeNALUArray", a1, a2, a3, a4, a5, v17);
      v40 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %p %p %d", v40, 212, v43, "AVE_PS_ComposeNALUArray");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %p %p %d", v38, 212, v39, "AVE_PS_ComposeNALUArray");
    }
  }

  return v17;
}

uint64_t AVE_PS_Compose_hvcC(uint64_t a1, char *a2, int *a3, uint64_t a4, int a5, const void *a6, int a7, uint64_t a8, _BYTE *a9, int a10)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v14 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d\n", CurrTime, 212, LevelStr, "AVE_PS_Compose_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      v48 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d", v48, 212, v17, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d", CurrTime, 212, LevelStr, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }
  }

  *a9 = 1;
  v18 = *(a8 + 20);
  LOBYTE(v18) = (32 * HEVC_FindTierFlag(*(a8 + 24))) | (v18 << 6);
  a9[1] = v18 | HEVC_FindProfileIdc(*(a8 + 28));
  AVE_PS_Compose_general_profile_compatibility_flag(a8, (a9 + 2), 4);
  AVE_PS_Compose_general_constraint_indicator_flags(a8, a9 + 6, 6u);
  a9[12] = HEVC_FindLevelIdc(*(a8 + 80));
  *(a9 + 13) = 240;
  a9[15] = -4;
  a9[16] = *(a8 + 452) | 0xFC;
  a9[17] = *(a8 + 496) | 0xF8;
  a9[18] = *(a8 + 500) | 0xF8;
  *(a9 + 19) = 0;
  a9[21] = 11;
  v19 = AVE_PS_CalcNumOfType(a3, a1);
  v20 = a4 != 0;
  if (a6)
  {
    ++v20;
  }

  a9[22] = v20 + v19;
  v21 = AVE_PS_ComposeNALUArray(a1, 1u, a2, a3, a9 + 23);
  if (v21 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v32 = AVE_Log_CheckConsole(0xD4u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose VPS failed\n", v33, 212, v34, "AVE_PS_Compose_hvcC", 593, "retOffset > 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose VPS failed");
    }

    goto LABEL_32;
  }

  v22 = (v21 + 23);
  v23 = AVE_PS_ComposeNALUArray(a1, 2u, a2, a3, &a9[v22]);
  if (v23 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v35 = AVE_Log_CheckConsole(0xD4u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose SPS failed\n", v36, 212, v37, "AVE_PS_Compose_hvcC", 599, "retOffset > 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose SPS failed");
    }

    goto LABEL_32;
  }

  v24 = (v23 + v22);
  v25 = AVE_PS_ComposeNALUArray(a1, 3u, a2, a3, &a9[v24]);
  if (v25 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v38 = AVE_Log_CheckConsole(0xD4u);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose PPS failed\n", v39, 212, v40, "AVE_PS_Compose_hvcC", 605, "retOffset > 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose PPS failed");
    }

LABEL_32:
    v41 = 4294966296;
    goto LABEL_33;
  }

  v26 = v25 + v24;
  if (a4)
  {
    v27 = &a9[v26];
    *v27 = -89;
    *(v27 + 1) = 256;
    *(v27 + 3) = ((a5 - 4) >> 8) | ((a5 - 4) << 8);
    v26 = (v26 + 5);
    memcpy(&a9[v26], (a4 + 4), a5 - 4);
    LODWORD(v26) = v26 + a5 - 4;
  }

  if (a6)
  {
    v28 = &a9[v26];
    *v28 = -89;
    *(v28 + 1) = 256;
    *(v28 + 3) = BYTE1(a7) | (a7 << 8);
    v26 = v26 + 5;
    memcpy(&a9[v26], a6, a7);
    LODWORD(v26) = v26 + a7;
  }

  if (v26 <= a10)
  {
    v41 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v29 = AVE_Log_CheckConsole(0xD4u);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d offset > num %d > %d\n", v30, 212, v31, "AVE_PS_Compose_hvcC", 651, v26, a10);
        v30 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d offset > num %d > %d", v30);
    }

    v41 = 4294966277;
  }

LABEL_33:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v42 = AVE_Log_CheckConsole(0xD4u);
    v43 = AVE_GetCurrTime();
    v44 = AVE_Log_GetLevelStr(8);
    if (v42)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d\n", v43, 212, v44, "AVE_PS_Compose_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v41);
      v45 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d", v45, 212, v47, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d", v43, 212, v44, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }
  }

  return v41;
}

uint64_t AVE_PS_CalcNumOfType(int *a1, int a2)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v4 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", CurrTime, 212, LevelStr, "AVE_PS_CalcNumOfType", a1, a2);
      v7 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v7, 212, v20, "AVE_PS_CalcNumOfType", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", CurrTime, 212, LevelStr, "AVE_PS_CalcNumOfType", a1, a2);
    }
  }

  if (a1)
  {
    v8 = 0;
    for (i = 1; i != 4; ++i)
    {
      if (*a1 >= 1)
      {
        v10 = *a1;
        v11 = a1 + 2;
        while (*(v11 - 1) != i || *v11 != a2)
        {
          v11 += 4;
          if (!--v10)
          {
            goto LABEL_14;
          }
        }

        v8 = (v8 + 1);
      }

LABEL_14:
      ;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v12 = AVE_Log_CheckConsole(0xD4u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d\n", v13, 212, v14, "AVE_PS_CalcNumOfType", 386, "psInfo != __null", 0, a2);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d", v13, 212);
    }

    v8 = 0xFFFFFFFFLL;
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v15 = AVE_Log_CheckConsole(0xD4u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v16, 212, v17, "AVE_PS_CalcNumOfType", a1, a2, v8);
      v18 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v16);
    }
  }

  return v8;
}

uint64_t AVE_PS_CalcSizeOflhvC(int a1, unsigned int *a2)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v4 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %d %p\n", CurrTime, 212, LevelStr, "AVE_PS_CalcSizeOflhvC", a1, a2);
      v7 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v7, 212, v18, "AVE_PS_CalcSizeOflhvC", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", CurrTime, 212, LevelStr, "AVE_PS_CalcSizeOflhvC", a1, a2);
    }
  }

  v19 = 0;
  v8 = *a2;
  if (v8 < 1)
  {
    v10 = 6;
  }

  else
  {
    v9 = a2 + 2;
    v10 = 6;
    do
    {
      v11 = v9[2];
      if (v11)
      {
        if (*v9 == a1)
        {
          v12 = *(v9 - 1);
          if ((v12 & 0xFFFFFFFE) == 2)
          {
            if ((*(&v19 + v12) & 1) == 0)
            {
              LODWORD(v10) = v10 + 3;
              *(&v19 + v12) = 1;
            }

            v10 = v11 + v10 - 2;
          }
        }
      }

      v9 += 4;
      --v8;
    }

    while (v8);
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v13 = AVE_Log_CheckConsole(0xD4u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d\n", v14, 212, v15, "AVE_PS_CalcSizeOflhvC", a1, a2, v10);
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v14);
    }
  }

  return v10;
}

uint64_t AVE_PS_Compose_lhvC(int a1, char *a2, int *a3, const void *a4, _BYTE *a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v12 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %d\n", CurrTime, 212, LevelStr, "AVE_PS_Compose_lhvC", a2, a3, a4, a5, a6);
      v15 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %d", v15, 212, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %d", CurrTime, 212, LevelStr);
    }
  }

  *a5 = -67047423;
  a5[4] = -53;
  a5[5] = AVE_PS_CalcNumOfType(a3, a1);
  v16 = AVE_PS_ComposeNALUArray(a1, 2u, a2, a3, a5 + 6);
  if (v16 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v20 = AVE_Log_CheckConsole(0xD4u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose SPS failed\n", v21, 212, v22, "AVE_PS_Compose_lhvC", 789, "retOffset > 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose SPS failed");
    }

    goto LABEL_18;
  }

  v17 = (v16 + 6);
  v18 = AVE_PS_ComposeNALUArray(a1, 3u, a2, a3, &a5[v17]);
  if (v18 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xD4u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose PPS failed\n", v24, 212, v25, "AVE_PS_Compose_lhvC", 795, "retOffset > 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose PPS failed");
    }

LABEL_18:
    v19 = 4294966296;
    goto LABEL_19;
  }

  if (v18 + v17 <= a6)
  {
    v19 = 0;
  }

  else
  {
    v19 = 4294966277;
  }

LABEL_19:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v26 = AVE_Log_CheckConsole(0xD4u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(8);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d %d\n", v27, 212, v28, "AVE_PS_Compose_lhvC", a2, a3, a4, a5, a6, v19);
      v29 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d %d", v29, 212, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d %d", v27, 212, v28);
    }
  }

  return v19;
}

uint64_t AVE_PS_Make_avcC(uint64_t a1, char *a2, int *a3, int *a4, __CFData **a5)
{
  v9 = a1;
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v10 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Make_avcC", v9, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v52 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v52);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", CurrTime, 212, LevelStr);
    }
  }

  if (!a2 || !a3 || !a4 || !a5)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v24 = AVE_Log_CheckConsole(0xD4u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v25, 212, v26, "AVE_PS_Make_avcC", 835, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null", v9, a2, a3, a4, a5);
        v27 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v27, 212, v54, "AVE_PS_Make_avcC", 835);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v25, 212, v26, "AVE_PS_Make_avcC", 835);
      }
    }

    goto LABEL_29;
  }

  *a5 = 0;
  v14 = AVE_PS_CalcSizeOfavcC(v9, a3, *a4);
  if (v14 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v28 = AVE_Log_CheckConsole(0xD4u);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d\n", v29, 212, v30, "AVE_PS_Make_avcC", 842, "size > 0", v9, a2, a3, a4, v14);
        v31 = AVE_GetCurrTime();
        v55 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v31, 212, v55, "AVE_PS_Make_avcC", 842);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v29, 212, v30, "AVE_PS_Make_avcC", 842);
      }
    }

LABEL_29:
    v19 = 4294966296;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(0, v14);
  if (Mutable)
  {
    v60 = a5;
    v16 = Mutable;
    CFDataSetLength(Mutable, v14);
    v59 = v16;
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    if (MutableBytePtr)
    {
      v18 = MutableBytePtr;
      v19 = AVE_PS_Compose_avcC(v9, a2, a3, a4, MutableBytePtr, v14);
      if (AVE_Log_CheckLevel(0xD4u, 8))
      {
        v20 = AVE_Log_CheckConsole(0xD4u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(8);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d avcC data: size %d\n", v21, 212, v22, "AVE_PS_Make_avcC", 861, v14);
          v23 = AVE_GetCurrTime();
          v53 = AVE_Log_GetLevelStr(8);
          syslog(3, "%lld %d AVE %s: %s:%d avcC data: size %d", v23, 212, v53, "AVE_PS_Make_avcC", 861, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d avcC data: size %d", v21, 212, v22, "AVE_PS_Make_avcC", 861, v14);
        }
      }

      v58 = v9;
      for (i = 0; i < v14; i += 2)
      {
        if (AVE_Log_CheckLevel(0xD4u, 8))
        {
          v46 = AVE_Log_CheckConsole(0xD4u);
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(8);
          v49 = *v18;
          if (v46)
          {
            printf("%lld %d AVE %s: %p: 0x%x\n", v47, 212, v48, v18, v49);
            v50 = AVE_GetCurrTime();
            v51 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v50, 212, v51, v18, *v18);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v47, 212, v48, v18, v49);
          }
        }

        v18 += 2;
      }

      v44 = v59;
      a5 = v60;
      *v60 = v59;
      v9 = v58;
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v36 = AVE_Log_CheckConsole(0xD4u);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_avcC", 854, "pData != __null", v9, a2, a3, a4, v16, v14);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_avcC", 854, "pData != __null", v9, a2, a3, a4, v16, v14);
      v44 = v16;
      v19 = 4294966293;
    }

    else
    {
      v19 = 4294966293;
      v44 = v16;
    }

    CFRelease(v44);
    goto LABEL_30;
  }

  if (AVE_Log_CheckLevel(0xD4u, 4))
  {
    v32 = AVE_Log_CheckConsole(0xD4u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d\n", v33, 212, v34, "AVE_PS_Make_avcC", 847, "pCFData != __null", v9, a2, a3, a4, v14);
      v35 = AVE_GetCurrTime();
      v56 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v35, 212, v56, "AVE_PS_Make_avcC", 847);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v33, 212, v34, "AVE_PS_Make_avcC", 847);
    }
  }

  v19 = 4294966293;
LABEL_30:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v39 = AVE_Log_CheckConsole(0xD4u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(8);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v40, 212, v41, "AVE_PS_Make_avcC", v9, a2, a3, a4, a5, v19);
      v42 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v42, 212, v57, "AVE_PS_Make_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v40, 212, v41, "AVE_PS_Make_avcC");
    }
  }

  return v19;
}

uint64_t AVE_PS_Make_avcC_Dict(uint64_t a1, char *a2, int *a3, int *a4, __CFDictionary **a5)
{
  v47 = 0;
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v10 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Make_avcC_Dict", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v41);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", CurrTime, 212, LevelStr);
    }
  }

  if (a2 && a3 && a4 && a5)
  {
    *a5 = 0;
    avcC = AVE_PS_Make_avcC(a1, a2, a3, a4, &v47);
    if (avcC)
    {
      v15 = avcC;
      if (AVE_Log_CheckLevel(0xD4u, 4))
      {
        v16 = AVE_Log_CheckConsole(0xD4u);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d\n", v17, 212, v18, "AVE_PS_Make_avcC_Dict", 918, "ret == 0", a1, a2, a3, a4, a5, v15);
          v19 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v19, 212, v42, "AVE_PS_Make_avcC_Dict", 918, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v17, 212, v18, "AVE_PS_Make_avcC_Dict", 918, "ret == 0");
        }
      }

      v25 = 0;
      v27 = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v25 = Mutable;
        CFDictionaryAddValue(Mutable, @"avcC", v47);
        v26 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (v26)
        {
          v27 = v26;
          CFDictionaryAddValue(v26, *MEMORY[0x29EDB92C8], v25);
          CFDictionaryAddValue(v27, *MEMORY[0x29EDB92B8], @"H.264");
          v15 = 0;
          *a5 = v27;
          goto LABEL_33;
        }

        if (AVE_Log_CheckLevel(0xD4u, 4))
        {
          v32 = AVE_Log_CheckConsole(0xD4u);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p\n", v33, 212, v34, "AVE_PS_Make_avcC_Dict", 932, "pDict != __null", a1, a2, a3, a4, v25);
            v35 = AVE_GetCurrTime();
            v45 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p", v35, 212, v45, "AVE_PS_Make_avcC_Dict", 932);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p", v33, 212, v34, "AVE_PS_Make_avcC_Dict", 932);
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD4u, 4))
        {
          v28 = AVE_Log_CheckConsole(0xD4u);
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p\n", v29, 212, v30, "AVE_PS_Make_avcC_Dict", 924, "pDataDict != __null", a2, a3, a4, v47);
            v31 = AVE_GetCurrTime();
            v44 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p", v31, 212, v44, "AVE_PS_Make_avcC_Dict");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p", v29, 212, v30, "AVE_PS_Make_avcC_Dict");
          }
        }

        v25 = 0;
      }

      v27 = 0;
      v15 = 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v20 = AVE_Log_CheckConsole(0xD4u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v21, 212, v22, "AVE_PS_Make_avcC_Dict", 911, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null", a1, a2, a3, a4, a5);
        v23 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v23, 212, v43, "AVE_PS_Make_avcC_Dict", 911);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v21, 212, v22, "AVE_PS_Make_avcC_Dict", 911);
      }
    }

    v25 = 0;
    v27 = 0;
    v15 = 4294966296;
  }

LABEL_33:
  if (v47)
  {
    CFRelease(v47);
    v47 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v15 && v27)
  {
    CFRelease(v27);
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v36 = AVE_Log_CheckConsole(0xD4u);
    v37 = AVE_GetCurrTime();
    v38 = AVE_Log_GetLevelStr(8);
    if (v36)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_avcC_Dict", a1, a2, a3, a4, a5, v15);
      v39 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v39, 212, v46, "AVE_PS_Make_avcC_Dict");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_avcC_Dict");
    }
  }

  return v15;
}

uint64_t AVE_PS_Make_hvcC(uint64_t a1, char *a2, unsigned int *a3, const void *a4, int a5, const void *a6, int a7, const void *a8, __CFData **a9)
{
  v13 = a9;
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v14 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Make_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v17 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v17, 212, v54, "AVE_PS_Make_hvcC", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", CurrTime, 212, LevelStr, "AVE_PS_Make_hvcC", a1, a2, a3);
    }
  }

  if (!a2 || !a3 || !a8 || !a9 || (a4 == 0) != (a5 == 0))
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v18 = AVE_Log_CheckConsole(0xD4u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p\n", v19, 212, v20, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1, a2, a3, a4, a5, a8, a9);
        v21 = AVE_GetCurrTime();
        v55 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v21, 212, v55, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v19, 212, v20, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }
    }

    goto LABEL_20;
  }

  v64 = a4;
  *a9 = 0;
  v22 = AVE_PS_CalcSizeOfhvcC(a1, a3, a5, a7);
  if (v22 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v37 = AVE_Log_CheckConsole(0xD4u);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d\n", v38, 212, v39, "AVE_PS_Make_hvcC", 1010, "size > 0", a1, a2, a3, v64, a5, a8, v22);
        v40 = AVE_GetCurrTime();
        a4 = v64;
        v58 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d", v40, 212, v58, "AVE_PS_Make_hvcC", 1010, "size > 0", a1);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d", v38, 212, v39, "AVE_PS_Make_hvcC", 1010, "size > 0", a1);
      }

LABEL_20:
      v27 = 4294966296;
      goto LABEL_21;
    }

    v27 = 4294966296;
    goto LABEL_37;
  }

  Mutable = CFDataCreateMutable(0, v22);
  if (!Mutable)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v41 = AVE_Log_CheckConsole(0xD4u);
      v42 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(4);
      if (v41)
      {
        v61 = v22;
        a4 = v64;
        printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d\n", v42, 212, v43, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1, a2, a3, v64, a5, a8, v61);
        v44 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d", v44, 212, v59, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d", v42, 212, v43, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1);
      }

      v27 = 4294966293;
      goto LABEL_21;
    }

    v27 = 4294966293;
LABEL_37:
    a4 = v64;
    goto LABEL_21;
  }

  v24 = Mutable;
  CFDataSetLength(Mutable, v22);
  MutableBytePtr = CFDataGetMutableBytePtr(v24);
  if (!MutableBytePtr)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v45 = AVE_Log_CheckConsole(0xD4u);
      v46 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(4);
      if (v45)
      {
        v62 = v22;
        a4 = v64;
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d\n", v46, 212, v47, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2, a3, v64, a5, a8, v24, v62);
        v48 = AVE_GetCurrTime();
        v60 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d", v48, 212, v60, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d", v46, 212, v47, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2);
      }

      v27 = 4294966293;
    }

    else
    {
      v27 = 4294966293;
      a4 = v64;
    }

LABEL_53:
    CFRelease(v24);
    goto LABEL_21;
  }

  v26 = MutableBytePtr;
  v63 = a8;
  v27 = AVE_PS_Compose_hvcC(a1, a2, a3, v64, a5, a6, a7, a8, MutableBytePtr, v22);
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v28 = AVE_Log_CheckConsole(0xD4u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(8);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d hvcC data: size %d\n", v29, 212, v30, "AVE_PS_Make_hvcC", 1030, v22);
      v31 = AVE_GetCurrTime();
      v56 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s:%d hvcC data: size %d", v31, 212, v56, "AVE_PS_Make_hvcC", 1030, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d hvcC data: size %d", v29, 212, v30, "AVE_PS_Make_hvcC", 1030, v22);
    }
  }

  for (i = 0; i < v22; i += 2)
  {
    if (AVE_Log_CheckLevel(0xD4u, 8))
    {
      v50 = AVE_Log_CheckConsole(0xD4u);
      v51 = AVE_GetCurrTime();
      v52 = AVE_Log_GetLevelStr(8);
      v53 = *v26;
      if (v50)
      {
        printf("%lld %d AVE %s: %p: 0x%x\n", v51, 212, v52, v26, v53);
        v51 = AVE_GetCurrTime();
        v52 = AVE_Log_GetLevelStr(8);
        v53 = *v26;
      }

      syslog(3, "%lld %d AVE %s: %p: 0x%x", v51, 212, v52, v26, v53);
    }

    ++v26;
  }

  v13 = a9;
  *a9 = v24;
  a4 = v64;
  a8 = v63;
  if (v27)
  {
    goto LABEL_53;
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v32 = AVE_Log_CheckConsole(0xD4u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(8);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d\n", v33, 212, v34, "AVE_PS_Make_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, v13, v27);
      v35 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v35, 212, v57, "AVE_PS_Make_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v33, 212, v34, "AVE_PS_Make_hvcC", a1, a2, a3, a4);
    }
  }

  return v27;
}

uint64_t AVE_PS_Make_hvcC_Dict(uint64_t a1, char *a2, unsigned int *a3, const void *a4, int a5, const void *a6, int a7, const void *a8, __CFDictionary **a9)
{
  v55 = 0;
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v11 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v14 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v14, 212, v43, "AVE_PS_Make_hvcC_Dict", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", CurrTime, 212, LevelStr, "AVE_PS_Make_hvcC_Dict", a1, a2, a3);
    }
  }

  if (a2 && a3 && a8 && a9 && (a4 == 0) == (a5 == 0))
  {
    *a9 = 0;
    hvcC = AVE_PS_Make_hvcC(a1, a2, a3, a4, a5, a6, a7, a8, &v55);
    if (hvcC)
    {
      v20 = hvcC;
      if (AVE_Log_CheckLevel(0xD4u, 4))
      {
        v21 = AVE_Log_CheckConsole(0xD4u);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d\n", v22, 212, v23, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2, a3, a4, a5, a8, a9, v20);
          v24 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d", v24, 212, v45, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d", v22, 212, v23, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2);
        }
      }

      v25 = 0;
      v26 = 0;
    }

    else
    {
      v32 = *MEMORY[0x29EDB8ED8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v25 = Mutable;
        CFDictionaryAddValue(Mutable, @"hvcC", v55);
        v34 = CFDictionaryCreateMutable(v32, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (v34)
        {
          v26 = v34;
          CFDictionaryAddValue(v34, *MEMORY[0x29EDB92C8], v25);
          CFDictionaryAddValue(v26, *MEMORY[0x29EDB92B8], @"HEVC");
          v20 = 0;
          *a9 = v26;
          goto LABEL_19;
        }

        if (AVE_Log_CheckLevel(0xD4u, 4))
        {
          v39 = AVE_Log_CheckConsole(0xD4u);
          v40 = AVE_GetCurrTime();
          v41 = AVE_Log_GetLevelStr(4);
          if (v39)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p\n", v40, 212, v41, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1, a2, a3, a4, a5, a8, v25);
            v42 = AVE_GetCurrTime();
            v48 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p", v42, 212, v48, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p", v40, 212, v41, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1);
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD4u, 4))
        {
          v35 = AVE_Log_CheckConsole(0xD4u);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          if (v35)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p\n", v36, 212, v37, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1, a2, a3, a4, a5, a8, v55);
            v38 = AVE_GetCurrTime();
            v47 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p", v38, 212, v47, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p", v36, 212, v37, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1);
          }
        }

        v25 = 0;
      }

      v26 = 0;
      v20 = 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v15 = AVE_Log_CheckConsole(0xD4u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p\n", v16, 212, v17, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1, a2, a3, a4, a5, a8, a9);
        v18 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v18, 212, v44, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v16, 212, v17, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }
    }

    v25 = 0;
    v26 = 0;
    v20 = 4294966296;
  }

LABEL_19:
  if (v55)
  {
    CFRelease(v55);
    v55 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v20 && v26)
  {
    CFRelease(v26);
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v27 = AVE_Log_CheckConsole(0xD4u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(8);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d\n", v28, 212, v29, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4, a5, a6, a7, a8, a9, v20);
      v30 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v30, 212, v46, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v28, 212, v29, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4);
    }
  }

  return v20;
}

uint64_t AVE_PS_Make_lhvC(uint64_t a1, char *a2, unsigned int *a3, const void *a4, __CFData **a5)
{
  v9 = a1;
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v10 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Make_lhvC", v9, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v52 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v52);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", CurrTime, 212, LevelStr);
    }
  }

  if (!a2 || !a3 || !a4 || !a5)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v24 = AVE_Log_CheckConsole(0xD4u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v25, 212, v26, "AVE_PS_Make_lhvC", 1172, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null", v9, a2, a3, a4, a5);
        v27 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v27, 212, v54, "AVE_PS_Make_lhvC", 1172);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v25, 212, v26, "AVE_PS_Make_lhvC", 1172);
      }
    }

    goto LABEL_29;
  }

  *a5 = 0;
  v14 = AVE_PS_CalcSizeOflhvC(v9, a3);
  if (v14 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v28 = AVE_Log_CheckConsole(0xD4u);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d\n", v29, 212, v30, "AVE_PS_Make_lhvC", 1179, "size > 0", v9, a2, a3, a4, v14);
        v31 = AVE_GetCurrTime();
        v55 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v31, 212, v55, "AVE_PS_Make_lhvC", 1179);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v29, 212, v30, "AVE_PS_Make_lhvC", 1179);
      }
    }

LABEL_29:
    v19 = 4294966296;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(0, v14);
  if (Mutable)
  {
    v60 = a4;
    v16 = Mutable;
    CFDataSetLength(Mutable, v14);
    v59 = v16;
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    if (MutableBytePtr)
    {
      v18 = MutableBytePtr;
      v58 = a5;
      v19 = AVE_PS_Compose_lhvC(v9, a2, a3, v60, MutableBytePtr, v14);
      if (AVE_Log_CheckLevel(0xD4u, 8))
      {
        v20 = AVE_Log_CheckConsole(0xD4u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(8);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d lhvC data: size %d\n", v21, 212, v22, "AVE_PS_Make_lhvC", 1198, v14);
          v23 = AVE_GetCurrTime();
          v53 = AVE_Log_GetLevelStr(8);
          syslog(3, "%lld %d AVE %s: %s:%d lhvC data: size %d", v23, 212, v53, "AVE_PS_Make_lhvC", 1198, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d lhvC data: size %d", v21, 212, v22, "AVE_PS_Make_lhvC", 1198, v14);
        }
      }

      for (i = 0; i < v14; i += 2)
      {
        if (AVE_Log_CheckLevel(0xD4u, 8))
        {
          v46 = AVE_Log_CheckConsole(0xD4u);
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(8);
          v49 = *v18;
          if (v46)
          {
            printf("%lld %d AVE %s: %p: 0x%x\n", v47, 212, v48, v18, v49);
            v50 = AVE_GetCurrTime();
            v51 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v50, 212, v51, v18, *v18);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v47, 212, v48, v18, v49);
          }
        }

        ++v18;
      }

      a5 = v58;
      v44 = v59;
      *v58 = v59;
      a4 = v60;
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v36 = AVE_Log_CheckConsole(0xD4u);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_lhvC", 1191, "pData != __null", v9, a2, a3, a4, v16, v14);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_lhvC", 1191, "pData != __null", v9, a2, a3, a4, v16, v14);
      v44 = v16;
      v19 = 4294966293;
    }

    else
    {
      v19 = 4294966293;
      v44 = v16;
    }

    CFRelease(v44);
    goto LABEL_30;
  }

  if (AVE_Log_CheckLevel(0xD4u, 4))
  {
    v32 = AVE_Log_CheckConsole(0xD4u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d\n", v33, 212, v34, "AVE_PS_Make_lhvC", 1184, "pCFData != __null", v9, a2, a3, a4, v14);
      v35 = AVE_GetCurrTime();
      v56 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v35, 212, v56, "AVE_PS_Make_lhvC", 1184);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v33, 212, v34, "AVE_PS_Make_lhvC", 1184);
    }
  }

  v19 = 4294966293;
LABEL_30:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v39 = AVE_Log_CheckConsole(0xD4u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(8);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v40, 212, v41, "AVE_PS_Make_lhvC", v9, a2, a3, a4, a5, v19);
      v42 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v42, 212, v57, "AVE_PS_Make_lhvC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v40, 212, v41, "AVE_PS_Make_lhvC");
    }
  }

  return v19;
}

uint64_t AVE_PS_Add_lhvC_Dict(uint64_t a1, char *a2, unsigned int *a3, const void *a4, const __CFDictionary *a5)
{
  v39 = 0;
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v10 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Add_lhvC_Dict", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", CurrTime, 212, LevelStr);
    }
  }

  if (a2 && a3 && a4 && a5)
  {
    lhvC = AVE_PS_Make_lhvC(a1, a2, a3, a4, &v39);
    if (lhvC)
    {
      v15 = lhvC;
      if (AVE_Log_CheckLevel(0xD4u, 4))
      {
        v16 = AVE_Log_CheckConsole(0xD4u);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d\n", v17, 212, v18, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0", a1, a2, a3, a4, a5, v15);
          v19 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v19, 212, v35, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v17, 212, v18, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0");
        }
      }
    }

    else
    {
      Value = CFDictionaryGetValue(a5, *MEMORY[0x29EDB92C8]);
      if (Value)
      {
        CFDictionaryAddValue(Value, @"lhvC", v39);
        v15 = 0;
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD4u, 4))
        {
          v25 = AVE_Log_CheckConsole(0xD4u);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p\n", v26, 212, v27, "AVE_PS_Add_lhvC_Dict", 1342, "pDataDict != __null", a1, a2, a3, a4, v39);
            v28 = AVE_GetCurrTime();
            v37 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p", v28, 212, v37, "AVE_PS_Add_lhvC_Dict", 1342);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p", v26, 212, v27, "AVE_PS_Add_lhvC_Dict", 1342);
          }
        }

        v15 = 4294966293;
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v20 = AVE_Log_CheckConsole(0xD4u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v21, 212, v22, "AVE_PS_Add_lhvC_Dict", 1331, "pInData != __null && pInfo != __null && pSPS != __null && pCFDict != __null", a1, a2, a3, a4, a5);
        v23 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v23, 212, v36, "AVE_PS_Add_lhvC_Dict", 1331);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v21, 212, v22, "AVE_PS_Add_lhvC_Dict", 1331);
      }
    }

    v15 = 4294966296;
  }

  if (v39)
  {
    CFRelease(v39);
    v39 = 0;
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v29 = AVE_Log_CheckConsole(0xD4u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(8);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v30, 212, v31, "AVE_PS_Add_lhvC_Dict", a1, a2, a3, a4, a5, v15);
      v32 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v32, 212, v38, "AVE_PS_Add_lhvC_Dict");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v30, 212, v31, "AVE_PS_Add_lhvC_Dict");
    }
  }

  return v15;
}