__int16 *GetConfig(void)
{
  {
    byte_280C6616A = 0;
    unk_280C6616C = 0;
    bzero(&unk_280C66178, 0xB000uLL);
  }

  v0 = GetConfig(void)::config;
  if (!GetConfig(void)::config)
  {
    v0 = &GetConfig(void)::s_config;
    GetConfig(void)::config = &GetConfig(void)::s_config;
    GetConfig(void)::s_config = 0;
    HDRConfig::CreateAllConfigEntries(&GetConfig(void)::s_config);
  }

  return v0;
}

uint64_t HDRConfig::UpdateConfigEntry(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = 0;
  v5 = a1 + 88 * a2;
  v7 = *(v5 + 16);
  v6 = v5 + 16;
  *v6 = v7 | a3;
  while (((a3 >> v4) & 1) == 0)
  {
LABEL_16:
    if (++v4 == 13)
    {
      return 1;
    }
  }

  switch(v4)
  {
    case 1:
      *(v6 + 8) = *(a4 + 8);
      goto LABEL_16;
    case 2:
      *(v6 + 12) = *(a4 + 12);
      goto LABEL_16;
    case 3:
      *(v6 + 16) = *(a4 + 16);
      goto LABEL_16;
    case 4:
      *(v6 + 24) = *(a4 + 24);
      goto LABEL_16;
    case 5:
      *(v6 + 28) = *(a4 + 28);
      goto LABEL_16;
    case 6:
      *(v6 + 32) = *(a4 + 32);
      goto LABEL_16;
    case 7:
      *(v6 + 40) = *(a4 + 40);
      goto LABEL_16;
    case 8:
      *(v6 + 48) = *(a4 + 48);
      goto LABEL_16;
    case 9:
      *(v6 + 56) = *(a4 + 56);
      goto LABEL_16;
    case 10:
      *(v6 + 64) = *(a4 + 64);
      goto LABEL_16;
    case 11:
      *(v6 + 72) = *(a4 + 72);
      goto LABEL_16;
    case 12:
      *(v6 + 80) = *(a4 + 80);
      break;
    default:
      *(v6 + 4) = *(a4 + 4);
      goto LABEL_16;
  }

  return 1;
}

uint64_t HDRConfig::ReadConfigEntry(uint64_t a1, unsigned int a2)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1) != 1)
  {
    return 1;
  }

  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v4 = logInstanceID;
    }

    else
    {
      v4 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 88 * a2 + 32);
      *buf = 134218242;
      v44 = WORD1(v4);
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Warning: Attempting to read defaults writes in release builds! key = %@\n", buf, 0x16u);
    }

    prevLogInstanceID = v4;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 88 * a2 + 32);
    *buf = 138412290;
    v44 = v7;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Warning: Attempting to read defaults writes in release builds! key = %@\n", buf, 0xCu);
  }

  v8 = (a1 + 88 * a2);
  if (!v8[5])
  {
    return 0;
  }

  v9 = (v8 + 4);
  keyExistsAndHasValidFormat = 0;
  v10 = v8[10];
  if (v10 <= 1)
  {
    if (!v10)
    {
      AppIntegerValue = CFPreferencesGetAppIntegerValue(*(v9 + 2), @"com.apple.hdrprocessing", &keyExistsAndHasValidFormat);
      if (!keyExistsAndHasValidFormat)
      {
        v12 = *v9;
        goto LABEL_58;
      }

      *(v9 + 40) = AppIntegerValue != 0;
LABEL_141:
      result = 1;
      goto LABEL_142;
    }

    if (v10 != 1)
    {
      goto LABEL_50;
    }

    v18 = CFPreferencesGetAppIntegerValue(*(v9 + 2), @"com.apple.hdrprocessing", &keyExistsAndHasValidFormat);
    v12 = *v9;
    if (!keyExistsAndHasValidFormat)
    {
      goto LABEL_58;
    }

    if ((v12 & 0x400) != 0)
    {
      v19 = v9[2];
      v20 = v9[16];
      if ((v19 & 1) == 0)
      {
        if (v20 > v18)
        {
          if ((v12 & 0x800) == 0)
          {
            goto LABEL_137;
          }

          v21 = 0;
          goto LABEL_87;
        }

        v21 = (v19 & 2) == 0 || v20 != v18;
        if ((v12 & 0x800) == 0)
        {
          goto LABEL_136;
        }

LABEL_86:
        v19 = v9[2];
        if (v19)
        {
          if (v9[18] < v18)
          {
            v18 = v9[18];
          }

          goto LABEL_136;
        }

LABEL_87:
        v32 = v9[18];
        if (v18 > v32)
        {
          goto LABEL_137;
        }

LABEL_88:
        v38 = (v19 & 4) == 0 || v18 != v32;
        v21 &= v38;
        goto LABEL_136;
      }

      if (v20 > v18)
      {
        v18 = v9[16];
      }
    }

    v21 = 1;
    if ((v12 & 0x800) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_86;
  }

  switch(v10)
  {
    case 2:
      v18 = CFPreferencesGetAppIntegerValue(*(v9 + 2), @"com.apple.hdrprocessing", &keyExistsAndHasValidFormat);
      v12 = *v9;
      if (!keyExistsAndHasValidFormat)
      {
        goto LABEL_58;
      }

      if ((v12 & 0x400) != 0)
      {
        v19 = v9[2];
        v22 = v9[16];
        if ((v19 & 1) == 0)
        {
          if (v22 > v18)
          {
            if ((v12 & 0x800) == 0)
            {
              goto LABEL_137;
            }

            v21 = 0;
LABEL_65:
            v32 = v9[18];
            if (v18 > v32)
            {
              goto LABEL_137;
            }

            goto LABEL_88;
          }

          v21 = (v19 & 2) == 0 || v22 != v18;
          if ((v12 & 0x800) == 0)
          {
LABEL_136:
            if (v21)
            {
LABEL_140:
              v9[10] = v18;
              goto LABEL_141;
            }

LABEL_137:
            if ((v12 & 0x200) != 0)
            {
              v18 = v9[14];
            }

            else
            {
              v18 = 0;
            }

            goto LABEL_140;
          }

LABEL_64:
          v19 = v9[2];
          if ((v19 & 1) == 0)
          {
            goto LABEL_65;
          }

          if (v9[18] < v18)
          {
            v18 = v9[18];
          }

          goto LABEL_136;
        }

        if (v22 > v18)
        {
          v18 = v9[16];
        }
      }

      v21 = 1;
      if ((v12 & 0x800) == 0)
      {
        goto LABEL_136;
      }

      goto LABEL_64;
    case 3:
      v23 = CFPreferencesGetAppIntegerValue(*(v9 + 2), @"com.apple.hdrprocessing", &keyExistsAndHasValidFormat);
      v12 = *v9;
      if (!keyExistsAndHasValidFormat)
      {
        goto LABEL_58;
      }

      v24 = 1.0;
      if ((v12 & 0x1000) != 0)
      {
        v24 = *(v9 + 10);
      }

      v25 = v23 / v24;
      if ((v12 & 0x400) != 0)
      {
        v26 = v9[2];
        v27 = *(v9 + 16);
        if ((v26 & 1) == 0)
        {
          if (v25 < v27)
          {
            if ((v12 & 0x800) == 0)
            {
              goto LABEL_119;
            }

            v28 = 0;
LABEL_71:
            v33 = *(v9 + 18);
            if (v25 > v33)
            {
              goto LABEL_119;
            }

            v34 = (v26 & 4) == 0;
            if (v25 != v33)
            {
              v34 = 1;
            }

            v28 &= v34;
LABEL_118:
            if (v28)
            {
LABEL_121:
              *(v9 + 10) = v25;
              goto LABEL_141;
            }

LABEL_119:
            v25 = 0.0;
            if ((v12 & 0x200) != 0)
            {
              v25 = *(v9 + 14);
            }

            goto LABEL_121;
          }

          v28 = (v9[2] & 2) == 0;
          if (v25 != v27)
          {
            v28 = 1;
          }

          if ((v12 & 0x800) == 0)
          {
            goto LABEL_118;
          }

LABEL_70:
          v26 = v9[2];
          if (v26)
          {
            if (*(v9 + 18) < v25)
            {
              v25 = *(v9 + 18);
            }

            goto LABEL_118;
          }

          goto LABEL_71;
        }

        if (v27 > v25)
        {
          v25 = *(v9 + 16);
        }
      }

      v28 = 1;
      if ((v12 & 0x800) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_70;
    case 4:
      v11 = CFPreferencesGetAppIntegerValue(*(v9 + 2), @"com.apple.hdrprocessing", &keyExistsAndHasValidFormat);
      v12 = *v9;
      if (keyExistsAndHasValidFormat)
      {
        v13 = 1.0;
        if ((v12 & 0x1000) != 0)
        {
          v13 = *(v9 + 10);
        }

        v14 = v11 / v13;
        if ((v12 & 0x400) != 0)
        {
          v15 = v9[2];
          v16 = *(v9 + 8);
          if ((v15 & 1) == 0)
          {
            if (v14 < v16)
            {
              if ((v12 & 0x800) == 0)
              {
                goto LABEL_126;
              }

              v17 = 0;
LABEL_79:
              v35 = *(v9 + 9);
              if (v14 > v35)
              {
                goto LABEL_126;
              }

              v36 = (v15 & 4) == 0;
              if (v14 != v35)
              {
                v36 = 1;
              }

              v17 &= v36;
LABEL_125:
              if (v17)
              {
LABEL_128:
                *(v9 + 5) = v14;
                goto LABEL_141;
              }

LABEL_126:
              v14 = 0.0;
              if ((v12 & 0x200) != 0)
              {
                v14 = *(v9 + 7);
              }

              goto LABEL_128;
            }

            v17 = (v9[2] & 2) == 0;
            if (v14 != v16)
            {
              v17 = 1;
            }

            if ((v12 & 0x800) == 0)
            {
              goto LABEL_125;
            }

LABEL_78:
            v15 = v9[2];
            if (v15)
            {
              if (*(v9 + 9) < v14)
              {
                v14 = *(v9 + 9);
              }

              goto LABEL_125;
            }

            goto LABEL_79;
          }

          if (v16 > v14)
          {
            v14 = *(v9 + 8);
          }
        }

        v17 = 1;
        if ((v12 & 0x800) == 0)
        {
          goto LABEL_125;
        }

        goto LABEL_78;
      }

LABEL_58:
      result = 1;
LABEL_144:
      v41 = v12 & 0xFFFFFF7F;
      goto LABEL_145;
  }

LABEL_50:
  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v30 = logInstanceID;
    }

    else
    {
      v30 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v44 = WORD1(v30);
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Config/HDRConfig.cpp at line 1091\n", buf, 0xCu);
    }

    result = 0;
    prevLogInstanceID = v30;
  }

  else
  {
    v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v31)
    {
      *buf = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Config/HDRConfig.cpp at line 1091\n", buf, 2u);
      result = 0;
    }
  }

LABEL_142:
  v12 = *v9;
  if (!keyExistsAndHasValidFormat)
  {
    goto LABEL_144;
  }

  v41 = v12 | 0x80;
LABEL_145:
  *v9 = v41;
  return result;
}

uint64_t HDRConfig::ReadAllConfigEntries(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  for (i = (a1 + 44); ; i += 22)
  {
    if (!*(i - 6))
    {
      goto LABEL_9;
    }

    v7 = (*(i - 7) & 0x20) != 0 ? *i : 1;
    if (v7 != a2)
    {
      goto LABEL_9;
    }

    if (!HDRConfig::ReadConfigEntry(a1, v4))
    {
      break;
    }

    v5 = 1;
LABEL_9:
    if (++v4 == 302)
    {
      return v5 & 1;
    }
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t HDRConfig::InvalidateConfigEntry(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 88 * a2;
  if (*(v2 + 20))
  {
    *(v2 + 16) &= ~0x80u;
  }

  return 1;
}

uint64_t HDRConfig::InvalidateAllConfigEntries(HDRConfig *this)
{
  v1 = 0;
  v2 = (this + 16);
  v3 = 302;
  do
  {
    if (v2[1])
    {
      *v2 &= ~0x80u;
      v1 = 1;
    }

    v2 += 22;
    --v3;
  }

  while (v3);
  return v1 & 1;
}

BOOL HDRConfig::isConfigEntryValueAvailable(uint64_t a1, unsigned int a2, char a3)
{
  v3 = a1 + 88 * a2;
  if (!*(v3 + 20))
  {
    return 0;
  }

  if (a3)
  {
    HDRConfig::ReadConfigEntry(a1, a2);
  }

  v5 = *(v3 + 16);
  return (v5 & 0x80) != 0 || (a3 & 2) == 0 && (v5 & 0x200) != 0;
}

uint64_t HDRConfig::GetConfigEntryValue(uint64_t a1, unsigned int a2, char a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1 + 88 * a2;
  if (!*(v3 + 20))
  {
    return 0;
  }

  v5 = v3 + 16;
  if (a3)
  {
    HDRConfig::ReadConfigEntry(a1, a2);
  }

  if ((*v5 & 0x80) != 0)
  {
    return v5 + 40;
  }

  if ((a3 & 2) == 0 && (*v5 & 0x200) != 0)
  {
    return v5 + 56;
  }

  if (!enableLogInstance)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v5 + 16);
      v10 = 136315650;
      v11 = "HDRConfigValue *HDRConfig::GetConfigEntryValue(HDRConfigID, uint32_t, uint32_t)";
      v12 = 1024;
      *v13 = 1191;
      *&v13[4] = 2112;
      *&v13[6] = v9;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]  %s:%d: ERROR: Neither value nor defaults value is available! Key = %@.\n", &v10, 0x1Cu);
    }

    return 0;
  }

  if (logInstanceID)
  {
    v7 = logInstanceID;
  }

  else
  {
    v7 = prevLogInstanceID;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v5 + 16);
    v10 = 134218754;
    v11 = WORD1(v7);
    v12 = 2080;
    *v13 = "HDRConfigValue *HDRConfig::GetConfigEntryValue(HDRConfigID, uint32_t, uint32_t)";
    *&v13[8] = 1024;
    *&v13[10] = 1191;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx  %s:%d: ERROR: Neither value nor defaults value is available! Key = %@.\n", &v10, 0x26u);
  }

  result = 0;
  prevLogInstanceID = v7;
  return result;
}

uint64_t HDRConfig::LogConfigEntry(uint64_t a1, unsigned int a2, unsigned int a3, int a4, char a5)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a1 + 88 * a2;
  if (!*(v5 + 20))
  {
    return 1;
  }

  v6 = v5 + 16;
  v7 = *(v5 + 16);
  if ((v7 & 0x40) == 0)
  {
    return 1;
  }

  v14 = *(v6 + 32);
  v15 = v14 == a3;
  v16 = v14 <= a3;
  v17 = v15;
  if ((a5 & 2) == 0)
  {
    v16 = v17;
  }

  if ((a5 & 4) == 0 && v16)
  {
    if ((v7 & 0x280) == 0)
    {
      return 1;
    }

LABEL_15:
    if ((a5 & 1) == 0)
    {
      v8 = 1;
      goto LABEL_44;
    }

    if ((v7 & 0x80) == 0)
    {
      strcpy(__str, "N/A");
LABEL_30:
      v8 = 1;
      goto LABEL_31;
    }

    v18 = *(v6 + 24);
    if (v18 <= 1)
    {
      if (!v18)
      {
        snprintf(__str, 0x40uLL, "%s");
        goto LABEL_30;
      }

      if (v18 == 1)
      {
        snprintf(__str, 0x40uLL, "%d");
        goto LABEL_30;
      }
    }

    else
    {
      if (v18 == 2)
      {
        snprintf(__str, 0x40uLL, "%u");
        goto LABEL_30;
      }

      if (v18 == 3 || v18 == 4)
      {
        snprintf(__str, 0x40uLL, "%f");
        goto LABEL_30;
      }
    }

    strcpy(__str, "N/A");
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v21 = logInstanceID;
      }

      else
      {
        v21 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v52 = WORD1(v21);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Config/HDRConfig.cpp at line 1242\n", buf, 0xCu);
      }

      v8 = 0;
      prevLogInstanceID = v21;
    }

    else
    {
      v8 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Config/HDRConfig.cpp at line 1242\n", buf, 2u);
        v8 = 0;
      }
    }

LABEL_31:
    if ((*(v6 + 1) & 2) != 0)
    {
      v19 = *(v6 + 24);
      if (v19 <= 1)
      {
        if (!v19)
        {
          snprintf(buf, 0x40uLL, "%s");
          goto LABEL_44;
        }

        if (v19 == 1)
        {
          snprintf(buf, 0x40uLL, "%d");
          goto LABEL_44;
        }
      }

      else
      {
        if (v19 == 2)
        {
          snprintf(buf, 0x40uLL, "%u");
          goto LABEL_44;
        }

        if (v19 == 3 || v19 == 4)
        {
          snprintf(buf, 0x40uLL, "%f");
          goto LABEL_44;
        }
      }

      strcpy(buf, "N/A");
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v22 = logInstanceID;
        }

        else
        {
          v22 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v49 = 134217984;
          v50 = WORD1(v22);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Config/HDRConfig.cpp at line 1269\n", v49, 0xCu);
        }

        v8 = 0;
        prevLogInstanceID = v22;
      }

      else
      {
        v8 = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v49 = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Config/HDRConfig.cpp at line 1269\n", v49, 2u);
          v8 = 0;
        }
      }
    }

    else
    {
      strcpy(buf, "N/A");
    }

LABEL_44:
    if (!*(v6 + 4) || (*v6 & 0x280) == 0 || !HDRConfig::GetConfigEntryValue(a1, a2, 0))
    {
      strcpy(v49, "N/A");
      goto LABEL_73;
    }

    v20 = *(v6 + 24);
    if (v20 <= 1)
    {
      if (!v20)
      {
        snprintf(v49, 0x40uLL, "%s");
        goto LABEL_73;
      }

      if (v20 == 1)
      {
        snprintf(v49, 0x40uLL, "%d");
        goto LABEL_73;
      }
    }

    else
    {
      if (v20 == 2)
      {
        snprintf(v49, 0x40uLL, "%u");
        goto LABEL_73;
      }

      if (v20 == 3 || v20 == 4)
      {
        snprintf(v49, 0x40uLL, "%f");
        goto LABEL_73;
      }
    }

    strcpy(v49, "N/A");
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v46 = logInstanceID;
      }

      else
      {
        v46 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 134217984;
        *v48 = WORD1(v46);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Config/HDRConfig.cpp at line 1302\n", v47, 0xCu);
      }

      v8 = 0;
      prevLogInstanceID = v46;
    }

    else
    {
      v8 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Config/HDRConfig.cpp at line 1302\n", v47, 2u);
        v8 = 0;
      }
    }

LABEL_73:
    if (a4 != 1)
    {
      if (a5)
      {
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v25 = logInstanceID;
          }

          else
          {
            v25 = prevLogInstanceID;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_145;
          }

          v26 = *(v6 + 16);
          *v47 = 134219010;
          *v48 = WORD1(v25);
          *&v48[8] = 2112;
          *&v48[10] = v26;
          *&v48[18] = 2080;
          *&v48[20] = v49;
          *&v48[28] = 2080;
          *&v48[30] = __str;
          *&v48[38] = 2080;
          *&v48[40] = buf;
          v27 = MEMORY[0x277D86220];
          v28 = " [1.450.54] #%04llx  %30@: %-12s    (value=%s, default=%s)\n";
          v29 = 52;
          goto LABEL_144;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(v6 + 16);
          *v47 = 138413058;
          *v48 = v31;
          *&v48[8] = 2080;
          *&v48[10] = v49;
          *&v48[18] = 2080;
          *&v48[20] = __str;
          *&v48[28] = 2080;
          *&v48[30] = buf;
          v32 = MEMORY[0x277D86220];
          v33 = " [1.450.54]  %30@: %-12s    (value=%s, default=%s)\n";
          v34 = 42;
          goto LABEL_150;
        }
      }

      else
      {
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v25 = logInstanceID;
          }

          else
          {
            v25 = prevLogInstanceID;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_145;
          }

LABEL_137:
          v40 = *(v6 + 16);
          *v47 = 134218498;
          *v48 = WORD1(v25);
          *&v48[8] = 2112;
          *&v48[10] = v40;
          *&v48[18] = 2080;
          *&v48[20] = v49;
          v27 = MEMORY[0x277D86220];
          v28 = " [1.450.54] #%04llx  %30@: %-12s\n";
          v29 = 32;
LABEL_144:
          _os_log_impl(&dword_250836000, v27, OS_LOG_TYPE_DEFAULT, v28, v47, v29);
LABEL_145:
          prevLogInstanceID = v25;
          goto LABEL_151;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_147;
        }
      }

LABEL_151:
      ++*(a1 + 4);
      return v8;
    }

    v23 = enableLogInstance;
    if (*(a1 + 2))
    {
LABEL_131:
      if ((a5 & 1) == 0)
      {
        if (v23)
        {
          if (logInstanceID)
          {
            v25 = logInstanceID;
          }

          else
          {
            v25 = prevLogInstanceID;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_145;
          }

          goto LABEL_137;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_151;
        }

LABEL_147:
        v43 = *(v6 + 16);
        *v47 = 138412546;
        *v48 = v43;
        *&v48[8] = 2080;
        *&v48[10] = v49;
        v32 = MEMORY[0x277D86220];
        v33 = " [1.450.54]  %30@: %-12s\n";
        v34 = 22;
        goto LABEL_150;
      }

      if (v23)
      {
        if (logInstanceID)
        {
          v25 = logInstanceID;
        }

        else
        {
          v25 = prevLogInstanceID;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_145;
        }

        v41 = *(v6 + 32);
        v42 = *(v6 + 16);
        *v47 = 134219266;
        *v48 = WORD1(v25);
        *&v48[8] = 1024;
        *&v48[10] = v41;
        *&v48[14] = 2112;
        *&v48[16] = v42;
        *&v48[24] = 2080;
        *&v48[26] = v49;
        *&v48[34] = 2080;
        *&v48[36] = __str;
        *&v48[44] = 2080;
        *&v48[46] = buf;
        v27 = MEMORY[0x277D86220];
        v28 = " [1.450.54] #%04llx  %8d %30@ %12s %12s %12s\n";
        v29 = 58;
        goto LABEL_144;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_151;
      }

      v44 = *(v6 + 32);
      v45 = *(v6 + 16);
      *v47 = 67110146;
      *v48 = v44;
      *&v48[4] = 2112;
      *&v48[6] = v45;
      *&v48[14] = 2080;
      *&v48[16] = v49;
      *&v48[24] = 2080;
      *&v48[26] = __str;
      *&v48[34] = 2080;
      *&v48[36] = buf;
      v32 = MEMORY[0x277D86220];
      v33 = " [1.450.54]  %8d %30@ %12s %12s %12s\n";
      v34 = 48;
LABEL_150:
      _os_log_impl(&dword_250836000, v32, OS_LOG_TYPE_DEFAULT, v33, v47, v34);
      goto LABEL_151;
    }

    if ((a5 & 1) == 0)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v24 = logInstanceID;
        }

        else
        {
          v24 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 134218498;
          *v48 = WORD1(v24);
          *&v48[8] = 2080;
          *&v48[10] = "Name";
          *&v48[18] = 2080;
          *&v48[20] = "Effective";
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx  %30s %12s\n", v47, 0x20u);
        }

        prevLogInstanceID = v24;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_115:
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
LABEL_130:
            *(a1 + 2) = 1;
            v23 = enableLogInstance;
            goto LABEL_131;
          }

          *v47 = 0;
          v38 = MEMORY[0x277D86220];
          v39 = " [1.450.54] --------------------------------------------------------\n";
LABEL_129:
          _os_log_impl(&dword_250836000, v38, OS_LOG_TYPE_DEFAULT, v39, v47, 2u);
          goto LABEL_130;
        }

        *v47 = 136315394;
        *v48 = "Name";
        *&v48[8] = 2080;
        *&v48[10] = "Effective";
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]  %30s %12s\n", v47, 0x16u);
      }

      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v35 = logInstanceID;
        }

        else
        {
          v35 = prevLogInstanceID;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_126;
        }

        *v47 = 134217984;
        *v48 = WORD1(v35);
        v36 = MEMORY[0x277D86220];
        v37 = " [1.450.54] #%04llx --------------------------------------------------------\n";
LABEL_125:
        _os_log_impl(&dword_250836000, v36, OS_LOG_TYPE_DEFAULT, v37, v47, 0xCu);
LABEL_126:
        prevLogInstanceID = v35;
        goto LABEL_130;
      }

      goto LABEL_115;
    }

    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v30 = logInstanceID;
      }

      else
      {
        v30 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 134219266;
        *v48 = WORD1(v30);
        *&v48[8] = 2080;
        *&v48[10] = "Level";
        *&v48[18] = 2080;
        *&v48[20] = "Name";
        *&v48[28] = 2080;
        *&v48[30] = "Effective";
        *&v48[38] = 2080;
        *&v48[40] = "Value";
        *&v48[48] = 2080;
        *&v48[50] = "Default";
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx  %8s %30s %12s %12s %12s\n", v47, 0x3Eu);
      }

      prevLogInstanceID = v30;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_127:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_130;
        }

        *v47 = 0;
        v38 = MEMORY[0x277D86220];
        v39 = " [1.450.54] -----------------------------------------------------------------------------------\n";
        goto LABEL_129;
      }

      *v47 = 136316162;
      *v48 = "Level";
      *&v48[8] = 2080;
      *&v48[10] = "Name";
      *&v48[18] = 2080;
      *&v48[20] = "Effective";
      *&v48[28] = 2080;
      *&v48[30] = "Value";
      *&v48[38] = 2080;
      *&v48[40] = "Default";
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]  %8s %30s %12s %12s %12s\n", v47, 0x34u);
    }

    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v35 = logInstanceID;
      }

      else
      {
        v35 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_126;
      }

      *v47 = 134217984;
      *v48 = WORD1(v35);
      v36 = MEMORY[0x277D86220];
      v37 = " [1.450.54] #%04llx -----------------------------------------------------------------------------------\n";
      goto LABEL_125;
    }

    goto LABEL_127;
  }

  if (v16)
  {
    goto LABEL_15;
  }

  return 1;
}

uint64_t HDRConfig::LogAllConfigEntries(uint64_t a1, unsigned int a2, int a3, char a4)
{
  v23 = *MEMORY[0x277D85DE8];
  *(a1 + 2) = 0;
  *(a1 + 4) = 0;
  if ((a4 & 2) != 0)
  {
    v11 = 0;
    v12 = 20;
    while (!*(a1 + v12) || HDRConfig::LogConfigEntry(a1, v11, a2, a3, a4))
    {
      ++v11;
      v12 += 88;
      if (v11 == 302)
      {
LABEL_13:
        v13 = 1;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v8 = 0;
LABEL_3:
    v9 = 0;
    v10 = 20;
    while (!*(a1 + v10) || HDRConfig::LogConfigEntry(a1, v9, v8, a3, a4))
    {
      ++v9;
      v10 += 88;
      if (v9 == 302)
      {
        if (++v8 <= a2)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  v13 = 0;
LABEL_15:
  if (!*(a1 + 4))
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v14 = logInstanceID;
      }

      else
      {
        v14 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134217984;
        v22 = WORD1(v14);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx      No entries to dump!\n", &v21, 0xCu);
      }

      prevLogInstanceID = v14;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]      No entries to dump!\n", &v21, 2u);
    }
  }

  if (*(a1 + 2) == 1)
  {
    if (a4)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v15 = logInstanceID;
        }

        else
        {
          v15 = prevLogInstanceID;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        v21 = 134217984;
        v22 = WORD1(v15);
        v16 = MEMORY[0x277D86220];
        v17 = " [1.450.54] #%04llx -----------------------------------------------------------------------------------\n";
        goto LABEL_39;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v13;
      }

      LOWORD(v21) = 0;
      v18 = MEMORY[0x277D86220];
      v19 = " [1.450.54] -----------------------------------------------------------------------------------\n";
    }

    else
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v15 = logInstanceID;
        }

        else
        {
          v15 = prevLogInstanceID;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        v21 = 134217984;
        v22 = WORD1(v15);
        v16 = MEMORY[0x277D86220];
        v17 = " [1.450.54] #%04llx --------------------------------------------------------\n";
LABEL_39:
        _os_log_impl(&dword_250836000, v16, OS_LOG_TYPE_DEFAULT, v17, &v21, 0xCu);
LABEL_40:
        prevLogInstanceID = v15;
        return v13;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v13;
      }

      LOWORD(v21) = 0;
      v18 = MEMORY[0x277D86220];
      v19 = " [1.450.54] --------------------------------------------------------\n";
    }

    _os_log_impl(&dword_250836000, v18, OS_LOG_TYPE_DEFAULT, v19, &v21, 2u);
  }

  return v13;
}

void DumpAllConfigs(int a1)
{
  v23 = *MEMORY[0x277D85DE8];
  GetConfig();
  Config = GetConfig();
  if (*HDRConfig::GetConfigEntryValue(Config, 3u, 0) != 1)
  {
    return;
  }

  GetConfig();
  v3 = GetConfig();
  v4 = *HDRConfig::GetConfigEntryValue(v3, 0x12Bu, 0);
  GetConfig();
  v5 = GetConfig();
  v6 = *HDRConfig::GetConfigEntryValue(v5, 0x12Cu, 0);
  GetConfig();
  v7 = GetConfig();
  v8 = *HDRConfig::GetConfigEntryValue(v7, 0x12Au, 0);
  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v9 = logInstanceID;
    }

    else
    {
      v9 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      *v16 = WORD1(v9);
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx \n", &v15, 0xCu);
    }

    prevLogInstanceID = v9;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    LOWORD(v15) = 0;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] \n", &v15, 2u);
  }

  if (!enableLogInstance)
  {
LABEL_22:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = "unknown";
      v15 = 67110146;
      *v16 = a1;
      if (!v6)
      {
        v12 = "list";
      }

      *&v16[4] = 1024;
      *v17 = 2080;
      *&v16[6] = v6;
      if (v6 == 1)
      {
        v12 = "table";
      }

      *&v17[2] = v12;
      v18 = 1024;
      *v19 = v4;
      *&v19[4] = 1024;
      *&v19[6] = v8;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] HDRConfig: Frame #%d: configDumpStyle = %d (%s), configDumpLevel = %d, configDumpFlag = %d\n", &v15, 0x24u);
    }

    goto LABEL_28;
  }

  if (logInstanceID)
  {
    v10 = logInstanceID;
  }

  else
  {
    v10 = prevLogInstanceID;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134219266;
    *v16 = WORD1(v10);
    v11 = "list";
    *&v16[8] = 1024;
    *v17 = a1;
    if (v6)
    {
      v11 = "unknown";
    }

    *&v17[4] = 1024;
    if (v6 == 1)
    {
      v11 = "table";
    }

    *&v17[6] = v6;
    v18 = 2080;
    *v19 = v11;
    *&v19[8] = 1024;
    v20 = v4;
    v21 = 1024;
    v22 = v8;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx HDRConfig: Frame #%d: configDumpStyle = %d (%s), configDumpLevel = %d, configDumpFlag = %d\n", &v15, 0x2Eu);
  }

  prevLogInstanceID = v10;
LABEL_28:
  GetConfig();
  v13 = GetConfig();
  HDRConfig::LogAllConfigEntries(v13, v4, v6, v8);
  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v14 = logInstanceID;
    }

    else
    {
      v14 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      *v16 = WORD1(v14);
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx \n", &v15, 0xCu);
    }

    prevLogInstanceID = v14;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] \n", &v15, 2u);
  }
}

void UpdateConfigFromDefaultsWrite(int a1)
{
  Config = GetConfig();
  DumpAllConfigs(a1);
  *Config = 1;
}

float getBWResult(float a1, float a2, float a3, float a4, float a5)
{
  v9 = powf(a1, 3.0);
  v10 = fmaxf((v9 - a3) / (a4 - (a5 * v9)), 0.0);

  return powf(v10, 1.0 / a2);
}

uint64_t getScalingFactorByTable(float *a1, int a2, float a3, float a4)
{
  if (a2 < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = 0;
    while (a1[v4] <= a4)
    {
      if (a2 == ++v4)
      {
        LODWORD(v4) = a2;
        break;
      }
    }
  }

  if (v4 == a2)
  {
    return (a2 - 1);
  }

  else
  {
    return v4;
  }
}

float getToneCurveParameters(float a1, float a2, float a3, float a4, float a5, float *a6, float *a7, float *a8, float *a9, float a10, float a11)
{
  v16 = a3 - a1;
  v17 = sqrtf((a5 - a4) / v16);
  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  v18 = (sqrtf(1.0 / v17) + a11) / 0.33333;
  *a6 = v18;
  v19 = ((((a2 - a1) + (a2 - a1)) / v16) * a2) * (1.0 - v17);
  if ((a1 - v19) >= a4)
  {
    v20 = a1 - v19;
  }

  else
  {
    v20 = a4;
  }

  if ((a3 - v19) >= a5)
  {
    v21 = a5;
  }

  else
  {
    v21 = a3 - v19;
  }

  v22 = (a2 - v19) + a10;
  v23 = powf(a1, v18);
  v24 = powf(a2, v18);
  v25 = powf(a3, v18);
  v26 = powf(v20, 3.0);
  v27 = powf(v22, 3.0);
  v28 = powf(v21, 3.0);
  v29 = (((v24 * v27) * (v25 - v23)) + ((v25 * v28) * (v23 - v24))) + ((v23 * v26) * (v24 - v25));
  *a7 = (((v27 * ((v23 * v25) * (v28 - v26))) + (((v24 * v25) * (v27 - v28)) * v26)) + (((v23 * v24) * (v26 - v27)) * v28)) / v29;
  *a8 = (((v27 * -((v25 * v28) - (v23 * v26))) + (-((v24 * v27) - (v25 * v28)) * v26)) + (-((v23 * v26) - (v24 * v27)) * v28)) / v29;
  result = ((((v25 - v24) * v26) - ((v25 - v23) * v27)) + ((v24 - v23) * v28)) / v29;
  *a9 = result;
  return result;
}

void generateHeadroomCurve(float *a1, unsigned int a2, uint64_t a3, float *a4)
{
  if (a2 >= 1)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = *a4;
      v9 = a4[1];
      v10 = a4[2];
      v11 = a4[3];
      v12 = powf(*a1, 3.0);
      v13 = powf(fmaxf((v12 - a4[5]) / (a4[6] - (a4[7] * v12)), 0.0), 1.0 / a4[4]);
      *a1 = v13;
      v14 = 1.0;
      if (v13 != 0.0)
      {
        v14 = powf(fmaxf((v12 - v9) / (v10 - (v11 * v12)), 0.0), 1.0 / v8) / v13;
      }

      a1[v6] = v14;
      ++a1;
      --v7;
    }

    while (v7);
  }
}

float check1DLut(int a1, float *a2, float a3)
{
  if (a1 < 1)
  {
    return a2[1];
  }

  v3 = 0;
  v4 = a2;
  while (*v4 <= a3)
  {
    ++v3;
    v4 += 2;
    if (a1 == v3)
    {
      LODWORD(v3) = a1;
      break;
    }
  }

  if (!v3)
  {
    return a2[1];
  }

  if (v3 == a1)
  {
    return a2[2 * a1 - 1];
  }

  v6 = &a2[(2 * v3)];
  v7 = (a3 - *(v6 - 2)) / (*v6 - *(v6 - 2));
  return (v7 * a2[(2 * (v3 & 0x3FFFFFFF)) | 1]) + ((1.0 - v7) * *(v6 - 1));
}

float adjustMidTone(float a1, float a2, const float *a3, const float *a4, int a5, int a6, const float *a7)
{
  v7 = a6;
  v8 = a5;
  if (a5 > 0)
  {
    v9 = 0;
    while (a3[v9] < a1)
    {
      if (a5 == ++v9)
      {
        goto LABEL_7;
      }
    }

    v8 = v9;
  }

LABEL_7:
  if (a6 <= 0)
  {
LABEL_11:
    if (!v8)
    {
LABEL_17:
      if (!v7)
      {
        return *a7;
      }

      if (v7 == a6)
      {
        v11 = (a6 - 1) * a5;
        return a7[v11];
      }

      v19 = a5;
      v20 = v7 - 1;
      v21 = a7[v7 * v19];
      v22 = a7[v20 * v19];
      v23 = a4[v20];
      goto LABEL_30;
    }
  }

  else
  {
    v10 = 0;
    while (a4[v10] < a2)
    {
      if (a6 == ++v10)
      {
        goto LABEL_11;
      }
    }

    v7 = v10;
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  if (v8 != a5)
  {
    if (v7)
    {
      v13 = a5;
      v14 = v8 - 1;
      v15 = a1 - a3[v14];
      v16 = a3[v8] - a1;
      v17 = v15 + v16;
      if (v7 != a6)
      {
        v33 = v7 - 1;
        v34 = ((v15 * a7[v33 * v13 + v8]) + (a7[v33 * v13 + v14] * v16)) / v17;
        v35 = ((v15 * a7[v7 * v13 + v8]) + (a7[v7 * v13 + v14] * v16)) / v17;
        v36 = a4[v7] - a2;
        v37 = a2 - a4[v33];
        v31 = (v35 * v37) + (v34 * v36);
        v32 = v36 + v37;
        return v31 / v32;
      }

      v18 = (v15 * a7[v8 + (a6 - 1) * v13]) + (a7[v14 + (a6 - 1) * v13] * v16);
    }

    else
    {
      v24 = 4 * v8 - 4;
      v25 = a1 - *(a3 + v24);
      v26 = a3[v8] - a1;
      v18 = (a7[v8] * v25) + (*(a7 + v24) * v26);
      v17 = v25 + v26;
    }

    return v18 / v17;
  }

  if (!v7)
  {
    return a7[a5 - 1];
  }

  if (v7 == a6)
  {
    v11 = a5 + (a6 - 1) * a5 - 1;
    return a7[v11];
  }

  v27 = a5;
  v28 = v7 - 1;
  v21 = a7[a5 - 1 + v7 * v27];
  v22 = a7[a5 - 1 + v28 * v27];
  v23 = a4[v28];
LABEL_30:
  v29 = a2 - v23;
  v30 = a4[v7] - a2;
  v31 = (v21 * v29) + (v22 * v30);
  v32 = v29 + v30;
  return v31 / v32;
}

float L2PqNorm(float a1)
{
  v1 = powf(a1 / 10000.0, 0.1593);
  v2 = (v1 * 18.8515625 + 0.8359375) / (v1 * 18.6875 + 1.0);
  v3 = powf(v2, 78.844);
  v4 = 1.0;
  if (v3 <= 1.0)
  {
    v4 = v3;
  }

  v5 = v3 < 0.0;
  result = 0.0;
  if (!v5)
  {
    return v4;
  }

  return result;
}

float calculateHeadroomForInternalCapturesInternalOrRefDisplay(uint64_t a1, uint64_t a2, int a3, void *a4, float a5)
{
  v9 = a4;
  if (*(a2 + 185) != 1 || *(a2 + 194) == 1)
  {
    if (GetConfig())
    {
      Config = GetConfig();
      v11 = *HDRConfig::GetConfigEntryValue(Config, 0x7Fu, 0);
    }

    else
    {
      v11 = 0;
    }

    if (*(a2 + 185) == 1)
    {
      v11 = *(a2 + 196);
    }

    if (v11 == 1)
    {
      if (GetConfig())
      {
        v12 = GetConfig();
        v13 = *HDRConfig::GetConfigEntryValue(v12, 0x7Eu, 0);
      }

      else
      {
        v13 = 0.0;
      }

      if (v13 <= a5 && v13 >= 1.0)
      {
        a5 = v13;
      }
    }

    if (*(a1 + 508))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    if (GetConfig())
    {
      v16 = GetConfig();
      if (*(v16 + 2293))
      {
        if ((v16[4584] & 0x80) != 0)
        {
          if (GetConfig())
          {
            v17 = GetConfig();
            v15 = *HDRConfig::GetConfigEntryValue(v17, 0x68u, 0);
          }

          else
          {
            v15 = 0;
          }
        }
      }
    }

    if (*(a1 + 508) == 1)
    {
      if (GetConfig())
      {
        v18 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v18, 0x27u, 0) == 1)
        {
          if (a3 == 4)
          {
            v19 = *(a2 + 144);
            v20 = *(a2 + 136);
          }

          else
          {
            v19 = 0.75;
            v20 = 0.4;
            if (GetConfig())
            {
              v26 = GetConfig();
              if (*HDRConfig::GetConfigEntryValue(v26, 0x1Fu, 0) == 1)
              {
                if ([v9 isDataValid])
                {
                  [v9 maxVal];
                  v19 = v27;
                  [v9 avgVal];
                  v20 = v28;
                }
              }
            }
          }

          if (*&overrideCmaxNits >= 0.0)
          {
            v29 = powf(*&overrideCmaxNits * 0.0001, 0.1593);
            v19 = powf(((v29 * 18.852) + 0.83594) / ((v29 * 18.688) + 1.0), 78.844);
          }

          v30 = a5 * 100.0;
          if (*&overrideCmidNits >= 0.0)
          {
            v31 = powf(*&overrideCmidNits * 0.0001, 0.1593);
            v20 = powf(((v31 * 18.852) + 0.83594) / ((v31 * 18.688) + 1.0), 78.844);
          }

          calculateContentAdaptiveHeadroom(v15, v20, v19, *(a2 + 24), v30, 100.0);
LABEL_56:
          a5 = v32;
        }
      }
    }

    else
    {
      if (GetConfig())
      {
        v21 = GetConfig();
        v22 = *HDRConfig::GetConfigEntryValue(v21, 0x8Au, 0);
      }

      else
      {
        v22 = 0.0;
      }

      if (GetConfig())
      {
        v23 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v23, 0x27u, 0) == 1)
        {
          if (a3 == 4)
          {
            v24 = *(a2 + 144);
            v25 = *(a2 + 136);
          }

          else
          {
            v24 = 0.75;
            v25 = 0.4;
            if (GetConfig())
            {
              v33 = GetConfig();
              if (*HDRConfig::GetConfigEntryValue(v33, 0x1Fu, 0) == 1)
              {
                if ([v9 isDataValid])
                {
                  [v9 maxVal];
                  v24 = v34;
                  [v9 avgVal];
                  v25 = v35;
                }
              }
            }
          }

          if (*&overrideCmaxNits >= 0.0)
          {
            v36 = powf(*&overrideCmaxNits * 0.0001, 0.1593);
            v24 = powf(((v36 * 18.852) + 0.83594) / ((v36 * 18.688) + 1.0), 78.844);
          }

          v37 = a5 * v22;
          if (*&overrideCmidNits >= 0.0)
          {
            v38 = powf(*&overrideCmidNits * 0.0001, 0.1593);
            v25 = powf(((v38 * 18.852) + 0.83594) / ((v38 * 18.688) + 1.0), 78.844);
          }

          calculateContentAdaptiveHeadroom(v15, v25, v24, *(a2 + 24), v37, v22);
          goto LABEL_56;
        }
      }
    }
  }

  return a5;
}

void adjustL2TrimToAvoidOverflow(float a1, float a2, float a3, float a4, float a5, float *a6, float *a7, float *a8)
{
  *a6 = a2;
  *a7 = a3;
  *a8 = a4;
  if (a1 < a5 && a5 > 0.41928)
  {
    v16 = (a1 + -0.41928) / (a5 + -0.41928);
    if (v16 <= 1.0)
    {
      v17 = (a1 + -0.41928) / (a5 + -0.41928);
    }

    else
    {
      v17 = 1.0;
    }

    v18 = 0.0;
    if (v16 >= 0.0)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0.0;
    }

    if (GetConfig())
    {
      Config = GetConfig();
      v18 = *HDRConfig::GetConfigEntryValue(Config, 0x6Fu, 0);
    }

    v21 = powf(a3 + (a5 * a2), a4) - a5;
    if (v21 > 0.0)
    {
      *a6 = (powf((v21 * (v19 + ((1.0 - v19) * v18))) + a1, 1.0 / *a8) - *a7) / a1;
    }
  }
}

uint64_t interpolate(int a1, int a2, int a3, uint64_t a4, int a5)
{
  if (a3 != a2)
  {
    return (a4 + ((a5 - a4) * ((a1 - a2) / (a3 - a2))));
  }

  return a4;
}

uint64_t findL2MinTargetInPQ12Bit(uint64_t a1)
{
  v1 = (a1 + 2);
  result = 3696;
  v3 = 8;
  do
  {
    if (*(v1 - 1))
    {
      if (result >= *v1)
      {
        result = *v1;
      }

      else
      {
        result = result;
      }
    }

    v1 += 8;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t createTrimSet(uint64_t result, unsigned __int16 *a2, int *a3, float a4)
{
  v4 = a2[68];
  v5 = a2 + 83;
  v6 = 3696;
  v7 = 8;
  do
  {
    if (*(v5 - 1) && v6 >= *v5)
    {
      v6 = *v5;
    }

    v5 += 8;
    --v7;
  }

  while (v7);
  LOWORD(v8) = 0;
  if (v6 >= v4)
  {
    v6 = a2[68];
  }

  *a3 = v6;
  v9 = vcvts_n_s32_f32(a4, 0xCuLL);
  if (v6 <= v9)
  {
    v6 = v9;
  }

  v10 = 3696;
  if (v9 <= 3696)
  {
    v11 = v6;
  }

  else
  {
    v11 = 3696;
  }

  v12 = 0x80008000800;
  v13 = a2 + 89;
  v14 = 62;
  v15 = 2048;
  v16 = 8;
  LOWORD(v17) = 2048;
  v18 = 0x80008000800;
  do
  {
    if (*(v13 - 7))
    {
      v19 = *(v13 - 6);
      if (v11 >= v19)
      {
        if (v19 > v14)
        {
          v18 = *(v13 - 5);
          LOWORD(v17) = *(v13 - 1);
          v14 = *(v13 - 6);
          LOWORD(v8) = *v13;
        }
      }

      else if (v19 < v10)
      {
        v12 = *(v13 - 5);
        v15 = *(v13 - 1);
        v10 = *(v13 - 6);
        LOWORD(v7) = *v13;
      }
    }

    v13 += 8;
    --v16;
  }

  while (v16);
  v20 = vcvts_n_f32_u32(v4, 2uLL);
  if (v4 <= v11)
  {
    if (v20 > vcvts_n_f32_u32(v14, 2uLL))
    {
      LOWORD(v8) = 0;
      v18 = 0x80008000800;
      LOWORD(v17) = 2048;
      v14 = v4;
    }
  }

  else if (v20 < vcvts_n_f32_u32(v10, 2uLL))
  {
    LOWORD(v7) = 0;
    v12 = 0x80008000800;
    v15 = 2048;
    v10 = v4;
  }

  *result = 1;
  *(result + 2) = v11;
  if (v14 != v10)
  {
    v21 = (v11 - v14) / (v10 - v14);
    v18 = vmovn_s32(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_u32(vmovl_u16(v18)), vcvtq_f32_s32(vsubl_u16(v12, v18)), v21)));
    v17 = (v17 + ((v15 - v17) * v21));
    v8 = (v8 + ((v7 - v8) * v21));
  }

  *(result + 4) = v18;
  *(result + 12) = v17;
  *(result + 14) = v8;
  return result;
}

const char *getFullRangeFlag(int a1)
{
  v1 = "N/A";
  if (a1 == 2)
  {
    v1 = "1";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "0";
  }
}

_DWORD *getRGB2YMatrix(uint64_t a1)
{
  v1 = *(a1 + 60);
  v2 = RGB2020toHLGY_coeff;
  if (v1 == 12)
  {
    v2 = RGBP3toHLGY_coeff;
  }

  if (v1 == 1)
  {
    return RGB709toHLGY_coeff;
  }

  else
  {
    return v2;
  }
}

__int128 *getLMStoRGBMatrixForColorPrimary(uint64_t a1)
{
  v1 = &LMStoRGB_coeff_2020;
  v2 = *(a1 + 60);
  if (v2 != 9)
  {
    v1 = &LMStoRGB_coeff_P3;
  }

  if (v2 == 1)
  {
    return &LMStoRGB_coeff_709;
  }

  else
  {
    return v1;
  }
}

__int128 *getLMStoRGBMatrixForUITargetColorPrimary(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == *MEMORY[0x277CC4C20])
  {
    return &LMStoRGB_coeff_709;
  }

  result = &LMStoRGB_coeff_P3;
  if (v1 != *MEMORY[0x277CC4C30] && v1 == *MEMORY[0x277CC4C18])
  {
    return &LMStoRGB_coeff_2020;
  }

  return result;
}

uint64_t *getRGBtoLMSMatrixForUITargetColorPrimary(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == *MEMORY[0x277CC4C20])
  {
    return &R709_Rgb2LMS;
  }

  result = &P3_Rgb2LMS;
  if (v1 != *MEMORY[0x277CC4C30] && v1 == *MEMORY[0x277CC4C18])
  {
    return &R2020_Rgb2LMS;
  }

  return result;
}

uint64_t getUITargetColorPrimary(uint64_t a1)
{
  if (*MEMORY[0x277CC4C20] == a1)
  {
    return 1;
  }

  result = 12;
  if (*MEMORY[0x277CC4C30] != a1)
  {
    if (*MEMORY[0x277CC4C18] == a1)
    {
      return 9;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t getDefaultRGBtoYUVMatrixCoeffs(uint64_t a1, int a2)
{
  if (*MEMORY[0x277CC4C20] == a1)
  {
    return 1;
  }

  if (*MEMORY[0x277CC4C30] == a1)
  {
    if (a2)
    {
      return 12;
    }

    else
    {
      return 1;
    }
  }

  else if (*MEMORY[0x277CC4C18] == a1)
  {
    return 9;
  }

  else
  {
    return 1;
  }
}

void *getRGBtoYUVMatrixForUITargetColorPrimary(uint64_t a1, int a2)
{
  v4 = *(a1 + 112);
  BitDepthFromSurfaceFormat = getBitDepthFromSurfaceFormat(v4);
  v6 = isFullRangeFromSurfaceFormat(v4);
  v7 = *(a1 + 88);
  v8 = *MEMORY[0x277CC4C20];
  if (BitDepthFromSurfaceFormat == 10)
  {
    if (v7 != v8)
    {
      if (v7 != *MEMORY[0x277CC4C30])
      {
        v9 = &R709_Rgb2YuvNarrow_10bit;
        v10 = *MEMORY[0x277CC4C18];
        v11 = v6 == 0;
        v12 = &R2020_Rgb2YuvNarrow_10bit;
        if (v6)
        {
          v9 = &R709_Rgb2YuvFull_10bit;
        }

        v13 = &R2020_Rgb2YuvFull_10bit;
LABEL_12:
        if (v11)
        {
          v13 = v12;
        }

        if (v7 == v10)
        {
          return v13;
        }

        else
        {
          return v9;
        }
      }

      v17 = &R709_Rgb2YuvNarrow_10bit;
      v18 = v6 == 0;
      v19 = &P3_Rgb2YuvNarrow_10bit;
      if (v6)
      {
        v17 = &R709_Rgb2YuvFull_10bit;
      }

      v20 = &P3_Rgb2YuvFull_10bit;
      goto LABEL_29;
    }

    v15 = &R709_Rgb2YuvNarrow_10bit;
    v16 = &R709_Rgb2YuvFull_10bit;
LABEL_20:
    if (v6)
    {
      return v16;
    }

    else
    {
      return v15;
    }
  }

  if (v7 == v8)
  {
    v15 = &R709_Rgb2YuvNarrow;
    v16 = &R709_Rgb2YuvFull;
    goto LABEL_20;
  }

  if (v7 != *MEMORY[0x277CC4C30])
  {
    v9 = &R709_Rgb2YuvNarrow;
    v10 = *MEMORY[0x277CC4C18];
    v11 = v6 == 0;
    v12 = &R2020_Rgb2YuvNarrow;
    if (v6)
    {
      v9 = &R709_Rgb2YuvFull;
    }

    v13 = &R2020_Rgb2YuvFull;
    goto LABEL_12;
  }

  v17 = &R709_Rgb2YuvNarrow;
  v18 = v6 == 0;
  v19 = &P3_Rgb2YuvNarrow;
  if (v6)
  {
    v17 = &R709_Rgb2YuvFull;
  }

  v20 = &P3_Rgb2YuvFull;
LABEL_29:
  if (v18)
  {
    v20 = v19;
  }

  if (a2)
  {
    return v20;
  }

  else
  {
    return v17;
  }
}

void *getRGBtoRGBMatrixForUITargetColorPrimary(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 60);
  if (v2 == 12)
  {
    v6 = *(a2 + 88);
    if (v6 != *MEMORY[0x277CC4C30])
    {
      if (v6 == *MEMORY[0x277CC4C20])
      {
        return &RGBP3toRGB709_coeff;
      }

      if (v6 == *MEMORY[0x277CC4C18])
      {
        return &RGBP3toRGB2020_coeff;
      }
    }

    return &RGBtoRGBIdentity_coeff;
  }

  if (v2 == 9)
  {
    v5 = *(a2 + 88);
    if (v5 != *MEMORY[0x277CC4C18])
    {
      if (v5 != *MEMORY[0x277CC4C20])
      {
        if (v5 == *MEMORY[0x277CC4C30])
        {
          return &RGB2020toRGBP3_coeff;
        }

        return &RGBtoRGBIdentity_coeff;
      }

      return &RGB2020toRGB709_coeff;
    }

    return &RGBtoRGBIdentity_coeff;
  }

  if (v2 != 1)
  {
    return &RGBtoRGBIdentity_coeff;
  }

  v3 = *(a2 + 88);
  if (v3 == *MEMORY[0x277CC4C20])
  {
    return &RGBtoRGBIdentity_coeff;
  }

  if (v3 != *MEMORY[0x277CC4C30])
  {
    if (v3 == *MEMORY[0x277CC4C18])
    {
      return &RGB709toRGB2020_coeff;
    }

    return &RGBtoRGBIdentity_coeff;
  }

  return &RGB709toRGBP3_coeff;
}

uint64_t setupOutputScale(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *a2;
  if (*(a2 + 64) == 1 && *(a2 + 56) > *(a2 + 24) && *a3 == 3)
  {
    v6 = *(a2 + 56);
  }

  v7 = *(a3 + 40);
  if (v7 <= 8)
  {
    v8 = 1 << v7;
    if ((v8 & 0x58) != 0)
    {
      if (*(a3 + 181) != 1 || *(a3 + 8))
      {
        v9 = *(result + 324) / v6;
LABEL_12:
        v10 = v9;
        *(v5 + 196) = v10;
        return result;
      }

LABEL_11:
      v9 = *(a2 + 28) / v6 * (*(a2 + 32) * *(v5 + 324));
      goto LABEL_12;
    }

    if ((v8 & 0x120) != 0)
    {
      goto LABEL_11;
    }
  }

  result = IsGpuOnlySystem();
  if ((result & 1) == 0)
  {
    result = GetConfig();
    if (result)
    {
      Config = GetConfig();
      result = HDRConfig::GetConfigEntryValue(Config, 0x1Au, 0);
      if (*result == 1 && !*(a3 + 8) && *(a3 + 40) == 7)
      {
        goto LABEL_11;
      }
    }
  }

  *(v5 + 196) = 1065353216;
  return result;
}

float create_s2tratio(float a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v8 = (a3 + a4) * 0.5;
  v9 = (a6 + a7) * 0.5;
  v10 = 0.0;
  if (v9 >= v8)
  {
    v11 = (a1 + a2) * 0.5;
    v10 = v11 - v8;
    if (v9 <= v11 && v10 > 0.0 && v9 >= v8)
    {
      v13 = (v9 - v8) / v10;
      v14 = v13;
      if (v13 >= 0.5)
      {
        v15 = pow(v14 + -1.0, 5.0) * 16.0 + 1.0;
      }

      else
      {
        v15 = pow(v14, 5.0) * 16.0;
      }

      v16 = v15;
      v10 = v10 * v16;
    }
  }

  v17 = fmax(v10, 0.0);
  return v17 * a5;
}

uint64_t getProcessingType(int *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a1[2];
  v3 = a1[10];
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 != 2;
  }

  v5 = v2 == 1 || v4;
  v6 = v2 == 1 && v3 == 2;
  v7 = *a1;
  if (*a1 == 1)
  {
    v8 = 4 * (a1[44] == 18);
  }

  else
  {
    v8 = 0;
  }

  if (a1[3] == 4)
  {
    v9 = 5;
  }

  else if (*(a2 + 152))
  {
    if (v5)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v10 = logInstanceID;
        }

        else
        {
          v10 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v15 = 134217984;
          v16 = WORD1(v10);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: isGPUtoHDR10TV warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 1377\n", &v15, 0xCu);
        }

        prevLogInstanceID = v10;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: isGPUtoHDR10TV warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 1377\n", &v15, 2u);
      }
    }

    v9 = 3;
  }

  else if (v7 == 3)
  {
    v9 = 2;
  }

  else if (v7 != 2 || ((v3 - 3) < 6 ? (v11 = 1) : (v11 = v6), (v9 = 1, (v11 & 1) == 0) && (a1[45] & 1) == 0))
  {
    v9 = v8;
  }

  if (GetConfig())
  {
    Config = GetConfig();
    if (*(Config + 2931))
    {
      if ((Config[5860] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v13 = GetConfig();
          return *HDRConfig::GetConfigEntryValue(v13, 0x85u, 0);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v9;
}

BOOL isDoViHigherThan1000ToHDR10TV1000(uint64_t a1, double *a2, _DWORD *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v3 = fabs(*a2 + -1000.0);
  v6 = a3[17] == 16 && a3[10] == 2 && (*(a1 + 136) - 3085) < 0xFFFFFFF6;
  return v3 < 4.0 && v6;
}

uint64_t convertMetaDataToPayLoad(uint64_t a1, char *a2)
{
  bzero(a2, 0x364uLL);
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  *(a2 + 1) = bswap32(*(a1 + 16)) >> 16;
  *(a2 + 2) = bswap32(*(a1 + 20)) >> 16;
  *(a2 + 3) = bswap32(*(a1 + 24)) >> 16;
  *(a2 + 4) = bswap32(*(a1 + 28)) >> 16;
  *(a2 + 5) = bswap32(*(a1 + 32)) >> 16;
  *(a2 + 6) = bswap32(*(a1 + 36)) >> 16;
  *(a2 + 7) = bswap32(*(a1 + 40)) >> 16;
  *(a2 + 8) = bswap32(*(a1 + 44)) >> 16;
  *(a2 + 9) = bswap32(*(a1 + 48)) >> 16;
  *(a2 + 5) = bswap32(*(a1 + 52));
  *(a2 + 6) = bswap32(*(a1 + 56));
  *(a2 + 7) = bswap32(*(a1 + 60));
  *(a2 + 16) = bswap32(*(a1 + 64)) >> 16;
  *(a2 + 17) = bswap32(*(a1 + 68)) >> 16;
  *(a2 + 18) = bswap32(*(a1 + 72)) >> 16;
  *(a2 + 19) = bswap32(*(a1 + 76)) >> 16;
  *(a2 + 20) = bswap32(*(a1 + 80)) >> 16;
  *(a2 + 21) = bswap32(*(a1 + 84)) >> 16;
  *(a2 + 22) = bswap32(*(a1 + 88)) >> 16;
  *(a2 + 23) = bswap32(*(a1 + 92)) >> 16;
  *(a2 + 24) = bswap32(*(a1 + 96)) >> 16;
  *(a2 + 25) = bswap32(*(a1 + 100)) >> 16;
  *(a2 + 26) = bswap32(*(a1 + 104)) >> 16;
  *(a2 + 27) = bswap32(*(a1 + 108)) >> 16;
  v7 = *(a1 + 112);
  *a2 = v5 | (16 * v4);
  a2[1] = v6;
  a2[56] = v7.i8[3];
  a2[57] = v7.i8[2];
  a2[58] = v7.i8[1];
  *(a2 + 59) = vuzp1_s8(vmovn_s32(v7), *v7.i8).u32[0];
  a2[63] = *(a1 + 128);
  *(a2 + 32) = bswap32(*(a1 + 132)) >> 16;
  *(a2 + 33) = bswap32(*(a1 + 136)) >> 16;
  *(a2 + 34) = bswap32(*(a1 + 140)) >> 16;
  a2[70] = *(a1 + 144);
  if (*(a1 + 156))
  {
    *(a2 + 71) = 100663296;
    a2[75] = 1;
    *(a2 + 38) = bswap32(*(a1 + 158)) >> 16;
    *(a2 + 39) = bswap32(*(a1 + 160)) >> 16;
    *(a2 + 40) = bswap32(*(a1 + 162)) >> 16;
    v8 = 82;
  }

  else
  {
    v8 = 71;
  }

  v9 = a2 + 82;
  v10 = (a1 + 178);
  v11 = 8;
  do
  {
    if (*(v10 - 7))
    {
      *v9 = 234881024;
      v9[4] = 2;
      *(v9 + 5) = bswap32(*(v10 - 6)) >> 16;
      *(v9 + 7) = bswap32(*(v10 - 5)) >> 16;
      *(v9 + 9) = bswap32(*(v10 - 4)) >> 16;
      *(v9 + 11) = bswap32(*(v10 - 3)) >> 16;
      *(v9 + 13) = bswap32(*(v10 - 2)) >> 16;
      *(v9 + 15) = bswap32(*(v10 - 1)) >> 16;
      *(v9 + 17) = bswap32(*v10) >> 16;
      v8 = (v8 + 19);
      v9 += 19;
    }

    v10 += 8;
    --v11;
  }

  while (v11);
  if (*(a1 + 292))
  {
    *v9 = 100663296;
    v9[4] = 3;
    *(v9 + 5) = bswap32(*(a1 + 294)) >> 16;
    *(v9 + 7) = bswap32(*(a1 + 296)) >> 16;
    *(v9 + 9) = bswap32(*(a1 + 298)) >> 16;
    v8 = (v8 + 11);
    v9 += 11;
  }

  if (*(a1 + 300))
  {
    *v9 = 0x4000000;
    v9[4] = 4;
    *(v9 + 5) = bswap32(*(a1 + 302)) >> 16;
    *(v9 + 7) = bswap32(*(a1 + 304)) >> 16;
    v8 = (v8 + 9);
    v9 += 9;
  }

  v12 = 0;
  v13 = a1 + 348;
  v14 = a1 + 354;
  do
  {
    v15 = a1 + 326 + 34 * v12;
    if (!*v15)
    {
      goto LABEL_45;
    }

    v16 = *(v15 + 2);
    v17 = v16 > 0xA;
    if (v16 <= 0xA)
    {
      v18 = 13;
    }

    else
    {
      v18 = 15;
    }

    if (v16 == 13)
    {
      v17 = 1;
    }

    v19 = v16 == 13;
    if (v16 == 13)
    {
      v18 = 17;
    }

    if (v16 <= 0xD)
    {
      v20 = v18;
    }

    else
    {
      v17 = 1;
      v19 = 1;
      v20 = 23;
    }

    v21 = v16 > 0x13 || v17;
    if (v16 <= 0x13)
    {
      v22 = v16 > 0xD;
    }

    else
    {
      v19 = 1;
      v22 = 1;
    }

    if (v16 <= 0x13)
    {
      v23 = v20;
    }

    else
    {
      v23 = 29;
    }

    *v9 = 0;
    v9[2] = 0;
    v9[3] = v23;
    v9[4] = 8;
    v9[5] = *(v15 + 4);
    *(v9 + 3) = bswap32(*(v15 + 6)) >> 16;
    *(v9 + 4) = bswap32(*(v15 + 8)) >> 16;
    *(v9 + 5) = bswap32(*(v15 + 10)) >> 16;
    *(v9 + 6) = bswap32(*(v15 + 12)) >> 16;
    *(v9 + 7) = bswap32(*(v15 + 14)) >> 16;
    *(v9 + 8) = bswap32(*(v15 + 16)) >> 16;
    if (v21)
    {
      *(v9 + 9) = bswap32(*(v15 + 18)) >> 16;
      if (!v19)
      {
LABEL_35:
        if (v22)
        {
          goto LABEL_39;
        }

        goto LABEL_41;
      }
    }

    else if (!v19)
    {
      goto LABEL_35;
    }

    *(v9 + 10) = bswap32(*(v15 + 20)) >> 16;
    if (v22)
    {
LABEL_39:
      for (i = 0; i != 6; ++i)
      {
        v9[i + 22] = *(v13 + i);
      }
    }

LABEL_41:
    if (v16 >= 0x14)
    {
      for (j = 0; j != 6; ++j)
      {
        v9[j + 28] = *(v14 + j);
      }
    }

    v8 = v8 + v23 + 5;
    v9 += v23 + 5;
LABEL_45:
    ++v12;
    v13 += 34;
    v14 += 34;
  }

  while (v12 != 5);
  if (*(a1 + 496))
  {
    v26 = *(a1 + 500);
    if (v26 <= 0x12)
    {
      v27 = 1;
    }

    else
    {
      v27 = 17;
    }

    *v9 = 0;
    v9[2] = 0;
    v9[3] = v27;
    v9[4] = 9;
    v9[5] = v26;
    if (v26 >= 0x13)
    {
      *(v9 + 3) = bswap32(*(a1 + 502)) >> 16;
      *(v9 + 4) = bswap32(*(a1 + 504)) >> 16;
      *(v9 + 5) = bswap32(*(a1 + 506)) >> 16;
      *(v9 + 6) = bswap32(*(a1 + 508)) >> 16;
      *(v9 + 7) = bswap32(*(a1 + 510)) >> 16;
      *(v9 + 8) = bswap32(*(a1 + 512)) >> 16;
      *(v9 + 9) = bswap32(*(a1 + 514)) >> 16;
      *(v9 + 10) = bswap32(*(a1 + 516)) >> 16;
    }

    v8 = v8 + v27 + 5;
    v9 += v27 + 5;
  }

  v28 = (a1 + 544);
  v29 = 4;
  do
  {
    if (*(v28 - 13))
    {
      v30 = *(v28 - 16);
      if (v30 <= 0x12)
      {
        v31 = 6;
      }

      else
      {
        v31 = 22;
      }

      *v9 = 0;
      v9[2] = 0;
      v9[3] = v31;
      v9[4] = 10;
      v9[5] = *(v28 - 22);
      *(v9 + 3) = bswap32(*(v28 - 10)) >> 16;
      v32 = *(v28 - 9);
      v9[8] = HIBYTE(v32);
      v9[9] = v32;
      v9[10] = v30;
      if (v30 >= 0x13)
      {
        *(v9 + 11) = bswap32(*(v28 - 7)) >> 16;
        *(v9 + 13) = bswap32(*(v28 - 6)) >> 16;
        *(v9 + 15) = bswap32(*(v28 - 5)) >> 16;
        *(v9 + 17) = bswap32(*(v28 - 4)) >> 16;
        *(v9 + 19) = bswap32(*(v28 - 3)) >> 16;
        *(v9 + 21) = bswap32(*(v28 - 2)) >> 16;
        *(v9 + 23) = bswap32(*(v28 - 1)) >> 16;
        *(v9 + 25) = bswap32(*v28) >> 16;
      }

      v8 = v8 + v31 + 5;
      v9 += v31 + 5;
    }

    v28 += 14;
    --v29;
  }

  while (v29);
  if (*(a1 + 630))
  {
    *v9 = 0x4000000;
    v9[4] = 11;
    *(v9 + 5) = *(a1 + 632);
    v8 = (v8 + 9);
    v9 += 9;
  }

  if (*(a1 + 896))
  {
    *v9 = 0x2000000;
    v9[4] = -2;
    *(v9 + 5) = *(a1 + 898);
    v8 = (v8 + 7);
    v9 += 7;
  }

  if (*(a1 + 900))
  {
    *v9 = 100663296;
    v9[4] = -1;
    *(v9 + 5) = *(a1 + 902);
    *(v9 + 9) = *(a1 + 906);
    v8 = (v8 + 11);
    v9 += 11;
  }

  if (*(a1 + 636))
  {
    if (*(a1 + 638) >= 0x100u)
    {
      v33 = 256;
    }

    else
    {
      v33 = *(a1 + 638);
    }

    *v9 = 0;
    v9[2] = BYTE1(v33);
    v9[3] = v33;
    v9[4] = -3;
    v34 = v9 + 5;
    memcpy(v9 + 5, (a1 + 640), v33);
    v8 = (v33 + v8 + 5);
    v9 = &v34[v33];
  }

  if (*(a1 + 306))
  {
    *v9 = 0x8000000;
    v9[4] = 5;
    *(v9 + 5) = bswap32(*(a1 + 308)) >> 16;
    *(v9 + 7) = bswap32(*(a1 + 310)) >> 16;
    *(v9 + 9) = bswap32(*(a1 + 312)) >> 16;
    *(v9 + 11) = bswap32(*(a1 + 314)) >> 16;
    v8 = (v8 + 13);
    v9 += 13;
  }

  if (*(a1 + 316))
  {
    *v9 = 0x8000000;
    v9[4] = 6;
    *(v9 + 9) = bswap32(*(a1 + 322)) >> 16;
    *(v9 + 11) = bswap32(*(a1 + 324)) >> 16;
    *(v9 + 5) = bswap32(*(a1 + 318)) >> 16;
    *(v9 + 7) = bswap32(*(a1 + 320)) >> 16;
    return (v8 + 13);
  }

  return v8;
}

void metaDataReduceL2(uint64_t a1)
{
  v2 = *(a1 + 908);
  v3 = (a1 + 164);
  qsort((a1 + 164), *(a1 + 148), 0x10uLL, compareL2);
  if (v2 <= *(a1 + 166))
  {
    v9 = *(a1 + 148);
    *(a1 + 144) = *(a1 + 144) - v9 + 1;
    if (v9 >= 2)
    {
      v10 = 0;
      v11 = (v9 + 6) & 0x1FFFFFFF8;
      v12 = vdupq_n_s64(v9 - 2);
      v13 = (a1 + 292);
      do
      {
        v14 = vdupq_n_s64(v10);
        v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_2508CD910)));
        if (vuzp1_s8(vuzp1_s16(v15, *v12.i8), *v12.i8).u8[0])
        {
          *(v13 - 56) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v15, *&v12), *&v12).i8[1])
        {
          *(v13 - 48) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_2508CD900)))), *&v12).i8[2])
        {
          *(v13 - 40) = 0;
          *(v13 - 32) = 0;
        }

        v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_2508CD940)));
        if (vuzp1_s8(*&v12, vuzp1_s16(v16, *&v12)).i32[1])
        {
          *(v13 - 24) = 0;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(v16, *&v12)).i8[5])
        {
          *(v13 - 16) = 0;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_2508CD930))))).i8[6])
        {
          *(v13 - 8) = 0;
          *v13 = 0;
        }

        v10 += 8;
        v13 += 64;
      }

      while (v11 != v10);
    }
  }

  else
  {
    v4 = *(a1 + 148);
    if (v2 >= WORD1(v3[(v4 - 1)]))
    {
      *(a1 + 144) = *(a1 + 144) - v4 + 1;
      *v3 = v3[(v4 - 1)];
      if (v4 >= 2)
      {
        v17 = 0;
        v18 = (v4 + 6) & 0x1FFFFFFF8;
        v19 = vdupq_n_s64(v4 - 2);
        v20 = (a1 + 292);
        do
        {
          v21 = vdupq_n_s64(v17);
          v22 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_2508CD910)));
          if (vuzp1_s8(vuzp1_s16(v22, *v19.i8), *v19.i8).u8[0])
          {
            *(v20 - 56) = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v22, *&v19), *&v19).i8[1])
          {
            *(v20 - 48) = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_2508CD900)))), *&v19).i8[2])
          {
            *(v20 - 40) = 0;
            *(v20 - 32) = 0;
          }

          v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_2508CD940)));
          if (vuzp1_s8(*&v19, vuzp1_s16(v23, *&v19)).i32[1])
          {
            *(v20 - 24) = 0;
          }

          if (vuzp1_s8(*&v19, vuzp1_s16(v23, *&v19)).i8[5])
          {
            *(v20 - 16) = 0;
          }

          if (vuzp1_s8(*&v19, vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_2508CD930))))).i8[6])
          {
            *(v20 - 8) = 0;
            *v20 = 0;
          }

          v17 += 8;
          v20 += 64;
        }

        while (v18 != v17);
      }
    }

    else
    {
      if (v4 < 2)
      {
        return;
      }

      v5 = 0;
      v6 = v4 - 1;
      for (i = a1 + 180; ; i += 16)
      {
        v8 = *(i + 2);
        if (v8 == v2)
        {
          break;
        }

        if (v8 > v2)
        {
          *(a1 + 144) = *(a1 + 144) - v4 + 2;
          *v3 = *(v3 + (v5 >> 28));
          *(a1 + 180) = *i;
          if (v4 == 2)
          {
            v31 = 2;
          }

          else
          {
            v32 = 0;
            v33 = (v4 + 5) & 0x1FFFFFFF8;
            v34 = vdupq_n_s64(v4 - 3);
            v35 = (a1 + 308);
            do
            {
              v36 = vdupq_n_s64(v32);
              v37 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(v36, xmmword_2508CD910)));
              if (vuzp1_s8(vuzp1_s16(v37, *v34.i8), *v34.i8).u8[0])
              {
                *(v35 - 56) = 0;
              }

              if (vuzp1_s8(vuzp1_s16(v37, *&v34), *&v34).i8[1])
              {
                *(v35 - 48) = 0;
              }

              if (vuzp1_s8(vuzp1_s16(*&v34, vmovn_s64(vcgeq_u64(v34, vorrq_s8(v36, xmmword_2508CD900)))), *&v34).i8[2])
              {
                *(v35 - 40) = 0;
                *(v35 - 32) = 0;
              }

              v38 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(v36, xmmword_2508CD940)));
              if (vuzp1_s8(*&v34, vuzp1_s16(v38, *&v34)).i32[1])
              {
                *(v35 - 24) = 0;
              }

              if (vuzp1_s8(*&v34, vuzp1_s16(v38, *&v34)).i8[5])
              {
                *(v35 - 16) = 0;
              }

              if (vuzp1_s8(*&v34, vuzp1_s16(*&v34, vmovn_s64(vcgeq_u64(v34, vorrq_s8(v36, xmmword_2508CD930))))).i8[6])
              {
                *(v35 - 8) = 0;
                *v35 = 0;
              }

              v32 += 8;
              v35 += 64;
              v31 = 2;
            }

            while (v33 != v32);
          }

          goto LABEL_56;
        }

        v5 += 0x100000000;
        if (!--v6)
        {
          return;
        }
      }

      v24 = 0;
      *(a1 + 144) = *(a1 + 144) - v4 + 1;
      *v3 = *i;
      v25 = (v4 + 6) & 0x1FFFFFFF8;
      v26 = vdupq_n_s64(v4 - 2);
      v27 = (a1 + 292);
      do
      {
        v28 = vdupq_n_s64(v24);
        v29 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_2508CD910)));
        if (vuzp1_s8(vuzp1_s16(v29, *v26.i8), *v26.i8).u8[0])
        {
          *(v27 - 56) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v29, *&v26), *&v26).i8[1])
        {
          *(v27 - 48) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_2508CD900)))), *&v26).i8[2])
        {
          *(v27 - 40) = 0;
          *(v27 - 32) = 0;
        }

        v30 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_2508CD940)));
        if (vuzp1_s8(*&v26, vuzp1_s16(v30, *&v26)).i32[1])
        {
          *(v27 - 24) = 0;
        }

        if (vuzp1_s8(*&v26, vuzp1_s16(v30, *&v26)).i8[5])
        {
          *(v27 - 16) = 0;
        }

        if (vuzp1_s8(*&v26, vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_2508CD930))))).i8[6])
        {
          *(v27 - 8) = 0;
          *v27 = 0;
        }

        v24 += 8;
        v27 += 64;
      }

      while (v25 != v24);
    }
  }

  v31 = 1;
LABEL_56:
  *(a1 + 148) = v31;
}

void setDisplayManagementPayload(uint64_t a1, __IOSurface *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = convertMetaDataToPayLoad(a1, bytes);
  v4 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, v3);
  IOSurfaceSetValue(a2, @"DolbyVisionHDMIData", v4);
  CFRelease(v4);
}

void attachBackwardDisplayManagementMetaDataToBuffer(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, __int128 *a5, __IOSurface *a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v99 = *MEMORY[0x277D85DE8];
  if (a4[3] == 4)
  {
    return;
  }

  *&v84[3] = 1.0 / *(a2 + 196);
  *bytes = *(a2 + 144);
  v14 = *(a3 + 88);
  if (v14 == *MEMORY[0x277CC4C20])
  {
    v15 = &R709_Rgb2LMS;
  }

  else
  {
    v15 = &P3_Rgb2LMS;
    if (v14 != *MEMORY[0x277CC4C30] && v14 == *MEMORY[0x277CC4C18])
    {
      v15 = &R2020_Rgb2LMS;
    }
  }

  v98 = 0;
  v16.i32[3] = 0;
  v96 = 0u;
  v97 = 0u;
  v17 = a4[15];
  switch(v17)
  {
    case 1:
      v18 = &LMStoRGB_coeff_709;
      break;
    case 0xFFFF:
      v18 = &v96;
      v19 = &v97 + 8;
      v20 = &v96 + 12;
      *v16.f32 = vcvt_f32_s32(*(a1 + 64));
      v16.f32[2] = *(a1 + 72);
      *a8.f32 = vcvt_f32_s32(*(a1 + 76));
      a8.f32[2] = *(a1 + 84);
      *a9.f32 = vcvt_f32_s32(*(a1 + 88));
      a9.f32[2] = *(a1 + 96);
      v21 = vdupq_n_s32(0x38800000u);
      v100.columns[0] = vmulq_f32(v16, v21);
      v100.columns[1] = vmulq_f32(a8, v21);
      v100.columns[2] = vmulq_f32(a9, v21);
      v101 = __invert_f3(v100);
      v22 = 0;
      v23 = (&v96 | 0xC);
      do
      {
        v55 = v101.columns[0];
        *(v23 - 3) = *(&v55 & 0xFFFFFFFFFFFFFFF3 | (4 * (v22 & 3)));
        v54 = v101.columns[1];
        *v23 = *(&v54 & 0xFFFFFFFFFFFFFFF3 | (4 * (v22 & 3)));
        v53 = v101.columns[2];
        v23[3] = *(&v53 & 0xFFFFFFFFFFFFFFF3 | (4 * (v22++ & 3)));
        ++v23;
      }

      while (v22 != 3);
      goto LABEL_18;
    case 9:
      v18 = &LMStoRGB_coeff_2020;
      break;
    default:
      v18 = &LMStoRGB_coeff_P3;
      break;
  }

  v19 = v18 + 24;
  v20 = v18 + 12;
LABEL_18:
  v64 = *v18;
  v24 = *(v18 + 2);
  v66 = *v20;
  v25 = *(v20 + 2);
  v68 = *v19;
  v26 = *(v19 + 2);
  v67 = v25;
  v69 = v26;
  v27 = *(v15 + 2);
  v58 = *v15;
  v28 = *(v15 + 12);
  v29 = *(v15 + 5);
  v59 = v27;
  v61 = v29;
  v60 = v28;
  v62 = v15[3];
  v30 = *(v15 + 8);
  v65 = v24;
  v63 = v30;
  v70 = 0x3ECCCCCD3ECCCCCDLL;
  v71 = 1045220557;
  v73 = 1053474947;
  v72 = 0xC09B3B64408E8F5CLL;
  v74 = 0x3EB6E2EB3F4E3BCDLL;
  v75 = -1080764767;
  v77 = 1045571297;
  v76 = 0x3DC7D2383F800000;
  v78 = 0xBDE938133F800000;
  v79 = 1040738836;
  v81 = -1087551366;
  v31 = 1.0 / *(a2 + 112);
  v102.columns[0] = vmulq_n_f32(*(a2 + 16), v31);
  v102.columns[1] = vmulq_n_f32(*(a2 + 32), v31);
  v102.columns[2] = vmulq_n_f32(*(a2 + 48), v31);
  v80 = 0x3D05976C3F800000;
  v103 = __invert_f3(v102);
  v32 = 0;
  v33 = v82;
  do
  {
    v52 = v103.columns[0];
    *v33 = *(&v52 & 0xFFFFFFFFFFFFFFF3 | (4 * (v32 & 3)));
    v51 = v103.columns[1];
    v33[3] = *(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (v32 & 3)));
    v50 = v103.columns[2];
    v33[6] = *(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v32++ & 3)));
    ++v33;
  }

  while (v32 != 3);
  *&v82[36] = 0x4500000043800000;
  v34 = *a4;
  v83 = 1157627904;
  v84[4] = v34;
  v87 = a4[38];
  v35 = *(a3 + 8);
  v36 = *(a3 + 16);
  v88 = v36;
  v89 = 0.005;
  if (v35 > 0.00005)
  {
    v37 = v35;
    v89 = v37;
  }

  v38 = *(a3 + 148);
  v93 = v38;
  v95 = *(a4 + 180);
  if (v34 == 1 && a4[10] == 2 && v38)
  {
    v85 = a4[37];
    v39 = *(a2 + 280);
  }

  else
  {
    v39 = a4[37];
    v85 = v39;
  }

  v40 = 0;
  v86 = v39;
  v41 = *(a2 + 384);
  do
  {
    v49 = v41;
    v84[v40] = *(&v49 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3)));
    ++v40;
  }

  while (v40 != 3);
  v90 = *a5;
  v91 = *(a5 + 2);
  v92 = *(a5 + 6);
  if (*(a1 + 316))
  {
    LODWORD(v91) = 10000 * *(a1 + 318);
    HIDWORD(v91) = 10000 * *(a1 + 320);
    v42 = *(a1 + 322);
    if (!v42)
    {
      v42 = 4000;
    }

    LOWORD(v92) = v42;
    v43 = *(a1 + 324);
    if (!v43)
    {
      v43 = 1000;
    }

    HIWORD(v92) = v43;
  }

  v94 = v94 & 0xFE | *(a3 + 152) & 1;
  v44 = a4[10];
  if (v44 <= 6 && ((1 << v44) & 0x47) != 0)
  {
    valuePtr = v36;
    v45 = *MEMORY[0x277CBECE8];
    v46 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloat32Type, &valuePtr);
    IOSurfaceSetValue(a6, *MEMORY[0x277CD29E0], v46);
    CFRelease(v46);
  }

  else
  {
    v45 = *MEMORY[0x277CBECE8];
  }

  v47 = CFDataCreate(v45, bytes, 288);
  IOSurfaceSetValue(a6, @"DolbyVisionBackwardDMParameter", v47);
  CFRelease(v47);
  setDisplayManagementPayload(a1, a6);
}

float HLG2L(float a1)
{
  if (a1 <= 0.5)
  {
    return (a1 * a1) / 3.0;
  }

  else
  {
    return (expf((a1 + -0.55991) / 0.17883) + 0.28467) / 12.0;
  }
}

float HLG2L_double(float a1)
{
  if (a1 <= 0.5)
  {
    return (a1 * a1) / 3.0;
  }

  else
  {
    return (exp((a1 + -0.55991073) / 0.17883277) + 0.28466892) / 12.0;
  }
}

void setPQ2LBufferFP16(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    v15 = 1.0 / (a2 - 1);
    do
    {
      v5 = v15 * v4;
      v6 = v5 < 0.00000073096;
      if (v5 < 0.00000073096)
      {
        v5 = -(v5 + -0.0000014619);
      }

      v7 = flt_2508CD850[v6];
      v8 = powf(v5, 0.012683);
      v9 = fmax(((v8 + -0.83594) / ((v8 * -18.688) + 18.852)), 0.0);
      _S0 = v7 * powf(v9, 6.2774);
      __asm { FCVT            H0, S0 }

      *(a1 + 2 * v4++) = LOWORD(_S0);
    }

    while (a2 > v4);
  }
}

void setPQ2LBuffer(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    v10 = 1.0 / (a2 - 1);
    do
    {
      v5 = v10 * v4;
      v6 = v5 < 0.00000073096;
      if (v5 < 0.00000073096)
      {
        v5 = -(v5 + -0.0000014619);
      }

      v7 = flt_2508CD850[v6];
      v8 = powf(v5, 0.012683);
      v9 = fmax(((v8 + -0.83594) / ((v8 * -18.688) + 18.852)), 0.0);
      *(a1 + 4 * v4++) = v7 * powf(v9, 6.2774);
    }

    while (a2 > v4);
  }
}

void setHLG2LBuffer(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    v5 = 1.0 / (a2 - 1);
    do
    {
      v6 = v5 * v4;
      if (v6 <= 0.5)
      {
        v7 = (v6 * v6) / 3.0;
      }

      else
      {
        v7 = (exp((v6 + -0.55991073) / 0.17883277) + 0.28466892) / 12.0;
      }

      *(a1 + 4 * v4++) = v7;
    }

    while (a2 > v4);
  }
}

uint64_t setLinearBuffer(uint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    do
    {
      v3 = 1.0 / (a2 - 1);
      *(result + 4 * v2) = v3 * v2;
      ++v2;
    }

    while (a2 > v2);
  }

  return result;
}

void setL2PQBuffer(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v6 = a2 >> 1;
  if (a2 >= 2)
  {
    v7 = 0;
    if (v6 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6;
    }

    do
    {
      v9 = (a3 / (v6 - 1)) * v7;
      if (v9 >= 0.0)
      {
        v12 = powf(v9 * 0.0001, 0.1593);
        v11 = powf(((v12 * 18.852) + 0.83594) / ((v12 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v10 = powf(v9 * -0.0001, 0.1593);
        v11 = 0.0000014619 - powf(((v10 * 18.852) + 0.83594) / ((v10 * 18.688) + 1.0), 78.844);
      }

      *(a1 + 4 * v7++) = v11;
    }

    while (v8 != v7);
  }

  v13 = v6;
  if (v6 < a2)
  {
    v14 = 1;
    do
    {
      v15 = a3 + (v14 * ((a4 - a3) / (v6 - 1)));
      if (v15 >= 0.0)
      {
        v18 = powf(v15 * 0.0001, 0.1593);
        v17 = powf(((v18 * 18.852) + 0.83594) / ((v18 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v16 = powf(v15 * -0.0001, 0.1593);
        v17 = 0.0000014619 - powf(((v16 * 18.852) + 0.83594) / ((v16 * 18.688) + 1.0), 78.844);
      }

      *(a1 + 4 * v13) = v17;
      v13 = v6 + v14++;
    }

    while (v13 < a2);
  }
}

void getSat2FactorForI(int a1, unint64_t a2, float *a3, int *a4)
{
  v6 = (a1 + a1) / a2;
  v7 = a3[63];
  v8 = a3[64];
  v9 = a3[65];
  v10 = a3[66];
  v11 = v10 + (((v8 * v6) * v6) - (v9 * v6));
  if (a3[68] < v11)
  {
    v11 = a3[68];
  }

  v12 = a3[67];
  if (v12 < v11)
  {
    v12 = v11;
  }

  v13 = 1.0 - (v7 * powf(v6, v12));
  v14 = *a4;
  if (v13 >= (1.0 - ((v7 * v6) * a3[69])))
  {
    if (!v14)
    {
      return;
    }
  }

  else if (!v14)
  {
    *a4 = 1;
  }

  if (v6 > 0.3539)
  {
    v15 = v9 * -0.3539 + v8 * 0.3539 * 0.3539 + v10;
    powf(0.3539, v15);
  }
}

float getSat2FactorForPT(int a1, unint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = (a1 + a1) / a2;
  if (*a4)
  {
    result = v4 / -6.0 + 1.04;
  }

  else
  {
    result = 1.0 - (*(a3 + 252) * v4);
  }

  if (result < 0.6)
  {
    return 0.6;
  }

  return result;
}

void setSat2FactorTable(uint64_t a1, unint64_t a2, float *a3, int a4)
{
  v19 = 0;
  if (a2)
  {
    v8 = 0;
    v9 = 0;
    v10 = a2;
    v11 = a2;
    v12 = 1;
    do
    {
      v13 = v12 - 1;
      if (a4)
      {
        v14 = 2 * v9;
        *(a1 + 4 * v8) = 1.0 - ((a3[63] * v13) / v11);
        v15 = 1.0 - ((a3[63] * v13) / v11);
      }

      else
      {
        getSat2FactorForI(v12 - 1, a2, a3, &v19);
        *(a1 + 4 * v8) = v16;
        v17 = (v13 + v13) / v10;
        if (v19)
        {
          v15 = v17 / -6.0 + 1.04;
        }

        else
        {
          v15 = 1.0 - (a3[63] * v17);
        }

        if (v15 < 0.6)
        {
          v15 = 0.6;
        }

        v14 = v8;
      }

      *(a1 + 4 * (v14 | 1u)) = v15;
      ++v9;
      v18 = v12++;
      v8 += 2;
    }

    while (v18 < a2);
  }
}

float getInverseScalingFactor(float *a1, float a2)
{
  v3 = 1.0;
  if (a2 != 0.0)
  {
    v5 = powf(a2, 3.0);
    v3 = powf(fmaxf((v5 - a1[1]) / (a1[2] - (a1[3] * v5)), 0.0), 1.0 / *a1) / a2;
  }

  return fminf(fmaxf(v3, 0.5), 2.0);
}

void setInverseScalingFactorTable(uint64_t a1, unint64_t a2, float *a3)
{
  v6 = powf(a3[2] / a3[3], 0.33333);
  if (a2)
  {
    v7 = 0;
    v8 = fminf(v6, 1.0);
    do
    {
      v9 = 1.0 / (a2 - 1) * v7;
      v10 = fminf(v9, v8);
      v11 = 1.0;
      if (v10 != 0.0)
      {
        v12 = powf(v10, 3.0);
        v11 = powf(fmaxf((v12 - a3[1]) / (a3[2] - (a3[3] * v12)), 0.0), 1.0 / *a3) / v10;
      }

      *(a1 + 4 * v7++) = fminf(fmaxf(v11, 0.5), 2.0);
    }

    while (a2 > v7);
  }
}

void GetRelative_YUV_TM(float *a1, unint64_t a2, float a3, float a4, char a5)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v8 = logf(a4 + 1.062);
    v9 = logf(a3 + 12.265);
    v10 = 0;
    v11 = (v8 + -0.44573) / 3.7296;
    v12 = (v9 + -4.72086) / 3.79878;
    if (v12 <= 1.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1.0;
    }

    v14 = v12 < 0.0;
    v15 = 0.0;
    if (!v14)
    {
      v15 = v13;
    }

    v16 = 1.0 - v15;
    do
    {
      *&v37[v10 * 4 + 132] = (v15 * GetRelative_YUV_TM(float *,unsigned long,float,float,BOOL)::tmap_b12[v10]) + (GetRelative_YUV_TM(float *,unsigned long,float,float,BOOL)::tmap_b11[v10] * v16);
      *&v37[v10 * 4] = (v15 * GetRelative_YUV_TM(float *,unsigned long,float,float,BOOL)::tmap_b22[v10]) + (GetRelative_YUV_TM(float *,unsigned long,float,float,BOOL)::tmap_b21[v10] * v16);
      ++v10;
    }

    while (v10 != 33);
    v17 = 0;
    if (v11 <= 1.0)
    {
      v18 = (v8 + -0.44573) / 3.7296;
    }

    else
    {
      v18 = 1.0;
    }

    if (v11 < 0.0)
    {
      v18 = 0.0;
    }

    do
    {
      a1[v17] = ((v18 * *&v37[v17 * 4]) + (*&v37[v17 * 4 + 132] * (1.0 - v18))) / 4095.0;
      ++v17;
    }

    while (v17 != 33);
  }

  else
  {
    v19 = a3;
    v20 = log(a3 + 1531.5734);
    v21 = a4;
    v22 = log(a4 + 1.0001);
    v23 = v22 * 6.5753 / v20 + sqrtf(v20) * 3.6185 + -9.134 + sqrtf(v22) * 0.064768 + v22 * -0.63664;
    v24 = log(v19 + 705.0095);
    v25 = log(v21 + 4.2652);
    v26 = sqrtf(v24) * -0.70331 + 1.4379 + sqrtf(v25) * 0.30074 + v25 * 0.17345 + v25 * -1.1976 / v24;
    *&v19 = log(v19 + 147.5841);
    v27 = log(v21 + 13.2092);
    v28 = 0;
    *&v27 = v27;
    v29 = *&v27 * 1.3535 / *&v19 + sqrtf(*&v19) * 0.5241 + -0.33629 + sqrtf(*&v27) * -1.173 + *&v27 * 0.12624;
    do
    {
      *&v37[v28 + 132] = ((v26 * *(&GetRelative_SDR_DOLBY(float *,unsigned long,float,float)::tmap_bases + v28 + 132)) + (*(&GetRelative_SDR_DOLBY(float *,unsigned long,float,float)::tmap_bases + v28) * v23)) + (*(&GetRelative_SDR_DOLBY(float *,unsigned long,float,float)::tmap_bases + v28 + 264) * v29);
      v28 += 4;
    }

    while (v28 != 132);
    v30 = powf(a3 / 10000.0, 0.1593);
    v31 = (v30 * 18.8515625 + 0.8359375) / (v30 * 18.6875 + 1.0);
    v32 = powf(v31, 78.844);
    v33 = 0;
    v34 = 1.0;
    if (v32 <= 1.0)
    {
      v34 = v32;
    }

    v14 = v32 < 0.0;
    v35 = 0.0;
    if (!v14)
    {
      v35 = v34;
    }

    v36 = v38;
    do
    {
      a1[v33] = (v35 * *&v37[v33 * 4 + 132]) / v36;
      ++v33;
    }

    while (v33 != 33);
  }
}

void GetRelative_SDR_DOLBY(float *a1, float a2, float a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = log(a2 + 1531.5734);
  v8 = a3;
  v9 = log(a3 + 1.0001);
  v10 = v9 * 6.5753 / v7 + sqrtf(v7) * 3.6185 + -9.134 + sqrtf(v9) * 0.064768 + v9 * -0.63664;
  v11 = log(v6 + 705.0095);
  v12 = log(v8 + 4.2652);
  v13 = sqrtf(v11) * -0.70331 + 1.4379 + sqrtf(v12) * 0.30074 + v12 * 0.17345 + v12 * -1.1976 / v11;
  *&v6 = log(v6 + 147.5841);
  v14 = log(v8 + 13.2092);
  v15 = 0;
  *&v14 = v14;
  v16 = *&v14 * 1.3535 / *&v6 + sqrtf(*&v6) * 0.5241 + -0.33629 + sqrtf(*&v14) * -1.173 + *&v14 * 0.12624;
  do
  {
    *&v25[v15] = ((v13 * *(&GetRelative_SDR_DOLBY(float *,unsigned long,float,float)::tmap_bases + v15 + 132)) + (*(&GetRelative_SDR_DOLBY(float *,unsigned long,float,float)::tmap_bases + v15) * v10)) + (*(&GetRelative_SDR_DOLBY(float *,unsigned long,float,float)::tmap_bases + v15 + 264) * v16);
    v15 += 4;
  }

  while (v15 != 132);
  v17 = powf(a2 / 10000.0, 0.1593);
  v18 = (v17 * 18.8515625 + 0.8359375) / (v17 * 18.6875 + 1.0);
  v19 = powf(v18, 78.844);
  v20 = 0;
  v21 = 1.0;
  if (v19 <= 1.0)
  {
    v21 = v19;
  }

  v22 = v19 < 0.0;
  v23 = 0.0;
  if (!v22)
  {
    v23 = v21;
  }

  v24 = v26;
  do
  {
    a1[v20] = (v23 * *&v25[v20 * 4]) / v24;
    ++v20;
  }

  while (v20 != 33);
}

float linearInterpolation(double a1, double a2, double a3, double a4, double a5)
{
  v5 = a3;
  v10 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    if (a3 != a4)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v6 = logInstanceID;
        }

        else
        {
          v6 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v8 = 134217984;
          v9 = WORD1(v6);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: y1 == y2 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 2471\n", &v8, 0xCu);
        }

        prevLogInstanceID = v6;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: y1 == y2 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 2471\n", &v8, 2u);
      }
    }
  }

  else
  {
    return (a4 - a3) * (a5 - a1) / (a2 - a1) + a3;
  }

  return v5;
}

void GetToneMap_SDR_DOLBY(float *a1, unint64_t a2, float a3, float a4, float a5, float a6, float a7)
{
  v32 = *MEMORY[0x277D85DE8];
  v14 = malloc_type_malloc(0x84uLL, 0x100004052888210uLL);
  v15 = malloc_type_malloc(0x84uLL, 0x100004052888210uLL);
  v16 = v15;
  if (!v14 || !v15)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v17 = logInstanceID;
      }

      else
      {
        v17 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v30 = 134217984;
        v31 = WORD1(v17);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: bufferT && bufferS warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 2498\n", &v30, 0xCu);
      }

      prevLogInstanceID = v17;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: bufferT && bufferS warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 2498\n", &v30, 2u);
    }
  }

  GetRelative_SDR_DOLBY(v14, a3, a4);
  GetRelative_SDR_DOLBY(v16, a5, a6);
  if (a2)
  {
    LODWORD(v18) = 0;
    v19 = v16[32] / (a2 - 1);
    v20 = a7;
    do
    {
      v21 = 0;
      v22 = v19 * v18;
      v23 = v16;
      v24 = v14;
      while (v22 > *v23)
      {
        --v21;
        ++v24;
        ++v23;
        if (v21 == -33)
        {
          goto LABEL_20;
        }
      }

      v25 = -v21;
      if (v25)
      {
        if (v25 == 33)
        {
LABEL_20:
          v26 = v14[32];
          goto LABEL_23;
        }

        v26 = linearInterpolation(*(v23 - 1), *v23, *(v24 - 1), *v24, v22);
      }

      else
      {
        v26 = *v14;
      }

LABEL_23:
      a1[(2 * v18)] = v26;
      v27 = ((v26 + (-v19 * v18)) + 1.0) * v20;
      a1[(2 * v18) | 1] = v27;
      v18 = (v18 + 1);
    }

    while (v18 < a2);
    if (a2 != 1)
    {
      v28 = 1;
      v29 = 2;
      do
      {
        a1[v29] = a1[v29] / (v19 * v28++);
        v29 += 2;
      }

      while (v28 < a2);
    }
  }

  *a1 = a1[2];
  free(v14);
  free(v16);
}

void GetToneMap_YUV_TM(_DWORD *a1, unint64_t a2, char a3, int a4, float a5, float a6, float a7, float a8, float a9)
{
  v45 = *MEMORY[0x277D85DE8];
  v18 = malloc_type_malloc(0x84uLL, 0x100004052888210uLL);
  v19 = malloc_type_malloc(0x84uLL, 0x100004052888210uLL);
  v21 = v19;
  if (!v18 || !v19)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v22 = logInstanceID;
      }

      else
      {
        v22 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v43 = 134217984;
        v44 = WORD1(v22);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: bufferT && bufferS warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 2546\n", &v43, 0xCu);
      }

      prevLogInstanceID = v22;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v43) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: bufferT && bufferS warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 2546\n", &v43, 2u);
    }
  }

  GetRelative_YUV_TM(v18, v20, a5, a6, a4);
  GetRelative_YUV_TM(v21, v23, a7, a8, a4);
  if (a2)
  {
    LODWORD(v24) = 0;
    v25 = v21[32] / (a2 - 1);
    v26 = a9;
    do
    {
      v27 = 0;
      v28 = v25 * v24;
      v29 = v21;
      v30 = v18;
      while (v28 > *v29)
      {
        --v27;
        ++v30;
        ++v29;
        if (v27 == -33)
        {
          goto LABEL_20;
        }
      }

      v31 = -v27;
      if (v31)
      {
        if (v31 == 33)
        {
LABEL_20:
          v32 = v18[32];
          goto LABEL_23;
        }

        v32 = linearInterpolation(*(v29 - 1), *v29, *(v30 - 1), *v30, v28);
      }

      else
      {
        v32 = *v18;
      }

LABEL_23:
      *&a1[(2 * v24)] = v32;
      v33 = ((v32 + (-v25 * v24)) + 1.0) * v26;
      *&a1[(2 * v24) | 1] = v33;
      v24 = (v24 + 1);
    }

    while (v24 < a2);
    if (a2 != 1)
    {
      v34 = 1;
      v35 = 2;
      do
      {
        *&a1[v35] = *&a1[v35] / (v25 * v34++);
        v35 += 2;
      }

      while (v34 < a2);
    }
  }

  *a1 = a1[2];
  if (a3)
  {
    if (a4)
    {
      if (a2)
      {
        v36 = 0;
        v37 = 1;
        do
        {
          *&a1[v36] = vmul_f32(*&a1[v36], 0x45600000455B0000);
          v38 = v37++;
          v36 += 2;
        }

        while (v38 < a2);
      }
    }

    else if (a2)
    {
      v39 = 0;
      v40 = 1;
      v41 = vdup_n_s32(0x457FF000u);
      do
      {
        *&a1[v39] = vmul_f32(*&a1[v39], v41);
        v42 = v40++;
        v39 += 2;
      }

      while (v42 < a2);
    }
  }

  free(v18);
  free(v21);
}

void dovi_getScalingFactor(float a1, uint64_t a2, uint64_t a3, uint64_t a4, _EdrAdaptationParam *a5, uint64_t a6, int a7)
{
  v13 = a1;
  if (a7)
  {
    v14 = a1 < 0.00000073096;
    v15 = -(a1 + -0.0000014619);
    if (a1 >= 0.00000073096)
    {
      v15 = a1;
    }

    v16 = flt_2508CD850[v14];
    v17 = powf(v15, 0.012683);
    v18 = fmax(((v17 + -0.83594) / ((v17 * -18.688) + 18.852)), 0.0);
    v19 = powf(v18, 6.2774);
    v20 = powf((v16 * v19) / 1000.0, *(a3 + 284) + 1.0) * 1000.0;
    if (v20 >= 0.0)
    {
      v22 = powf(v20 * 0.0001, 0.1593);
      v13 = powf(((v22 * 18.852) + 0.83594) / ((v22 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v21 = powf(v20 * -0.0001, 0.1593);
      v13 = 0.0000014619 - powf(((v21 * 18.852) + 0.83594) / ((v21 * 18.688) + 1.0), 78.844);
    }
  }

  v23 = v13;
  if (*a4 == 1)
  {
    v24 = powf(v13, *(a3 + 144));
    v25 = fmax(((*(a3 + 148) + (*(a3 + 152) * v24)) / ((*(a3 + 156) * v24) + 1.0)), 0.0);
    v23 = powf(v25, 0.33333);
    if (hasTrim(a3))
    {
      v26 = fmax((*(a3 + 240) + (v23 * *(a3 + 236))), 0.0);
      v23 = powf(v26, *(a3 + 244));
    }

    if (*(a3 + 493) == 1)
    {
      v23 = applyLinearStretchInPQ(v23, *(a4 + 124), *(a4 + 120));
    }
  }

  v27 = applyEdrAdaptationCurveS(a5, v23);
  v28 = applyAmbAdaptationCurveS_C(a6, v27);
  if (a7)
  {
    v29 = v28 / v13;
    if (v13 == 0.0)
    {
      v29 = 1.0;
    }

    v30 = fmaxf(v29, 0.5);
    if (*(a3 + 492))
    {
      v29 = v30;
    }

    v31 = (v13 * fminf(v29, 2.0)) / a1;
  }

  else
  {
    v32 = v28 / a1;
    if (a1 == 0.0)
    {
      v32 = 1.0;
    }

    v33 = fmaxf(v32, 0.5);
    if (*(a3 + 492))
    {
      v32 = v33;
    }

    v31 = fminf(v32, 2.0);
  }

  if (*(a3 + 465) == 1 && *(a3 + 472) == 1)
  {
    v34 = *(a3 + 476);
    v35 = v31 * a1;
    v36 = v35 < 0.00000073096;
    if (v35 < 0.00000073096)
    {
      v35 = -(v35 + -0.0000014619);
    }

    v37 = flt_2508CD850[v36];
    v38 = powf(v35, 0.012683);
    v39 = fmax(((v38 + -0.83594) / ((v38 * -18.688) + 18.852)), 0.0);
    v40 = powf(v39, 6.2774);
    v41 = pow(((v37 * v40) / v34), 1.0 / *(a3 + 468));
    v42 = v34 * v41;
    if (v42 >= 0.0)
    {
      v44 = powf(v42 * 0.0001, 0.1593);
      powf(((v44 * 18.852) + 0.83594) / ((v44 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v43 = powf(v42 * -0.0001, 0.1593);
      powf(((v43 * 18.852) + 0.83594) / ((v43 * 18.688) + 1.0), 78.844);
    }
  }
}

float dovi_getScalingFactorForPT(float a1, uint64_t a2, uint64_t a3, uint64_t a4, _EdrAdaptationParam *a5, uint64_t a6, int a7)
{
  v13 = a1;
  if (a7)
  {
    v14 = a1 < 0.00000073096;
    v15 = -(a1 + -0.0000014619);
    if (a1 >= 0.00000073096)
    {
      v15 = a1;
    }

    v16 = flt_2508CD850[v14];
    v17 = powf(v15, 0.012683);
    v18 = fmax(((v17 + -0.83594) / ((v17 * -18.688) + 18.852)), 0.0);
    v19 = powf(v18, 6.2774);
    v20 = powf((v16 * v19) / 1000.0, *(a3 + 284) + 1.0) * 1000.0;
    if (v20 >= 0.0)
    {
      v22 = powf(v20 * 0.0001, 0.1593);
      v13 = powf(((v22 * 18.852) + 0.83594) / ((v22 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v21 = powf(v20 * -0.0001, 0.1593);
      v13 = 0.0000014619 - powf(((v21 * 18.852) + 0.83594) / ((v21 * 18.688) + 1.0), 78.844);
    }
  }

  v23 = v13;
  if (*a4 == 1)
  {
    v24 = powf(v13, *(a3 + 144));
    v25 = fmax(((*(a3 + 148) + (*(a3 + 152) * v24)) / ((*(a3 + 156) * v24) + 1.0)), 0.0);
    v26 = powf(v25, 0.33333);
    if (hasTrim(a3))
    {
      v27 = fmax((*(a3 + 240) + (v26 * *(a3 + 236))), 0.0);
      v26 = powf(v27, *(a3 + 244));
    }

    v28 = *(a4 + 140);
    v23 = powf(v26, v28);
    if (v28 <= 0.0)
    {
      v23 = v26;
    }

    if (*(a3 + 493) == 1)
    {
      v23 = applyLinearStretchInPQ(v23, *(a4 + 124), *(a4 + 120));
    }
  }

  v29 = applyEdrAdaptationCurveS(a5, v23);
  v30 = applyAmbAdaptationCurveS_C(a6, v29);
  if (a7)
  {
    v31 = v30 / v13;
    if (v13 == 0.0)
    {
      v31 = 1.0;
    }

    v32 = fmaxf(v31, 0.5);
    if (*(a3 + 492))
    {
      v31 = v32;
    }

    v33 = (v13 * fminf(v31, 2.0)) / a1;
  }

  else
  {
    v34 = v30 / a1;
    if (a1 == 0.0)
    {
      v34 = 1.0;
    }

    v35 = fmaxf(v34, 0.5);
    if (*(a3 + 492))
    {
      v34 = v35;
    }

    v33 = fminf(v34, 2.0);
  }

  if (*(a3 + 465) == 1 && *(a3 + 472) == 1)
  {
    v36 = *(a3 + 476);
    v37 = v33 * a1;
    v38 = v37 < 0.00000073096;
    if (v37 < 0.00000073096)
    {
      v37 = -(v37 + -0.0000014619);
    }

    v39 = flt_2508CD850[v38];
    v40 = powf(v37, 0.012683);
    v41 = fmax(((v40 + -0.83594) / ((v40 * -18.688) + 18.852)), 0.0);
    v42 = powf(v41, 6.2774);
    v43 = pow(((v39 * v42) / v36), 1.0 / *(a3 + 468));
    v44 = v36 * v43;
    if (v44 >= 0.0)
    {
      v47 = powf(v44 * 0.0001, 0.1593);
      v46 = powf(((v47 * 18.852) + 0.83594) / ((v47 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v45 = powf(v44 * -0.0001, 0.1593);
      v46 = 0.0000014619 - powf(((v45 * 18.852) + 0.83594) / ((v45 * 18.688) + 1.0), 78.844);
    }

    v33 = v46 / a1;
    if (a1 == 0.0)
    {
      v33 = 1.0;
    }
  }

  return 1.0 - (v13 - (v33 * a1));
}

void dovi_setScalingFactorTableS_C_deprecated(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _EdrAdaptationParam *a6, uint64_t a7)
{
  if (a3)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      dovi_getScalingFactor(*(a2 + 4 * v14), a1, a4, a5, a6, a7, 0);
      *(a1 + 4 * v14) = v16;
      v14 = v15++;
    }

    while (v14 < a3);
  }
}

float hlg_getScalingFactor(float a1, uint64_t a2, uint64_t a3, uint64_t a4, _EdrAdaptationParam *a5, uint64_t a6, int a7, void *a8)
{
  v14 = a8;
  v15 = *(a4 + 1436);
  if (v15 >= 0.0)
  {
    v18 = powf(v15 * 0.0001, 0.1593);
    v17 = powf(((v18 * 18.852) + 0.83594) / ((v18 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v16 = powf(v15 * -0.0001, 0.1593);
    v17 = 0.0000014619 - powf(((v16 * 18.852) + 0.83594) / ((v16 * 18.688) + 1.0), 78.844);
  }

  v19 = *(a4 + 1400);
  v20 = v17 * hlg_applyTonemapCurveS(a4, a3, v14, a1);
  if (a7 != -1 && *(a4 + 1424) == 1)
  {
    v20 = applyEdrAdaptationCurveS(a5, v20);
  }

  if (*(a3 + 493) == 1)
  {
    if (v19 == 3)
    {
      v21 = *(a4 + 1396);
      if (v21 != 1.0)
      {
        v20 = *(a4 + 1392) + ((v20 - *(a4 + 1392)) * v21);
      }
    }

    else if (v19 == 2)
    {
      v20 = applyLinearStretchInPQ(v20, *(a4 + 1388), *(a4 + 1384));
    }
  }

  if (a7 == -1 || *(a4 + 1424) != 1)
  {
    v23 = v20 < 0.00000073096;
    if (v20 < 0.00000073096)
    {
      v20 = -(v20 + -0.0000014619);
    }

    v24 = flt_2508CD850[v23];
    v25 = powf(v20, 0.012683);
    v26 = fmax(((v25 + -0.83594) / ((v25 * -18.688) + 18.852)), 0.0);
    v22 = v24 * powf(v26, 6.2774);
  }

  else
  {
    v22 = applyAmbAdaptationCurveS(a6, v20);
  }

  v27 = v22 / v15;
  if (*(a3 + 465) == 1 && *(a3 + 472) == 1)
  {
    v28 = *(a3 + 476);
    v29 = pow((v27 * (v15 / v28)), 1.0 / *(a3 + 468));
    v27 = (v28 / v15) * v29;
  }

  v30 = v27 / a1;
  if (a1 <= 0.0)
  {
    v31 = 1.0;
  }

  else
  {
    v31 = v30;
  }

  return v31;
}

void hlg_setScalingFactorTable(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _EdrAdaptationParam *a6, uint64_t a7, int a8, void *a9)
{
  v17 = a9;
  v20 = v17;
  if (a3)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      *(a1 + 4 * v18) = hlg_getScalingFactor(*(a2 + 4 * v18), v17, a4, a5, a6, a7, a8, v20);
      v18 = v19++;
    }

    while (v18 < a3);
  }
}

void hlg_setScalingFactorTable_C(uint64_t a1, float *a2, unint64_t a3, uint64_t a4, uint64_t a5, _EdrAdaptationParam *a6, uint64_t a7, int a8, void *a9)
{
  v34 = *MEMORY[0x277D85DE8];
  v16 = a9;
  v17 = v16;
  if (a3 > 0x400)
  {
    if (enableLogInstance)
    {
      v24 = a8;
      if (logInstanceID)
      {
        v25 = logInstanceID;
      }

      else
      {
        v25 = prevLogInstanceID;
      }

      v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        *buf = 134217984;
        v33 = WORD1(v25);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 3303\n", buf, 0xCu);
      }

      prevLogInstanceID = v25;
      a8 = v24;
    }

    else
    {
      v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        *buf = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 3303\n", buf, 2u);
      }
    }

    _MergedGlobals_5 = 0;
    goto LABEL_25;
  }

  if (_MergedGlobals_5 != 1 || qword_280C71968 != a3)
  {
    v30 = a8;
    if (a3)
    {
      v19 = hlg_setScalingFactorTable_C::HLG2L_cache;
      v20 = a2;
      v21 = a3;
      do
      {
        v22 = *v20;
        if (*v20 <= 0.5)
        {
          v23 = (v22 * v22) / 3.0;
        }

        else
        {
          v23 = (exp((v22 + -0.55991073) / 0.17883277) + 0.28466892) / 12.0;
        }

        *v19++ = v23;
        ++v20;
        --v21;
      }

      while (v21);
    }

    qword_280C71968 = a3;
    _MergedGlobals_5 = 1;
    a8 = v30;
  }

  if (a3)
  {
LABEL_25:
    v26 = 0;
    v27 = 1;
    do
    {
      if (_MergedGlobals_5 == 1)
      {
        v28 = hlg_setScalingFactorTable_C::HLG2L_cache[v26];
      }

      else
      {
        v29 = a2[v26];
        if (v29 <= 0.5)
        {
          v28 = (v29 * v29) / 3.0;
        }

        else
        {
          v28 = (exp((v29 + -0.55991073) / 0.17883277) + 0.28466892) / 12.0;
        }
      }

      *(a1 + 4 * v26) = hlg_getScalingFactor(v28, v16, a4, a5, a6, a7, a8, v17);
      v26 = v27++;
    }

    while (v26 < a3);
  }
}

void hdr10_setupTmPreset(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = *(a2 + 8) == 1 && *(a2 + 40) == 2;
  v5 = 0;
  if ((*(a3 + 152) & 2) == 0 && !v4)
  {
    v6 = *(a2 + 40) - 6;
    if (v6 > 2)
    {
      v5 = 7;
    }

    else
    {
      v5 = dword_2508D0860[v6];
    }
  }

  *a4 = v5;
}

void hdr10_setupTmParams(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v10 = (a3 + 6604);
  v219 = a4;
  v11 = a6;
  *(a3 + 272) = -1;
  *(a3 + 288) = *(a3 + 228);
  v12 = *(a3 + 24);
  *(a3 + 292) = 1.0 / *(a3 + 28);
  *(a3 + 296) = v12;
  v13 = fmaxf(*(a2 + 152), 0.0);
  *(a3 + 308) = v13;
  v14 = *(a2 + 148);
  v15 = v14;
  if (!v14)
  {
    v15 = 1000.0;
  }

  *(a3 + 312) = v15;
  v16 = *a3;
  v17 = *a3 * *(a3 + 236);
  v18 = fmax(v17, 0.0);
  *(a3 + 320) = v18;
  *(a3 + 316) = v18;
  v19 = v16;
  *(a3 + 324) = v19;
  *(a3 + 328) = fminf(*(a1 + 280), 4000.0);
  *(a3 + 336) = v13;
  *(a3 + 340) = v15;
  *(a3 + 344) = *(a3 + 256);
  *(a3 + 348) = 1092616192;
  v20 = *(a3 + 40);
  if (v20 >= 0.0)
  {
    v23 = powf(v20 * 0.0001, 0.1593);
    v22 = powf(((v23 * 18.852) + 0.83594) / ((v23 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v21 = powf(v20 * -0.0001, 0.1593);
    v22 = 0.0000014619 - powf(((v21 * 18.852) + 0.83594) / ((v21 * 18.688) + 1.0), 78.844);
  }

  v24 = (a3 + 268);
  *(a3 + 352) = v22;
  v25 = powf(v12 / 10000.0, 0.1593);
  v26 = (v25 * 18.8515625 + 0.8359375) / (v25 * 18.6875 + 1.0);
  v27 = powf(v26, 78.844);
  v28 = 1.0;
  if (v27 <= 1.0)
  {
    v28 = v27;
  }

  _NF = v27 < 0.0;
  v30 = 0.0;
  if (!_NF)
  {
    v30 = v28;
  }

  *(a3 + 356) = v30;
  v31 = v17;
  *(a3 + 332) = v31;
  *(a3 + 468) = 0;
  *(a3 + 528) = *(a3 + 6636);
  if (v10[29] == 1)
  {
    *(a3 + 466) = 0;
    *(a3 + 268) = 0;
    *(a3 + 284) = 26;
    *(a3 + 300) = 0;
    goto LABEL_18;
  }

  if (v10[28] != 1 || !*v24 || *v24 == 6)
  {
    if (overrideEdrAdaptationMode == -1 && GetConfig() && (v57 = GetConfig(), *HDRConfig::GetConfigEntryValue(v57, 0xE2u, 0) == 1))
    {
      if (GetConfig())
      {
        Config = GetConfig();
        v32 = *HDRConfig::GetConfigEntryValue(Config, 0xE4u, 0);
      }

      else
      {
        v32 = 0;
      }

      if (GetConfig())
      {
        v84 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v84, 0xE6u, 0) == 1)
        {
          *(a3 + 244) = 1153888666;
        }
      }
    }

    else
    {
      v32 = 13;
    }

    setupHistogramBasedToneMapping(a1, a3, a3 + 268, v11, 8, 0, 1, v32, 5);
    goto LABEL_18;
  }

  v59 = *v10;
  if (GetConfig())
  {
    v60 = GetConfig();
    v202 = *HDRConfig::GetConfigEntryValue(v60, 0x6Au, 0) & v59;
  }

  else
  {
    v202 = 0;
  }

  if (GetConfig())
  {
    v61 = GetConfig();
    v199 = *HDRConfig::GetConfigEntryValue(v61, 0x99u, 0);
  }

  else
  {
    v199 = 0;
  }

  if (GetConfig())
  {
    v62 = GetConfig();
    v63 = *HDRConfig::GetConfigEntryValue(v62, 0x9Bu, 0);
  }

  else
  {
    v63 = 0;
  }

  if (GetConfig())
  {
    v65 = GetConfig();
    v66 = *HDRConfig::GetConfigEntryValue(v65, 0x9Cu, 0);
  }

  else
  {
    v66 = 0;
  }

  LODWORD(v64) = *(a3 + 6572);
  *&v67 = v64 / 10.0;
  v68 = *&v67;
  LODWORD(v67) = *(a3 + 6600);
  *&v69 = v67 / 10.0;
  v70 = *&v69;
  LODWORD(v69) = *(a3 + 6596);
  v71 = v69 / 10.0;
  *&v71 = v71;
  v204 = *&v71;
  LODWORD(v71) = *(a3 + 6588);
  v72 = *&v71 / 10.0;
  *&v72 = v72;
  v210 = *&v72;
  LODWORD(v72) = *(a3 + 6584);
  v73 = *&v72 / 10.0;
  *&v73 = v73;
  v214 = *&v73;
  LODWORD(v73) = *(a3 + 6580);
  v74 = *&v73 / 10.0;
  *&v74 = v74;
  v208 = *&v74;
  LODWORD(v74) = *(a3 + 6568);
  *&v75 = *&v74 / 10.0;
  *&v75 = *&v75;
  v200 = *&v75;
  LODWORD(v75) = *(a3 + 6552);
  v198 = v75;
  v197 = v68;
  v76 = powf(v68 * 0.0001, 0.1593);
  v196 = powf(((v76 * 18.852) + 0.83594) / ((v76 * 18.688) + 1.0), 78.844);
  v77 = powf(v70 * 0.0001, 0.1593);
  v203 = powf(((v77 * 18.852) + 0.83594) / ((v77 * 18.688) + 1.0), 78.844);
  v78 = powf(v204 * 0.0001, 0.1593);
  v195 = powf(((v78 * 18.852) + 0.83594) / ((v78 * 18.688) + 1.0), 78.844);
  v79 = powf(v210 * 0.0001, 0.1593);
  v207 = powf(((v79 * 18.852) + 0.83594) / ((v79 * 18.688) + 1.0), 78.844);
  v80 = powf(v214 * 0.0001, 0.1593);
  v206 = powf(((v80 * 18.852) + 0.83594) / ((v80 * 18.688) + 1.0), 78.844);
  v81 = powf(v208 * 0.0001, 0.1593);
  v205 = powf(((v81 * 18.852) + 0.83594) / ((v81 * 18.688) + 1.0), 78.844);
  v82 = powf(v200 * 0.0001, 0.1593);
  v201 = powf(((v82 * 18.852) + 0.83594) / ((v82 * 18.688) + 1.0), 78.844);
  if (v202)
  {
    v83 = v214;
    goto LABEL_93;
  }

  if (v63 == 3)
  {
    v85 = v203 * 0.6 + v196 * 0.3 + v195 * 0.1;
    v86 = v85 < 0.00000073096;
    if (v85 < 0.00000073096)
    {
      v85 = -(v85 + -0.0000014619);
    }

    v87 = flt_2508CD850[v86];
    v88 = powf(v85, 0.012683);
    v89 = fmax(((v88 + -0.83594) / ((v88 * -18.688) + 18.852)), 0.0);
    v70 = v87 * powf(v89, 6.2774);
    goto LABEL_92;
  }

  if (v63 == 2)
  {
    v70 = v70 * 0.5 + v197 * 0.3 + v204 * 0.2;
LABEL_92:
    v83 = v214;
    goto LABEL_93;
  }

  v83 = v214;
  if (v63 == 1)
  {
    v70 = v197;
  }

LABEL_93:
  if (v66 == 3)
  {
    v91 = v206 * 0.5 + v207 * 0.2 + v205 * 0.3;
    v92 = v91 < 0.00000073096;
    if (v91 < 0.00000073096)
    {
      v91 = -(v91 + -0.0000014619);
    }

    v93 = flt_2508CD850[v92];
    v94 = powf(v91, 0.012683);
    v95 = fmax(((v94 + -0.83594) / ((v94 * -18.688) + 18.852)), 0.0);
    v83 = v93 * powf(v95, 6.2774);
    goto LABEL_102;
  }

  if (v66 == 2)
  {
    v90 = v83 * 0.5 + v210 * 0.2 + v208 * 0.3;
    goto LABEL_98;
  }

  if (v66 != 1)
  {
    v90 = v198 / 10.0;
LABEL_98:
    v83 = v90;
  }

LABEL_102:
  if (v70 >= 0.0)
  {
    v98 = powf(v70 * 0.0001, 0.1593);
    v97 = powf(((v98 * 18.852) + 0.83594) / ((v98 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v96 = powf(v70 * -0.0001, 0.1593);
    v97 = 0.0000014619 - powf(((v96 * 18.852) + 0.83594) / ((v96 * 18.688) + 1.0), 78.844);
  }

  v215 = v97;
  if (v83 >= 0.0)
  {
    v101 = powf(v83 * 0.0001, 0.1593);
    v100 = powf(((v101 * 18.852) + 0.83594) / ((v101 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v99 = powf(v83 * -0.0001, 0.1593);
    v100 = 0.0000014619 - powf(((v99 * 18.852) + 0.83594) / ((v99 * 18.688) + 1.0), 78.844);
  }

  v102 = *(a3 + 308);
  if (v102 >= 0.0)
  {
    v105 = powf(v102 * 0.0001, 0.1593);
    v104.f32[0] = powf(((v105 * 18.852) + 0.83594) / ((v105 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v103 = powf(v102 * -0.0001, 0.1593);
    v104.f32[0] = 0.0000014619 - powf(((v103 * 18.852) + 0.83594) / ((v103 * 18.688) + 1.0), 78.844);
  }

  v106 = fmax(fmin(v100, 0.9997558), 0.0);
  v211 = v106 + -0.000244200244;
  v104.f32[1] = v215;
  v209 = vcvtq_f64_f32(v104);
  v216 = v106 + 0.000244200244;
  v107 = -(v106 + -0.0000014619);
  if (v106 < 0.00000073096)
  {
    v108 = -10000.0;
  }

  else
  {
    v107 = v106;
    v108 = 10000.0;
  }

  v109 = powf(v107, 0.012683);
  v110 = fmax(((v109 + -0.83594) / ((v109 * -18.688) + 18.852)), 0.0);
  *(a3 + 348) = v108 * powf(v110, 6.2774);
  __asm { FMOV            V0.2D, #1.0 }

  _Q0.f64[0] = v211;
  v115 = vbslq_s8(vcgtq_f64(_Q0, v209), v209, _Q0);
  v116.f64[0] = 0.0;
  v116.f64[1] = v216;
  *&v115.f64[0] = vcvt_f32_f64(vbslq_s8(vcgtq_f64(v115, v116), v115, v116));
  *&v116.f64[0] = vcge_f32(*&v115.f64[0], vdup_n_s32(0x354436E8u));
  v117 = vbsl_s8(*&v116.f64[0], *&v115.f64[0], vneg_f32(vadd_f32(*&v115.f64[0], vdup_n_s32(0xB5C436E8))));
  v212 = *v117.i32;
  v118 = vbsl_s8(*&v116.f64[0], vdup_n_s32(0x461C4000u), vdup_n_s32(0xC61C4000));
  v217 = powf(*&v117.i32[1], 0.012683);
  v119.f32[0] = powf(v212, 0.012683);
  v119.f32[1] = v217;
  v120 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v119, vdup_n_s32(0xBF560000)), vmla_f32(vdup_n_s32(0x4196D000u), vdup_n_s32(0xC1958000), v119))), 0));
  v213 = v120.f32[0];
  v218 = powf(v120.f32[1], 6.2774);
  v121.f32[0] = powf(v213, 6.2774);
  v121.f32[1] = v218;
  v122 = vmul_f32(v118, v121);
  *(a3 + 336) = v122;
  LODWORD(v122) = HIDWORD(v122);
  if (*(a3 + 344) >= *(&v122 + 1))
  {
    LODWORD(v122) = *(a3 + 344);
  }

  *(a3 + 344) = v122;
  if (v202)
  {
    *(a3 + 466) = 0;
    *(a3 + 268) = 13;
    LOWORD(v122) = *(a3 + 6606);
    v123 = v122 / 4095.0;
    *&v123 = v123;
    *(a3 + 472) = LODWORD(v123);
    LOWORD(v123) = *(a3 + 6608);
    *&v123 = *&v123 / 4095.0;
    *(a3 + 476) = LODWORD(v123);
    v124 = v10[6];
    *(a3 + 480) = v124;
    if (v124)
    {
      v125 = (a3 + 6612);
      v126 = (a3 + 484);
      v127 = v124;
      do
      {
        v128 = *v125++;
        v129 = v128 / 1023.0;
        *v126++ = v129;
        --v127;
      }

      while (v127);
    }

    else
    {
      v124 = 0;
    }

    *(a3 + 4 * v124 + 484) = 1065353216;
    *(a3 + 524) = *(a3 + 6536);
  }

  else if (v199 == 10)
  {
    *(a3 + 466) = 0;
    *(a3 + 268) = 10;
  }

  else
  {
    *(a3 + 466) = 1;
    *(a3 + 268) = v199;
  }

  *(a3 + 284) = 13;
  if (overrideEdrAdaptationMode == -1)
  {
    if (GetConfig())
    {
      v130 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v130, 0xE2u, 0) == 1)
      {
        if (GetConfig())
        {
          v131 = GetConfig();
          v132 = *HDRConfig::GetConfigEntryValue(v131, 0xE4u, 0);
        }

        else
        {
          v132 = 0;
        }

        *(a3 + 284) = v132;
        if (GetConfig())
        {
          v147 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v147, 0xE6u, 0) == 1)
          {
            *(a3 + 244) = 1153888666;
          }
        }
      }
    }
  }

  *(a3 + 300) = 5;
  *(a3 + 460) = 5;
  *(a3 + 428) = v201;
  *(a3 + 432) = v205;
  *(a3 + 436) = v206;
  *(a3 + 396) = xmmword_2508CF750;
  *(a3 + 440) = v207;
  *(a3 + 412) = 1065349861;
  *(a3 + 444) = v203;
  if (*(a3 + 185) == 1)
  {
    *(a3 + 284) = 0;
    *(a3 + 300) = 0;
  }

  if (overrideAmbAdaptationMode <= 6)
  {
    *(a3 + 300) = overrideAmbAdaptationMode;
  }

  if (overrideEdrAdaptationMode <= 0x1B)
  {
    *(a3 + 284) = overrideEdrAdaptationMode;
  }

  *(a3 + 468) = 1;
LABEL_18:
  if (v10[30] == 1)
  {
    *(a3 + 284) = 0;
    *(a3 + 300) = 0;
  }

  v33 = *(a3 + 244);
  v34 = *(a3 + 40) + -5.093;
  if (v34 <= v33)
  {
    v33 = *(a3 + 40) + -5.093;
  }

  _NF = v34 < 0.0;
  v35 = 0.0;
  if (!_NF)
  {
    v35 = v33;
  }

  *(a3 + 304) = *(a3 + 240) * (*(a3 + 232) * v35);
  v36 = overrideCminNits;
  if (*&overrideCminNits < 0.0)
  {
    v36 = *(a3 + 336);
  }

  *(a3 + 336) = v36;
  v37 = overrideCmaxNits;
  if (*&overrideCmaxNits < 0.0)
  {
    v37 = *(a3 + 340);
  }

  *(a3 + 340) = v37;
  v38 = *&overrideCmidNits;
  if (*&overrideCmidNits < 0.0)
  {
    v38 = *(a3 + 348);
  }

  *(a3 + 348) = v38;
  *(a3 + 376) = calculateAdaptiveSdiv(v38, *(a3 + 364));
  v39 = *(a3 + 268);
  switch(v39)
  {
    case 7:
      v40 = 2;
      break;
    case 12:
      v40 = 4;
      break;
    case 8:
      v40 = 3;
      break;
    default:
      goto LABEL_37;
  }

  *(a3 + 280) = v40;
LABEL_37:
  *(a3 + 464) = 1;
  hdr10_calculateTonemapCurveParamS(a3 + 268, a1, v219, a3 + 628);
  if (*(a3 + 372) == 1)
  {
    v41 = malloc_type_malloc(0x168uLL, 0x10000405E9D2EE3uLL);
    v42 = malloc_type_malloc(0x58CuLL, 0x10000407BC689C4uLL);
    v43 = v42;
    if (v41 && v42)
    {
      memcpy(v41, (a3 + 268), 0x168uLL);
      memcpy(v43, (a3 + 628), sizeof(_HDR10TMParam));
      if (*v24 == 12)
      {
        *v41 = 8;
        v41[3] = 3;
      }

      v44 = v41[24];
      v41[15] = v44;
      v41[31] = v44;
      hdr10_calculateTonemapCurveParamS(v41, a1, v219, v43);
    }
  }

  else
  {
    v43 = 0;
    v41 = 0;
  }

  if (GetConfig())
  {
    v45 = GetConfig();
    v46 = *HDRConfig::GetConfigEntryValue(v45, 0x11Fu, 0);
  }

  else
  {
    v46 = 0;
  }

  v47 = 0.0;
  v48 = 0.0;
  if (GetConfig())
  {
    v49 = GetConfig();
    v48 = *HDRConfig::GetConfigEntryValue(v49, 0x120u, 0);
  }

  if (GetConfig())
  {
    v50 = GetConfig();
    v47 = *HDRConfig::GetConfigEntryValue(v50, 0x121u, 0);
  }

  if (GetConfig())
  {
    v51 = GetConfig();
    v52 = *HDRConfig::GetConfigEntryValue(v51, 0x124u, 0);
  }

  else
  {
    v52 = 0;
  }

  v53 = *(a3 + 28);
  v54 = *a3 / v53;
  *(a1 + 516) = 0;
  if ((v46 & (v48 < v54)) == 1 && (v10[30] & 1) == 0 && (*(a3 + 185) & 1) == 0 && (*(a3 + 184) & 1) == 0 && (v10[28] & 1) == 0 && v52 & 1 | ((*(a3 + 466) & 1) == 0))
  {
    *(a1 + 516) = 1;
    memcpy((a3 + 2048), (a3 + 268), 0x168uLL);
    *(a3 + 2108) = v53 * 100.0;
    *(a3 + 2172) = v53 * 100.0;
    hdr10_calculateTonemapCurveParamS(a3 + 2048, a1, v219, a3 + 2408);
    if (v54 >= 0.0)
    {
      v133 = powf(v54 * 0.0001, 0.1593);
      v56 = powf(((v133 * 18.852) + 0.83594) / ((v133 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v55 = powf(v54 * -0.0001, 0.1593);
      v56 = 0.0000014619 - powf(((v55 * 18.852) + 0.83594) / ((v55 * 18.688) + 1.0), 78.844);
    }

    if (v48 >= 0.0)
    {
      v136 = powf(v48 * 0.0001, 0.1593);
      v135 = powf(((v136 * 18.852) + 0.83594) / ((v136 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v134 = powf(v48 * -0.0001, 0.1593);
      v135 = 0.0000014619 - powf(((v134 * 18.852) + 0.83594) / ((v134 * 18.688) + 1.0), 78.844);
    }

    if (v47 >= 0.0)
    {
      v139 = powf(v47 * 0.0001, 0.1593);
      v138 = powf(((v139 * 18.852) + 0.83594) / ((v139 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v137 = powf(v47 * -0.0001, 0.1593);
      v138 = 0.0000014619 - powf(((v137 * 18.852) + 0.83594) / ((v137 * 18.688) + 1.0), 78.844);
    }

    v140 = v56 - v135;
    if (v48 >= 0.0)
    {
      v143 = powf(v48 * 0.0001, 0.1593);
      v142 = powf(((v143 * 18.852) + 0.83594) / ((v143 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v141 = powf(v48 * -0.0001, 0.1593);
      v142 = 0.0000014619 - powf(((v141 * 18.852) + 0.83594) / ((v141 * 18.688) + 1.0), 78.844);
    }

    *(a1 + 520) = v140 / (v138 - v142);
    if (GetConfig())
    {
      v144 = GetConfig();
      if (*(v144 + 6385))
      {
        if ((v144[12768] & 0x80) != 0)
        {
          if (GetConfig())
          {
            v145 = GetConfig();
            v146 = *HDRConfig::GetConfigEntryValue(v145, 0x122u, 0);
          }

          else
          {
            v146 = 0;
          }

          *(a1 + 520) = v146;
        }
      }
    }
  }

  hdr10_generateEdrAdaptationDataS(a3 + 268, a3 + 628, a1, v219, v43, a3 + 5716);
  calculateEdrAdaptationParamS((a3 + 5716), a1 + 448, a3 + 6084);
  hdr10_generateAmbAdaptationDataS(a3 + 268, a3 + 628, a3 + 5716, (a3 + 6084), a1, v219, a3 + 6316);
  calculateAmbAdaptationParamS(a3 + 6316, a3 + 6360);
  v148 = (a1 + 400);
  v149 = (a1 + 384);
  v150 = (a1 + 336);
  *(a3 + 260) = *(a3 + 660);
  v151 = *(a2 + 60);
  v153 = *(a1 + 336);
  v152 = *(a1 + 352);
  v154 = *(a1 + 368);
  if (v151 == 1)
  {
    v160 = -3;
    v161 = &dword_2508CFABC;
    do
    {
      v162 = *(v161 - 3);
      v235 = v153;
      *(&v235 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v160 - 1) & 3))) = v162;
      v153 = v235;
      *(a1 + 344) = DWORD2(v235);
      *v150 = v153;
      v163 = *v161;
      v234 = v152;
      *(&v234 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v160 - 1) & 3))) = v163;
      v152 = v234;
      *(a1 + 360) = DWORD2(v234);
      *(a1 + 352) = v152;
      v164 = v161[3];
      v233 = v154;
      *(&v233 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v160 - 1) & 3))) = v164;
      v154 = v233;
      *(a1 + 376) = DWORD2(v233);
      *(a1 + 368) = v154;
      ++v161;
      _CF = __CFADD__(v160++, 1);
    }

    while (!_CF);
  }

  else if (v151 == 9)
  {
    v155 = -3;
    v156 = &dword_2508CFB70;
    do
    {
      v157 = *(v156 - 3);
      v238 = v153;
      *(&v238 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v155 - 1) & 3))) = v157;
      v153 = v238;
      *(a1 + 344) = DWORD2(v238);
      *v150 = v153;
      v158 = *v156;
      v237 = v152;
      *(&v237 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v155 - 1) & 3))) = v158;
      v152 = v237;
      *(a1 + 360) = DWORD2(v237);
      *(a1 + 352) = v152;
      v159 = v156[3];
      v236 = v154;
      *(&v236 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v155 - 1) & 3))) = v159;
      v154 = v236;
      *(a1 + 376) = DWORD2(v236);
      *(a1 + 368) = v154;
      ++v156;
      _CF = __CFADD__(v155++, 1);
    }

    while (!_CF);
  }

  else
  {
    v165 = -3;
    v166 = &dword_2508CFA98;
    do
    {
      v167 = *(v166 - 3);
      v232 = v153;
      *(&v232 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v165 - 1) & 3))) = v167;
      v153 = v232;
      *(a1 + 344) = DWORD2(v232);
      *v150 = v153;
      v168 = *v166;
      v231 = v152;
      *(&v231 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v165 - 1) & 3))) = v168;
      v152 = v231;
      *(a1 + 360) = DWORD2(v231);
      *(a1 + 352) = v152;
      v169 = v166[3];
      v230 = v154;
      *(&v230 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v165 - 1) & 3))) = v169;
      v154 = v230;
      *(a1 + 376) = DWORD2(v230);
      *(a1 + 368) = v154;
      ++v166;
      _CF = __CFADD__(v165++, 1);
    }

    while (!_CF);
  }

  v170 = 0;
  v171 = *v149;
  do
  {
    v172 = RGBP3toHLGY_coeff[v170];
    v229 = v171;
    *(&v229 & 0xFFFFFFFFFFFFFFF3 | (4 * (v170 & 3))) = v172;
    v171 = v229;
    *(a1 + 392) = DWORD2(v229);
    *v149 = v171;
    ++v170;
  }

  while (v170 != 3);
  v173 = *(a3 + 88);
  if (v173 == *MEMORY[0x277CC4C20])
  {
    v183 = *(a1 + 400);
    v182 = *(a1 + 416);
    v184 = -3;
    v185 = &dword_2508CFB04;
    v186 = *(a1 + 432);
    do
    {
      v187 = *(v185 - 3);
      v222 = v183;
      *(&v222 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v184 - 1) & 3))) = v187;
      v183 = v222;
      *(a1 + 408) = DWORD2(v222);
      *(a1 + 400) = v183;
      v188 = *v185;
      v221 = v182;
      *(&v221 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v184 - 1) & 3))) = v188;
      v182 = v221;
      *(a1 + 424) = DWORD2(v221);
      *(a1 + 416) = v182;
      v189 = v185[3];
      v220 = v186;
      *(&v220 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v184 - 1) & 3))) = v189;
      v186 = v220;
      *(a1 + 440) = DWORD2(v220);
      *(a1 + 432) = v186;
      ++v185;
      _CF = __CFADD__(v184++, 1);
    }

    while (!_CF);
  }

  else
  {
    v175 = *v148;
    v174 = *(a1 + 416);
    v176 = *(a1 + 432);
    if (v173 == *MEMORY[0x277CC4C18])
    {
      v190 = -3;
      v191 = &dword_2508CFB28;
      do
      {
        v192 = *(v191 - 3);
        v225 = v175;
        *(&v225 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v190 - 1) & 3))) = v192;
        v175 = v225;
        *(a1 + 408) = DWORD2(v225);
        *v148 = v175;
        v193 = *v191;
        v224 = v174;
        *(&v224 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v190 - 1) & 3))) = v193;
        v174 = v224;
        *(a1 + 424) = DWORD2(v224);
        *(a1 + 416) = v174;
        v194 = v191[3];
        v223 = v176;
        *(&v223 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v190 - 1) & 3))) = v194;
        v176 = v223;
        *(a1 + 440) = DWORD2(v223);
        *(a1 + 432) = v176;
        ++v191;
        _CF = __CFADD__(v190++, 1);
      }

      while (!_CF);
    }

    else
    {
      v177 = -3;
      v178 = &dword_2508CFA98;
      do
      {
        v179 = *(v178 - 3);
        v228 = v175;
        *(&v228 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v177 - 1) & 3))) = v179;
        v175 = v228;
        *(a1 + 408) = DWORD2(v228);
        *v148 = v175;
        v180 = *v178;
        v227 = v174;
        *(&v227 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v177 - 1) & 3))) = v180;
        v174 = v227;
        *(a1 + 424) = DWORD2(v227);
        *(a1 + 416) = v174;
        v181 = v178[3];
        v226 = v176;
        *(&v226 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v177 - 1) & 3))) = v181;
        v176 = v226;
        *(a1 + 440) = DWORD2(v226);
        *(a1 + 432) = v176;
        ++v178;
        _CF = __CFADD__(v177++, 1);
      }

      while (!_CF);
    }
  }

  if (v41)
  {
    free(v41);
  }

  if (v43)
  {
    free(v43);
  }
}

void setupHistogramBasedToneMapping(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, _BOOL4 a7, int a8, int a9)
{
  v16 = a4;
  if (*(a3 + 112) != 2 || (*(a2 + 65) & 1) != 0 || *(a3 + 116))
  {
    v17 = 1;
  }

  else if (GetConfig())
  {
    Config = GetConfig();
    v17 = *HDRConfig::GetConfigEntryValue(Config, 0x29u, 0);
  }

  else
  {
    v17 = 0;
  }

  if (!GetConfig())
  {
    goto LABEL_23;
  }

  v18 = GetConfig();
  if (*HDRConfig::GetConfigEntryValue(v18, 0x1Fu, 0) != 1 || (*(a2 + 152) & 2) != 0)
  {
    goto LABEL_23;
  }

  v19 = *(a3 + 112);
  if (v19 != 2)
  {
    if (v19 != 1 || *a3 && *a3 != 6)
    {
      goto LABEL_20;
    }

LABEL_23:
    v23 = (a2 + 185);
    goto LABEL_24;
  }

  if (*(a3 + 4) != 5 && *(a2 + 220) != 12)
  {
    goto LABEL_23;
  }

  if (*(a3 + 116) == 1)
  {
    if (!GetConfig())
    {
      goto LABEL_23;
    }

    v21 = GetConfig();
    if ((*HDRConfig::GetConfigEntryValue(v21, 0x26u, 0) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_20:
  v23 = (a2 + 185);
  v22 = *(a2 + 185);
  if (v22 & v17)
  {
    v24 = *(a2 + 200);
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v24 = (v22 ^ 1) & v17;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  if ((v24 & 1) != 0 && [v16 isDataValid])
  {
    if (GetConfig())
    {
      v25 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v25, 0, 0) == 1)
      {
        keyExistsAndHasValidFormat = 1;
        AppIntegerValue = CFPreferencesGetAppIntegerValue(@"hdr10DefaultHistBasedTmMode", @"com.apple.hdrprocessing", &keyExistsAndHasValidFormat);
        if ((AppIntegerValue - 7) >= 6)
        {
          v27 = 8;
        }

        else
        {
          v27 = AppIntegerValue;
        }

        if (keyExistsAndHasValidFormat)
        {
          a5 = v27;
        }

        v28 = CFPreferencesGetAppIntegerValue(@"hdr10ApplyStatsLegalizationMode", @"com.apple.hdrprocessing", &keyExistsAndHasValidFormat);
        if (keyExistsAndHasValidFormat)
        {
          a6 = v28;
        }

        v29 = CFPreferencesGetAppIntegerValue(@"htmUsePercentilesForStats", @"com.apple.hdrprocessing", &keyExistsAndHasValidFormat);
        v30 = keyExistsAndHasValidFormat;
        v31 = CFPreferencesGetAppIntegerValue(@"overrideEdrAdaptationMode", @"com.apple.hdrprocessing", &keyExistsAndHasValidFormat);
        if (v30)
        {
          a7 = v29 != 0;
        }

        if ((v31 + 1) >= 0x1E)
        {
          v32 = -1;
        }

        else
        {
          v32 = v31;
        }

        if (keyExistsAndHasValidFormat)
        {
          a8 = v32;
        }
      }
    }

    if (a5 != -1)
    {
      *a3 = a5;
    }

    if (a8 != -1)
    {
      *(a3 + 16) = a8;
    }

    if (a9 != -1)
    {
      *(a3 + 32) = a9;
    }

    if (a7)
    {
      v33 = [v16 prctVal];
      v34 = *(v33 + 4 * [v16 numPrct] - 4);
      v35 = *(a3 + 40);
      if (v35 < 0.0)
      {
        v36 = powf(v35 * -0.0001, 0.1593);
        v37 = 0.0000014619 - powf(((v36 * 18.852) + 0.83594) / ((v36 * 18.688) + 1.0), 78.844);
        goto LABEL_63;
      }

      v40 = powf(v35 * 0.0001, 0.1593);
      v39 = powf(((v40 * 18.852) + 0.83594) / ((v40 * 18.688) + 1.0), 78.844);
    }

    else
    {
      [v16 maxVal];
      v34 = v38;
      [v16 minVal];
    }

    v37 = v39;
LABEL_63:
    [v16 avgVal];
    v42 = v41;
    if (a6 <= 1)
    {
      if (!a6)
      {
        v55 = fmax(fmin(v41, 0.9997558), 0.0);
        v121 = v55;
        v56 = v55;
        v57 = v56 + -0.000244200244;
        if (v56 + -0.000244200244 > v37)
        {
          v57 = v37;
        }

        v58 = fmax(v57, 0.0);
        v120 = v58;
        v59 = v56 + 0.000244200244;
        v60 = fmin(v34, 1.0);
        if (v59 < v60)
        {
          v59 = v60;
        }

        v34 = v59;
        goto LABEL_168;
      }

      if (a6 == 1)
      {
        v46 = *(a3 + 44);
        if (v46 >= 0.0)
        {
          v87 = powf(v46 * 0.0001, 0.1593);
          v48 = powf(((v87 * 18.852) + 0.83594) / ((v87 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v47 = powf(v46 * -0.0001, 0.1593);
          v48 = 0.0000014619 - powf(((v47 * 18.852) + 0.83594) / ((v47 * 18.688) + 1.0), 78.844);
        }

        v88 = *(a3 + 40);
        if (v88 >= 0.0)
        {
          v91 = powf(v88 * 0.0001, 0.1593);
          v90 = powf(((v91 * 18.852) + 0.83594) / ((v91 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v89 = powf(v88 * -0.0001, 0.1593);
          v90 = 0.0000014619 - powf(((v89 * 18.852) + 0.83594) / ((v89 * 18.688) + 1.0), 78.844);
        }

        if (v37 >= v48)
        {
          v92 = v48;
        }

        else
        {
          v92 = v37;
        }

        if (v90 >= v92)
        {
          v93 = v90;
        }

        else
        {
          v93 = v92;
        }

        if (v34 >= v48)
        {
          v94 = v48;
        }

        else
        {
          v94 = v34;
        }

        if (v90 >= v94)
        {
          v34 = v90;
        }

        else
        {
          v34 = v94;
        }

        if (v42 >= v34)
        {
          v95 = v34;
        }

        else
        {
          v95 = v42;
        }

        if (v93 >= v95)
        {
          v95 = v93;
        }

        v120 = v93;
        v121 = v95;
        goto LABEL_168;
      }
    }

    else
    {
      switch(a6)
      {
        case 2:
          v49 = *(a3 + 44);
          if (v49 >= 0.0)
          {
            v61 = powf(v49 * 0.0001, 0.1593);
            v51 = powf(((v61 * 18.852) + 0.83594) / ((v61 * 18.688) + 1.0), 78.844);
          }

          else
          {
            v50 = powf(v49 * -0.0001, 0.1593);
            v51 = 0.0000014619 - powf(((v50 * 18.852) + 0.83594) / ((v50 * 18.688) + 1.0), 78.844);
          }

          v62 = *(a3 + 40);
          if (v62 >= 0.0)
          {
            v65 = powf(v62 * 0.0001, 0.1593);
            v64 = powf(((v65 * 18.852) + 0.83594) / ((v65 * 18.688) + 1.0), 78.844);
          }

          else
          {
            v63 = powf(v62 * -0.0001, 0.1593);
            v64 = 0.0000014619 - powf(((v63 * 18.852) + 0.83594) / ((v63 * 18.688) + 1.0), 78.844);
          }

          if (v34 >= v51)
          {
            v66 = v51;
          }

          else
          {
            v66 = v34;
          }

          if (v64 >= v66)
          {
            v34 = v64;
          }

          else
          {
            v34 = v66;
          }

          v67 = v34 + -0.000244200244;
          if (v67 > v42)
          {
            v67 = v42;
          }

          if (v67 <= v64)
          {
            v68 = v64;
          }

          else
          {
            v68 = v67;
          }

          v121 = v68;
          v69 = v68 + -0.000244200244;
          if (v69 > v37)
          {
            v69 = v37;
          }

          if (v69 > v64)
          {
            v64 = v69;
          }

          goto LABEL_167;
        case 3:
          v52 = *(a3 + 44);
          if (v52 >= 0.0)
          {
            v70 = powf(v52 * 0.0001, 0.1593);
            v54 = powf(((v70 * 18.852) + 0.83594) / ((v70 * 18.688) + 1.0), 78.844);
          }

          else
          {
            v53 = powf(v52 * -0.0001, 0.1593);
            v54 = 0.0000014619 - powf(((v53 * 18.852) + 0.83594) / ((v53 * 18.688) + 1.0), 78.844);
          }

          v71 = *(a3 + 40);
          if (v71 >= 0.0)
          {
            v74 = powf(v71 * 0.0001, 0.1593);
            v73 = powf(((v74 * 18.852) + 0.83594) / ((v74 * 18.688) + 1.0), 78.844);
          }

          else
          {
            v72 = powf(v71 * -0.0001, 0.1593);
            v73 = 0.0000014619 - powf(((v72 * 18.852) + 0.83594) / ((v72 * 18.688) + 1.0), 78.844);
          }

          v75 = *(a3 + 56);
          if (v75 >= 0.0)
          {
            v78 = powf(v75 * 0.0001, 0.1593);
            v77 = powf(((v78 * 18.852) + 0.83594) / ((v78 * 18.688) + 1.0), 78.844);
          }

          else
          {
            v76 = powf(v75 * -0.0001, 0.1593);
            v77 = 0.0000014619 - powf(((v76 * 18.852) + 0.83594) / ((v76 * 18.688) + 1.0), 78.844);
          }

          if (v34 >= v54)
          {
            v79 = v54;
          }

          else
          {
            v79 = v34;
          }

          if (v73 >= v79)
          {
            v34 = v73;
          }

          else
          {
            v34 = v79;
          }

          goto LABEL_155;
        case 4:
          v43 = *(a3 + 44);
          if (v43 >= 0.0)
          {
            v80 = powf(v43 * 0.0001, 0.1593);
            v45 = powf(((v80 * 18.852) + 0.83594) / ((v80 * 18.688) + 1.0), 78.844);
          }

          else
          {
            v44 = powf(v43 * -0.0001, 0.1593);
            v45 = 0.0000014619 - powf(((v44 * 18.852) + 0.83594) / ((v44 * 18.688) + 1.0), 78.844);
          }

          v81 = *(a3 + 40);
          if (v81 >= 0.0)
          {
            v83 = powf(v81 * 0.0001, 0.1593);
            v73 = powf(((v83 * 18.852) + 0.83594) / ((v83 * 18.688) + 1.0), 78.844);
          }

          else
          {
            v82 = powf(v81 * -0.0001, 0.1593);
            v73 = 0.0000014619 - powf(((v82 * 18.852) + 0.83594) / ((v82 * 18.688) + 1.0), 78.844);
          }

          if (*(a1 + 493))
          {
            v84 = *(a3 + 60);
          }

          else
          {
            v84 = *(a3 + 56);
            v85 = 40.0;
            if (v84 <= 40.0)
            {
              goto LABEL_148;
            }
          }

          if (v84 < 0.0)
          {
            v86 = powf(v84 * -0.0001, 0.1593);
            v77 = 0.0000014619 - powf(((v86 * 18.852) + 0.83594) / ((v86 * 18.688) + 1.0), 78.844);
LABEL_149:
            if (v34 >= v45)
            {
              v97 = v45;
            }

            else
            {
              v97 = v34;
            }

            if (v77 >= v97)
            {
              v34 = v77;
            }

            else
            {
              v34 = v97;
            }

LABEL_155:
            v98 = v34 + -0.000244200244;
            if (v98 > v42)
            {
              v98 = v42;
            }

            if (v98 <= v73)
            {
              v99 = v73;
            }

            else
            {
              v99 = v98;
            }

            v121 = v99;
            v100 = v99 + -0.000244200244;
            v101 = v77 + -0.000244200244;
            if (v100 < v101)
            {
              v101 = v100;
            }

            if (v101 > v37)
            {
              v101 = v37;
            }

            if (v101 <= v73)
            {
              v64 = v73;
            }

            else
            {
              v102 = v101;
              v64 = v102;
            }

LABEL_167:
            v120 = v64;
            goto LABEL_168;
          }

          v85 = v84;
LABEL_148:
          v96 = powf(v85 * 0.0001, 0.1593);
          v77 = powf(((v96 * 18.852) + 0.83594) / ((v96 * 18.688) + 1.0), 78.844);
          goto LABEL_149;
      }
    }

    v120 = v37;
    v121 = v41;
LABEL_168:
    v103 = -(v34 + -0.0000014619);
    if (v34 < 0.00000073096)
    {
      v104 = -10000.0;
    }

    else
    {
      v103 = v34;
      v104 = 10000.0;
    }

    v118 = v104;
    v105 = powf(v103, 0.012683);
    v106 = fmax(((v105 + -0.83594) / ((v105 * -18.688) + 18.852)), 0.0);
    v119 = v118 * powf(v106, 6.2774);
    *(a3 + 72) = v119;
    v107 = -(v121 + -0.0000014619);
    if (v121 < 0.00000073096)
    {
      v108 = -10000.0;
    }

    else
    {
      v107 = v121;
      v108 = 10000.0;
    }

    v122 = v108;
    v109 = powf(v107, 0.012683);
    v110 = fmax(((v109 + -0.83594) / ((v109 * -18.688) + 18.852)), 0.0);
    *(a3 + 80) = v122 * powf(v110, 6.2774);
    v111 = -(v120 + -0.0000014619);
    if (v120 < 0.00000073096)
    {
      v112 = -10000.0;
    }

    else
    {
      v111 = v120;
      v112 = 10000.0;
    }

    v113 = powf(v111, 0.012683);
    v114 = fmax(((v113 + -0.83594) / ((v113 * -18.688) + 18.852)), 0.0);
    *(a3 + 68) = v112 * powf(v114, 6.2774);
    v115 = *(a3 + 76);
    if (v115 < v119)
    {
      v115 = v119;
    }

    *(a3 + 76) = v115;
    v116 = 0;
    *(a3 + 192) = [v16 numPrct];
    while (v116 < [v16 numPrct])
    {
      v117 = a3 + 4 * v116;
      *(v117 + 128) = *([v16 pcntVal] + 4 * v116);
      *(v117 + 160) = *([v16 prctVal] + 4 * v116++);
    }

    *(a3 + 198) = 1;
  }

LABEL_24:
  if (*v23 == 1)
  {
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
  }

  if (overrideAmbAdaptationMode <= 6)
  {
    *(a3 + 32) = overrideAmbAdaptationMode;
  }

  if (overrideEdrAdaptationMode <= 0x1B)
  {
    *(a3 + 16) = overrideEdrAdaptationMode;
  }
}

void dovi_setupTmPreset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 152) & 2) != 0)
  {
    *(a4 + 8) = 0;
  }

  else
  {
    if (*(a2 + 40) == 7)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }

    *(a4 + 8) = v4;
  }
}

void dovi_setupTmParams(uint64_t a1, uint64_t a2, uint64_t a3, float32_t a4, float a5, float a6, float a7, float a8, uint64_t a9, int a10, void *a11)
{
  v16 = a11;
  *v17.i32 = a4;
  v18 = a5;
  v77 = v16;
  v19 = *(a2 + 40);
  v20 = v19 > 7;
  v21 = (1 << v19) & 0xB8;
  if (v20 || v21 == 0)
  {
    if (a10 && *(a1 + 480) == 3)
    {
      *(a3 + 280) = 3;
    }

    *(a3 + 284) = 0;
    *(a3 + 300) = 0;
  }

  *(a3 + 268) = -1;
  v23 = *(a3 + 232);
  *(a3 + 288) = *(a3 + 228);
  v24 = *(a3 + 24);
  *(a3 + 292) = 1.0 / *(a3 + 28);
  *(a3 + 296) = v24;
  v25 = *(a3 + 40);
  v26 = *(a3 + 244);
  v75 = v25;
  if ((v25 + -5.093) <= v26)
  {
    v26 = v25 + -5.093;
  }

  if ((v25 + -5.093) < 0.0)
  {
    v26 = 0.0;
  }

  *(a3 + 304) = *(a3 + 240) * (v23 * v26);
  *&v17.i32[1] = v18;
  v27 = vcge_f32(v17, vdup_n_s32(0x354436E8u));
  v28 = vbsl_s8(v27, v17, vneg_f32(vadd_f32(v17, vdup_n_s32(0xB5C436E8))));
  v69 = *v28.i32;
  v29 = vbsl_s8(v27, vdup_n_s32(0x461C4000u), vdup_n_s32(0xC61C4000));
  v72 = powf(*&v28.i32[1], 0.012683);
  v30.f32[0] = powf(v69, 0.012683);
  v30.f32[1] = v72;
  v31 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v30, vdup_n_s32(0xBF560000)), vmla_f32(vdup_n_s32(0x4196D000u), vdup_n_s32(0xC1958000), v30))), 0));
  v70 = v31.f32[0];
  v73 = powf(v31.f32[1], 6.2774);
  v32.f32[0] = powf(v70, 6.2774);
  v32.f32[1] = v73;
  *(a3 + 308) = vmul_f32(v29, v32);
  v33 = -(a6 + -0.0000014619);
  if (a6 < 0.00000073096)
  {
    v34 = -10000.0;
  }

  else
  {
    v33 = a6;
    v34 = 10000.0;
  }

  v35 = powf(v33, 0.012683);
  v36 = fmax(((v35 + -0.83594) / ((v35 * -18.688) + 18.852)), 0.0);
  v37 = v34 * powf(v36, 6.2774);
  *(a3 + 320) = v37;
  *(a3 + 316) = v37;
  if (*(a1 + 493) == 1)
  {
    v38 = *a3;
    v39 = *(a1 + 280);
  }

  else
  {
    v40 = -(a7 + -0.0000014619);
    if (a7 >= 0.00000073096)
    {
      v40 = a7;
    }

    v41 = flt_2508CD850[a7 < 0.00000073096];
    v42 = powf(v40, 0.012683);
    v43 = fmax(((v42 + -0.83594) / ((v42 * -18.688) + 18.852)), 0.0);
    v38 = v41 * powf(v43, 6.2774);
    v39 = v38;
  }

  *(a3 + 324) = v38;
  *(a3 + 328) = v39;
  v44 = *(a3 + 140);
  v45 = vcge_f32(v44, vdup_n_s32(0x354436E8u));
  v46 = vbsl_s8(v45, v44, vneg_f32(vadd_f32(v44, vdup_n_s32(0xB5C436E8))));
  v64 = *v46.i32;
  v47 = vbsl_s8(v45, vdup_n_s32(0x461C4000u), vdup_n_s32(0xC61C4000));
  v67 = powf(*&v46.i32[1], 0.012683);
  v48.f32[0] = powf(v64, 0.012683);
  v48.f32[1] = v67;
  v49 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v48, vdup_n_s32(0xBF560000)), vmla_f32(vdup_n_s32(0x4196D000u), vdup_n_s32(0xC1958000), v48))), 0));
  v65 = v49.f32[0];
  v68 = powf(v49.f32[1], 6.2774);
  v50.f32[0] = powf(v65, 6.2774);
  v50.f32[1] = v68;
  *(a3 + 336) = vmul_f32(v47, v50);
  *(a3 + 344) = 1176256512;
  v51 = *(a3 + 136);
  if (v51 >= 0.00000073096)
  {
    v52 = 10000.0;
  }

  else
  {
    v51 = -(v51 + -0.0000014619);
    v52 = -10000.0;
  }

  v53 = powf(v51, 0.012683);
  v54 = fmax(((v53 + -0.83594) / ((v53 * -18.688) + 18.852)), 0.0);
  v55 = v52 * powf(v54, 6.2774);
  *(a3 + 348) = v55;
  if (v75 >= 0.0)
  {
    v58 = powf(v75 * 0.0001, 0.1593);
    v57 = powf(((v58 * 18.852) + 0.83594) / ((v58 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v56 = powf(v75 * -0.0001, 0.1593);
    v57 = 0.0000014619 - powf(((v56 * 18.852) + 0.83594) / ((v56 * 18.688) + 1.0), 78.844);
  }

  *(a3 + 352) = v57;
  *(a3 + 356) = a8;
  *(a3 + 376) = calculateAdaptiveSdiv(v55, *(a3 + 364));
  *(a3 + 464) = 0;
  *(a3 + 465) = *(a1 + 480) == 4;
  dovi_calculateTonemapCurveParamS(a3 + 268, a1, a3 + 5424);
  if (*(a3 + 372) == 1)
  {
    v59 = malloc_type_malloc(0x168uLL, 0x10000405E9D2EE3uLL);
    v60 = malloc_type_malloc(0x210uLL, 0x1000040BC767FD4uLL);
    v61 = malloc_type_malloc(0x124uLL, 0x1000040F063F7D5uLL);
    v62 = v61;
    if (v59 && v60 && v61)
    {
      memcpy(v59, (a3 + 268), 0x168uLL);
      memcpy(v60, a1, 0x210uLL);
      memcpy(v62, (a3 + 5424), 0x124uLL);
      *(v60 + 120) = 3;
      v59[3] = 3;
      *(v60 + 236) = xmmword_2508CF760;
      v63 = v59[24];
      v59[15] = v63;
      v59[31] = v63;
      dovi_calculateTonemapCurveParamS(v59, v60, v62);
    }
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v62 = 0;
  }

  dovi_generateEdrAdaptationDataS(a3 + 268, a3 + 5424, a1, v62, v60, a3 + 5716, v77);
  calculateEdrAdaptationParamS((a3 + 5716), a1 + 448, a3 + 6084);
  dovi_generateAmbAdaptationDataS(a3 + 268, a3 + 5424, a3 + 5716, (a3 + 6084), a1, a3 + 6316);
  calculateAmbAdaptationParamS(a3 + 6316, a3 + 6360);
  *(a3 + 260) = *(a3 + 5460);
  if (v59)
  {
    free(v59);
  }

  if (v62)
  {
    free(v62);
  }

  if (v60)
  {
    free(v60);
  }
}

void hlg_setupTmPreset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 8);
  v6 = *(a2 + 40);
  v7 = v6 == 2;
  v8 = v6 == 0;
  v9 = v7;
  v10 = v6 == 0;
  v11 = v7;
  if (v5)
  {
    v10 = 0;
    v11 = 0;
  }

  if (v5 == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (v5 == 1)
  {
    v11 = 0;
  }

  v12 = v5 == 2;
  if (v5 == 2)
  {
    v13 = v6 == 0;
  }

  else
  {
    v7 = v9;
    v13 = v8;
  }

  v14 = !v12 && v10;
  v15 = !v12 && v11;
  if ((*(a3 + 152) & 2) != 0)
  {
    v16 = 1;
    goto LABEL_21;
  }

  if (v14 || v15 && (*(a2 + 180) & 1) == 0)
  {
    *(a4 + 4) = 0;
    return;
  }

  if (v6 - 3 >= 3 && *(a2 + 180) != 1 && v6 != 7)
  {
    if (v7)
    {
      v16 = 6;
    }

    else if (v13)
    {
      v16 = 10;
    }

    else
    {
      if (v6 > 8 || ((1 << v6) & 0x142) == 0)
      {
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v19 = logInstanceID;
          }

          else
          {
            v19 = prevLogInstanceID;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v20 = 134217984;
            v21 = WORD1(v19);
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 4186\n", &v20, 0xCu);
          }

          prevLogInstanceID = v19;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 4186\n", &v20, 2u);
        }

        return;
      }

      v16 = 5;
    }

LABEL_21:
    *(a4 + 4) = v16;
    return;
  }

  v17 = *(a3 + 384);
  if (v17 == 1)
  {
    v16 = 3;
    goto LABEL_21;
  }

  if (!v17)
  {
    if (GetConfig() && (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0x53u, 0) == 1))
    {
      v16 = 12;
    }

    else
    {
      v16 = 11;
    }

    goto LABEL_21;
  }
}

void dovi84_setupTmPreset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 152) & 2) != 0)
  {
    v5 = 0;
  }

  else
  {
    v4 = *(a3 + 384);
    if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = 7;
    }

    else
    {
      v5 = 6;
    }
  }

  *(a4 + 8) = v5;
}

uint64_t restoreDefaults(uint64_t Config, int *a2, uint64_t a3)
{
  v5 = Config;
  v29 = *MEMORY[0x277D85DE8];
  v6 = a2[10];
  v7 = *(a3 + 76);
  v8 = *a2;
  v9 = *a2 == 1 && a2[44] == 16;
  v10 = a2[43];
  *(a3 + 384) = v10;
  *(Config + 512) = *(a3 + 160);
  v11 = 0.00030136;
  if ((v6 & 0xFFFFFFFE) != 4 || (v7 & 1) == 0)
  {
    v11 = 0.0;
  }

  if (!(((v6 & 0xFFFFFFFE) != 4) | v7 & 1))
  {
    v11 = 0.00013675;
  }

  *(a3 + 236) = v11;
  *(a3 + 240) = 1020591604;
  *(a3 + 256) = 1176256512;
  *(a3 + 284) = 1;
  *(a3 + 228) = 1063675494;
  *(a3 + 300) = 3;
  *(a3 + 466) = 0;
  v12 = *(a3 + 380);
  v13 = 1028442804;
  if (v12)
  {
    if (v12 == 4)
    {
      if (v10 != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v12 != 2)
      {
        if ((v12 - 1) > 1)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      if (v10 != 1)
      {
LABEL_16:
        if (unequalLUTSupport == 1)
        {
          Config = GetConfig();
          if (Config)
          {
            v14 = GetConfig();
            Config = HDRConfig::GetConfigEntryValue(v14, 0x2Cu, 0);
            if (*Config)
            {
              v13 = 1017370378;
            }
          }
        }

        goto LABEL_20;
      }
    }

    v13 = 981668463;
  }

LABEL_20:
  *(a3 + 232) = v13;
  *(a3 + 244) = 1182313984;
  if ((v6 - 3) <= 2)
  {
    *(a3 + 252) = 1065353216;
    v15 = a2[39];
    if (v15 == 2 || v15 == 1)
    {
      goto LABEL_50;
    }

    if (v15)
    {
      v15 = 1;
LABEL_50:
      *(a3 + 248) = v15;
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (v6 <= 5)
  {
    if (v6 >= 3)
    {
      goto LABEL_47;
    }

    goto LABEL_27;
  }

  if (v6 != 8)
  {
    if (v6 == 7)
    {
      if ((*(a3 + 152) & 2) != 0)
      {
LABEL_49:
        *(a3 + 248) = 0;
        goto LABEL_51;
      }

LABEL_47:
      *(a3 + 252) = 1065353216;
      v15 = a2[39];
      if (v15 == 2 || v15 == 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    if (v6 != 6)
    {
      goto LABEL_47;
    }
  }

  if (v8 != 2 && (!v9 || (*(a3 + 264) & 1) != 0))
  {
LABEL_27:
    if ((a2[39] - 1) <= 1)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v16 = logInstanceID;
        }

        else
        {
          v16 = prevLogInstanceID;
        }

        Config = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (Config)
        {
          v27 = 134217984;
          v28 = WORD1(v16);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: hdrCtrl->displayPipelineCompensationType != kDisplayPipelineCompensationTypeNoneHeadrooomDependent && hdrCtrl->displayPipelineCompensationType != kDisplayPipelineCompensationTypeHeadroomDependent warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 5053\n", &v27, 0xCu);
        }

        prevLogInstanceID = v16;
      }

      else
      {
        Config = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (Config)
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: hdrCtrl->displayPipelineCompensationType != kDisplayPipelineCompensationTypeNoneHeadrooomDependent && hdrCtrl->displayPipelineCompensationType != kDisplayPipelineCompensationTypeHeadroomDependent warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 5053\n", &v27, 2u);
        }
      }
    }

    goto LABEL_47;
  }

  *(a3 + 248) = 0x3F80000000000001;
LABEL_51:
  if (*(a3 + 6633) == 1)
  {
    Config = GetConfig();
    if (Config)
    {
      v17 = GetConfig();
      Config = HDRConfig::GetConfigEntryValue(v17, 0x6Eu, 0);
      if (*Config == 1)
      {
        *(a3 + 248) = 0;
      }
    }
  }

  v18 = *(a3 + 380);
  switch(v18)
  {
    case 4:
      if ((*(a3 + 152) & 2) != 0)
      {
        v21 = 0;
      }

      else
      {
        v20 = *(a3 + 384);
        if (v20)
        {
          if (v20 != 1)
          {
            break;
          }

          v21 = 7;
        }

        else
        {
          v21 = 6;
        }
      }

LABEL_79:
      *(a3 + 224) = v21;
      break;
    case 2:
      hlg_setupTmPreset(Config, a2, a3, a3 + 216);
      break;
    case 1:
      v19 = a2[2] == 1 && a2[10] == 2;
      v22 = 0;
      if ((*(a3 + 152) & 2) == 0 && !v19)
      {
        v23 = a2[10] - 6;
        if (v23 > 2)
        {
          v22 = 7;
        }

        else
        {
          v22 = dword_2508D0860[v23];
        }
      }

      *(a3 + 216) = v22;
      break;
    default:
      if ((*(a3 + 152) & 2) == 0)
      {
        if (a2[10] == 7)
        {
          v21 = 4;
        }

        else
        {
          v21 = 5;
        }

        goto LABEL_79;
      }

      *(a3 + 224) = 0;
      break;
  }

  *(a3 + 268) = 2;
  result = IsVirtualized();
  if (result)
  {
    *(a3 + 268) = 1;
  }

  *(a3 + 272) = 5;
  *(a3 + 280) = 2;
  *(a3 + 360) = 0x42C800003F400000;
  if (*(a3 + 6634) == 1 || (v6 > 7 || ((1 << v6) & 0xB8) == 0) && *(a2 + 180) != 1)
  {
    goto LABEL_92;
  }

  v25 = *(a3 + 380);
  if (v25 != 4 && v25 != 2)
  {
    goto LABEL_92;
  }

  *(a3 + 276) = 1;
  v26 = *(a3 + 384);
  if (v26 == 1)
  {
    *(a3 + 276) = 2;
    goto LABEL_93;
  }

  if (!v26)
  {
LABEL_92:
    *(a3 + 276) = 0;
  }

LABEL_93:
  *(a3 + 5872) = 0;
  *(a3 + 5877) = 0;
  *(a3 + 5888) = xmmword_2508CF770;
  *(a3 + 368) = 1120403456;
  v5[492] = 1;
  if (v5[493] == 1)
  {
    *(a3 + 6532) = 1;
    v5[492] = 0;
  }

  if (*(a2 + 180) == 1)
  {
    v5[492] = 0;
  }

  v5[500] = 0;
  v5[508] = 0;
  return result;
}

int *overrideDefaults(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    restoreDefaults(a1, a2, a3);
  }

  if (GetConfig())
  {
    Config = GetConfig();
    if (*(Config + 3085))
    {
      if ((Config[6168] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v6 = GetConfig();
          v7 = *HDRConfig::GetConfigEntryValue(v6, 0x8Cu, 0);
        }

        else
        {
          v7 = 0.0;
        }

        *(a3 + 236) = v7;
      }
    }
  }

  if (GetConfig())
  {
    v8 = GetConfig();
    if (*(v8 + 3107))
    {
      if ((v8[6212] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v9 = GetConfig();
          v10 = *HDRConfig::GetConfigEntryValue(v9, 0x8Du, 0);
        }

        else
        {
          v10 = 0.0;
        }

        *(a3 + 240) = v10;
      }
    }
  }

  if (GetConfig())
  {
    v11 = GetConfig();
    if (*(v11 + 2491))
    {
      if ((v11[4980] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v12 = GetConfig();
          v13 = *HDRConfig::GetConfigEntryValue(v12, 0x71u, 0);
        }

        else
        {
          v13 = 0;
        }

        *(a3 + 232) = v13;
      }
    }
  }

  if (GetConfig())
  {
    v14 = GetConfig();
    if (*(v14 + 2623))
    {
      if ((v14[5244] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v15 = GetConfig();
          v16 = *HDRConfig::GetConfigEntryValue(v15, 0x77u, 0);
        }

        else
        {
          v16 = 0;
        }

        *(a3 + 248) = v16;
      }
    }
  }

  if (GetConfig())
  {
    v17 = GetConfig();
    if (*(v17 + 2601))
    {
      if ((v17[5200] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v18 = GetConfig();
          v19 = *HDRConfig::GetConfigEntryValue(v18, 0x76u, 0);
        }

        else
        {
          v19 = 0;
        }

        *(a3 + 252) = v19;
      }
    }
  }

  if (GetConfig())
  {
    v20 = GetConfig();
    if (*(v20 + 1281))
    {
      if ((v20[2560] & 0x80) != 0 && (*(a3 + 152) & 2) == 0)
      {
        if (GetConfig())
        {
          v21 = GetConfig();
          v22 = *HDRConfig::GetConfigEntryValue(v21, 0x3Au, 0);
        }

        else
        {
          v22 = 0;
        }

        *(a3 + 216) = v22;
      }
    }
  }

  if (GetConfig())
  {
    v23 = GetConfig();
    if (*(v23 + 1391))
    {
      if ((v23[2780] & 0x80) != 0 && (*(a3 + 152) & 2) == 0)
      {
        if (GetConfig())
        {
          v24 = GetConfig();
          v25 = *HDRConfig::GetConfigEntryValue(v24, 0x3Fu, 0);
        }

        else
        {
          v25 = 0;
        }

        *(a3 + 220) = v25;
      }
    }
  }

  if (GetConfig())
  {
    v26 = GetConfig();
    if (*(v26 + 335))
    {
      if ((v26[668] & 0x80) != 0 && (*(a3 + 152) & 2) == 0)
      {
        if (GetConfig())
        {
          v27 = GetConfig();
          v28 = *HDRConfig::GetConfigEntryValue(v27, 0xFu, 0);
        }

        else
        {
          v28 = 0;
        }

        *(a3 + 224) = v28;
      }
    }
  }

  result = GetConfig();
  if (result)
  {
    result = GetConfig();
    if (result[1369])
    {
      if ((result[1368] & 0x80) != 0)
      {
        result = GetConfig();
        if (result)
        {
          v30 = GetConfig();
          result = HDRConfig::GetConfigEntryValue(v30, 0x3Eu, 0);
          v31 = *result;
        }

        else
        {
          v31 = 0;
        }

        *(a3 + 276) = v31;
      }
    }
  }

  return result;
}

void setSRGBDegammaBuffer(uint64_t a1, uint64_t a2, unint64_t a3, float a4, float a5, float a6)
{
  if (a3)
  {
    v11 = 0;
    v12 = 100.0 / a6;
    while (1)
    {
      v13 = *(a2 + 4 * v11);
      if (v13 < 1.0)
      {
        break;
      }

      v14 = v12;
      if (a4 == 1.0)
      {
        goto LABEL_6;
      }

LABEL_10:
      *(a1 + 4 * v11++) = v14;
      if (a3 <= v11)
      {
        return;
      }
    }

    v13 = v13 * a4;
LABEL_6:
    if (v13 >= 0.03928)
    {
      v15 = powf((v13 * 0.94787) + 0.052133, 2.4);
    }

    else
    {
      v15 = v13 * 0.077399;
    }

    v14 = v15 * a5;
    goto LABEL_10;
  }
}

void adjustPeakWhiteBasedOnContent(uint64_t a1, uint64_t a2, int *a3, int a4, float *a5, float *a6, float *a7, float *a8, float a9, float *a10, void *a11, char a12)
{
  v77 = a11;
  if (a4)
  {
    if (a4 == 4 || a4 == 2)
    {
      v74 = 0;
      v19 = a3[43] == 1;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a3[43])
  {
LABEL_6:
    v19 = 0;
    v74 = 0;
    goto LABEL_7;
  }

  v19 = 0;
  v74 = *(a1 + 480) == 4;
LABEL_7:
  v20 = a3[10];
  if (GetConfig())
  {
    Config = GetConfig();
    v22 = *HDRConfig::GetConfigEntryValue(Config, 0x14u, 0);
  }

  else
  {
    v22 = 0;
  }

  if (v19)
  {
    v23 = 100000.0;
    if (v20 > 7 || ((1 << v20) & 0x98) == 0)
    {
      goto LABEL_28;
    }

    v24 = calculateHeadroomForInternalCapturesInternalOrRefDisplay(a1, a2, a4, v77, 100000.0);
    goto LABEL_27;
  }

  if (*(a2 + 185) == 1)
  {
    v22 = *(a2 + 194);
  }

  if ((v22 & 1) == 0)
  {
LABEL_19:
    v23 = 100000.0;
    goto LABEL_28;
  }

  if (v20 - 3 >= 2)
  {
    v23 = 100000.0;
    if (v20 != 7 || (a12 & 1) != 0)
    {
      goto LABEL_28;
    }
  }

  else if (a12)
  {
    goto LABEL_19;
  }

  v25 = *(a2 + 24);
  v26 = 0.0;
  v27 = 0.0;
  if (GetConfig())
  {
    v28 = GetConfig();
    v27 = *HDRConfig::GetConfigEntryValue(v28, 0x7Bu, 0);
  }

  if (GetConfig())
  {
    v29 = GetConfig();
    v26 = *HDRConfig::GetConfigEntryValue(v29, 0x89u, 0);
  }

  v24 = calculateAdaptiveHeadroom(v25, v27, v26);
LABEL_27:
  v23 = v24;
LABEL_28:
  if (GetConfig())
  {
    v30 = GetConfig();
    v31 = *HDRConfig::GetConfigEntryValue(v30, 0x90u, 0);
  }

  else
  {
    v31 = 0.0;
  }

  if (v31 <= 0.0)
  {
    v31 = v23;
  }

  v32 = *(a2 + 28);
  v33 = *a2;
  if (v32 < v31)
  {
    v31 = *(a2 + 28);
  }

  *a8 = v31;
  *a10 = (v31 * v33) / v32;
  *a7 = 1.0;
  if ((*(a2 + 172) & 1) != 0 && !*(a2 + 180) && (*(a2 + 152) & 2) == 0)
  {
    v34 = *(a2 + 185);
    if (GetConfig())
    {
      if (v34)
      {
        v35 = 199;
      }

      else
      {
        v35 = 198;
      }

      v36 = GetConfig();
      v37 = *HDRConfig::GetConfigEntryValue(v36, v35, 0);
    }

    else
    {
      v37 = 0.0;
    }

    v38 = *a8;
    if (*a8 < v37)
    {
      v37 = *a8;
    }

    v39 = *(a2 + 176);
    v40 = 1.0;
    if (v39 < 1.0)
    {
      v41 = v33 / v32;
      if (v39 < 0.5 || v37 < 1.0)
      {
        if (v39 <= 0.0 || v39 >= 0.5 || v38 <= v37)
        {
          goto LABEL_72;
        }

        v45 = v41 * v37;
        if (v45 >= 0.0)
        {
          v55 = powf(v45 * 0.0001, 0.1593);
          v47 = powf(((v55 * 18.852) + 0.83594) / ((v55 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v46 = powf(v45 * -0.0001, 0.1593);
          v47 = 0.0000014619 - powf(((v46 * 18.852) + 0.83594) / ((v46 * 18.688) + 1.0), 78.844);
        }

        v56 = v41 * v38;
        if ((v41 * v38) >= 0.0)
        {
          v59 = powf(v56 * 0.0001, 0.1593);
          v58 = powf(((v59 * 18.852) + 0.83594) / ((v59 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v57 = powf(v56 * -0.0001, 0.1593);
          v58 = 0.0000014619 - powf(((v57 * 18.852) + 0.83594) / ((v57 * 18.688) + 1.0), 78.844);
        }

        v53 = v47 + ((v58 - v47) * (1.0 - (v39 + v39)));
        v54 = v53 < 0.00000073096;
        if (v53 < 0.00000073096)
        {
          v53 = -(v53 + -0.0000014619);
        }
      }

      else
      {
        v42 = v41 * v37;
        if (v42 >= 0.0)
        {
          v48 = powf(v42 * 0.0001, 0.1593);
          v44 = powf(((v48 * 18.852) + 0.83594) / ((v48 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v43 = powf(v42 * -0.0001, 0.1593);
          v44 = 0.0000014619 - powf(((v43 * 18.852) + 0.83594) / ((v43 * 18.688) + 1.0), 78.844);
        }

        v49 = v39 + -0.5;
        if (v41 >= 0.0)
        {
          v52 = powf(v41 * 0.0001, 0.1593);
          v51 = powf(((v52 * 18.852) + 0.83594) / ((v52 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v50 = powf(v41 * -0.0001, 0.1593);
          v51 = 0.0000014619 - powf(((v50 * 18.852) + 0.83594) / ((v50 * 18.688) + 1.0), 78.844);
        }

        v53 = v51 + ((v44 - v51) * (1.0 - (v49 + v49)));
        v54 = v53 < 0.00000073096;
        if (v53 < 0.00000073096)
        {
          v53 = -(v53 + -0.0000014619);
        }
      }

      v60 = flt_2508CD850[v54];
      v61 = powf(v53, 0.012683);
      v62 = fmax(((v61 + -0.83594) / ((v61 * -18.688) + 18.852)), 0.0);
      v40 = (v60 * powf(v62, 6.2774)) / v41;
    }

    *a8 = v40;
    v38 = v40;
LABEL_72:
    *a10 = (v38 * v33) / v32;
  }

  if ((*(a2 + 152) & 2) != 0)
  {
    *a5 = a9;
    *a8 = v32;
    *a10 = a9;
    goto LABEL_96;
  }

  *a5 = v33;
  if (*a8 != v32)
  {
    v33 = *a10;
    *a5 = *a10;
  }

  v63 = *a3;
  if (*a3 == 3)
  {
    if (v33 > a9)
    {
      if (GetConfig())
      {
        v65 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v65, 0x41u, 0) == 1 && *(a2 + 220) != 12)
        {
          goto LABEL_90;
        }
      }
    }
  }

  else
  {
    if (v63 != 2)
    {
      if (v63 != 1 || v33 <= a9 || v74)
      {
        goto LABEL_91;
      }

LABEL_90:
      *a5 = a9;
      goto LABEL_91;
    }

    if (v33 > a9)
    {
      if (GetConfig())
      {
        v64 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v64, 0x40u, 0) == 1)
        {
          goto LABEL_90;
        }
      }
    }
  }

LABEL_91:
  if (*(a1 + 493) != 1)
  {
LABEL_94:
    v67 = fmin(*a5 / 40.0, 1.0);
    *a7 = v67;
    goto LABEL_95;
  }

  v66 = *(a2 + 6532);
  if (v66 != 1)
  {
    if (v66)
    {
      goto LABEL_96;
    }

    goto LABEL_94;
  }

LABEL_95:
  *a5 = fmaxf(*a5, 40.0);
LABEL_96:
  v68 = powf(*a5 / 10000.0, 0.1593);
  v69 = (v68 * 18.8515625 + 0.8359375) / (v68 * 18.6875 + 1.0);
  v70 = powf(v69, 78.844);
  v71 = 1.0;
  if (v70 <= 1.0)
  {
    v71 = v70;
  }

  v72 = v70 < 0.0;
  v73 = 0.0;
  if (!v72)
  {
    v73 = v71;
  }

  *a6 = v73;
}

float *limitStatsC(float *a1, float *a2, float *a3, float a4)
{
  result = GetConfig();
  if (!result)
  {
    return result;
  }

  Config = GetConfig();
  result = HDRConfig::GetConfigEntryValue(Config, 0xEFu, 0);
  if (*result != 1)
  {
    return result;
  }

  if (GetConfig())
  {
    v9 = GetConfig();
    result = HDRConfig::GetConfigEntryValue(v9, 0xF0u, 0);
    if (*result < 0.0)
    {
      return result;
    }
  }

  v10 = *a1;
  if (!GetConfig())
  {
    v12 = 0.0;
    goto LABEL_9;
  }

  v11 = GetConfig();
  v12 = *HDRConfig::GetConfigEntryValue(v11, 0xF0u, 0);
  if (v12 >= 0.0)
  {
LABEL_9:
    v15 = powf(v12 * 0.0001, 0.1593);
    v14 = powf(((v15 * 18.852) + 0.83594) / ((v15 * 18.688) + 1.0), 78.844);
    goto LABEL_10;
  }

  v13 = powf(v12 * -0.0001, 0.1593);
  v14 = 0.0000014619 - powf(((v13 * 18.852) + 0.83594) / ((v13 * 18.688) + 1.0), 78.844);
LABEL_10:
  if (v14 < *a1)
  {
    v14 = *a1;
  }

  *a1 = v14;
  result = GetConfig();
  if (result)
  {
    v16 = GetConfig();
    result = HDRConfig::GetConfigEntryValue(v16, 0xF1u, 0);
    if (*result == 1 && *a1 != v10)
    {
      v17 = *a2;
      result = GetConfig();
      v18 = 0.0;
      if (result)
      {
        v19 = GetConfig();
        result = HDRConfig::GetConfigEntryValue(v19, 0xF2u, 0);
        v18 = *result;
      }

      v20 = v17 + (*a1 - v10);
      if (v20 >= a4)
      {
        v20 = a4;
      }

      v21 = v17 + (v18 * (v20 - v17));
      if (v21 >= a4)
      {
        v21 = a4;
      }

      *a2 = fmaxf(v21, 0.0);
    }
  }

  return result;
}

float PqNorm2LX_Pos(float a1)
{
  v1 = powf(a1, 0.012683);
  v2 = fmax(((v1 + -0.83594) / ((v1 * -18.688) + 18.852)), 0.0);
  return powf(v2, 6.2774) * 10000.0;
}

float PQ2L(float a1)
{
  v1 = a1 < 0.00000073096;
  if (a1 < 0.00000073096)
  {
    a1 = -(a1 + -0.0000014619);
  }

  v2 = flt_2508CD850[v1];
  v3 = powf(a1, 0.012683);
  v4 = fmax(((v3 + -0.83594) / ((v3 * -18.688) + 18.852)), 0.0);
  return v2 * powf(v4, 6.2774);
}

float PQ12Bit2LinFloat(int a1)
{
  if (a1 == 3079)
  {
    return 1000.0;
  }

  v2 = a1 / 4095.0;
  v3 = v2 < 0.00000073096;
  if (v2 < 0.00000073096)
  {
    v2 = -(v2 + -0.0000014619);
  }

  v4 = flt_2508CD850[v3];
  v5 = powf(v2, 0.012683);
  v6 = fmax(((v5 + -0.83594) / ((v5 * -18.688) + 18.852)), 0.0);
  return v4 * powf(v6, 6.2774);
}

float L2PqNormX(float a1)
{
  v1 = powf(a1 * 0.0001, 0.1593);
  v2 = ((v1 * 18.852) + 0.83594) / ((v1 * 18.688) + 1.0);

  return powf(v2, 78.844);
}

float L2PQ(float a1)
{
  if (a1 >= 0.0)
  {
    v3 = powf(a1 * 0.0001, 0.1593);
    v4 = ((v3 * 18.852) + 0.83594) / ((v3 * 18.688) + 1.0);

    return powf(v4, 78.844);
  }

  else
  {
    v1 = powf(a1 * -0.0001, 0.1593);
    return 0.0000014619 - powf(((v1 * 18.852) + 0.83594) / ((v1 * 18.688) + 1.0), 78.844);
  }
}

uint64_t PQIn12Bit(float a1)
{
  if (a1 >= 0.0)
  {
    v3 = powf(a1 * 0.0001, 0.1593);
    v2 = powf(((v3 * 18.852) + 0.83594) / ((v3 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v1 = powf(a1 * -0.0001, 0.1593);
    v2 = 0.0000014619 - powf(((v1 * 18.852) + 0.83594) / ((v1 * 18.688) + 1.0), 78.844);
  }

  return (v2 * 4095.0 + 0.5);
}

float PqNorm2LX_Pos_FloatComp(float a1)
{
  v1 = pow(a1, 0.0126833133);
  v2 = fmax(((v1 + -0.83594) / ((v1 * -18.688) + 18.852)), 0.0);
  return powf(v2, 6.2774) * 10000.0;
}

float PQ2L_FloatComp(float a1)
{
  v1 = a1 < 0.00000073096;
  if (a1 < 0.00000073096)
  {
    a1 = -(a1 + -0.0000014619);
  }

  v2 = flt_2508CD850[v1];
  v3 = pow(a1, 0.0126833133);
  v4 = fmax(((v3 + -0.83594) / ((v3 * -18.688) + 18.852)), 0.0);
  return v2 * powf(v4, 6.2774);
}

float PQ12Bit2LinDouble(int a1)
{
  v1 = a1 / 4095.0;
  v2 = v1 < 0.00000073096;
  if (v1 < 0.00000073096)
  {
    v1 = -(v1 + -0.0000014619);
  }

  v3 = flt_2508CD850[v2];
  v4 = pow(v1, 0.0126833133);
  v5 = fmax(((v4 + -0.83594) / ((v4 * -18.688) + 18.852)), 0.0);
  return v3 * powf(v5, 6.2774);
}

float L2PqNormX_FloatComp(float a1)
{
  v1 = powf(a1 * 0.0001, 0.1593);
  v2 = ((v1 * 18.852) + 0.83594) / ((v1 * 18.688) + 1.0);

  return powf(v2, 78.844);
}

float L2PQ_FloatComp(float a1)
{
  if (a1 >= 0.0)
  {
    v3 = powf(a1 * 0.0001, 0.1593);
    v4 = ((v3 * 18.852) + 0.83594) / ((v3 * 18.688) + 1.0);

    return powf(v4, 78.844);
  }

  else
  {
    v1 = powf(a1 * -0.0001, 0.1593);
    return 0.0000014619 - powf(((v1 * 18.852) + 0.83594) / ((v1 * 18.688) + 1.0), 78.844);
  }
}

uint64_t PQIn12Bit_FloatComp(float a1)
{
  if (a1 >= 0.0)
  {
    v3 = powf(a1 * 0.0001, 0.1593);
    v2 = powf(((v3 * 18.852) + 0.83594) / ((v3 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v1 = powf(a1 * -0.0001, 0.1593);
    v2 = 0.0000014619 - powf(((v1 * 18.852) + 0.83594) / ((v1 * 18.688) + 1.0), 78.844);
  }

  return (v2 * 4095.0 + 0.5);
}

float degamma_srgb(float a1)
{
  if (a1 >= 0.03928)
  {
    return powf((a1 * 0.94787) + 0.052133, 2.4);
  }

  else
  {
    return a1 * 0.077399;
  }
}

float engamma_srgb(float a1)
{
  v1 = a1;
  if (v1 >= 0.00304025)
  {
    v3 = v1 * 1.13712;
    return powf(v3, 0.41667) + -0.055;
  }

  else
  {
    return v1 * 12.92;
  }
}

float getHLGGamma(float a1, float a2)
{
  v4 = (a1 / 1000.0);
  if (a1 <= 400.0 || a1 >= 2000.0)
  {
    v6 = log2(v4);
    v5 = pow(1.11099994, v6) * 1.20000005 + -1.0;
  }

  else
  {
    v5 = log10(v4) * 0.419999987 + 1.20000005 + -1.0;
  }

  v7 = v5;
  if (a2 > 5.0)
  {
    return v7 + log10((a2 / 5.0)) * -0.076;
  }

  return v7;
}

float spl_apply(unsigned int a1, float *a2, float *a3, uint64_t a4, float a5)
{
  if (*a2 > a5)
  {
    return *a3;
  }

  if (a1 < 2)
  {
    return a3[a1 - 1];
  }

  v6 = a1 - 1;
  v7 = a2 + 1;
  v8 = a3 + 1;
  v9 = (a4 + 4);
  while (*v7 <= a5)
  {
    ++v7;
    ++v8;
    ++v9;
    if (!--v6)
    {
      return a3[a1 - 1];
    }
  }

  v11 = *(v8 - 1);
  v5 = *v8;
  if (*v8 == v11)
  {
    return v5;
  }

  v12 = *(v7 - 1);
  v13 = *v7 - v12;
  v14 = (a5 - v12) / v13;
  return v11 + ((v5 - v11) * (((((v14 * v14) * 3.0) + ((v14 * (v14 * v14)) * -2.0)) + ((v14 + ((v14 * (v14 * v14)) + ((v14 * v14) * -2.0))) * (*(v9 - 1) * (v13 / (v5 - v11))))) + (((v14 * (v14 * v14)) - (v14 * v14)) * (*v9 * (v13 / (v5 - v11))))));
}

float spl_apply_with_linear_extension(unsigned int a1, float *a2, float *a3, float *a4, float a5)
{
  if (*a2 > a5)
  {
    return *a3 + ((a5 - *a2) * *a4);
  }

  if (a1 < 2)
  {
    return a3[a1 - 1] + ((a5 - a2[a1 - 1]) * a4[a1 - 1]);
  }

  v6 = a1 - 1;
  v7 = a2 + 1;
  v8 = a3 + 1;
  v9 = a4 + 1;
  while (*v7 <= a5)
  {
    ++v7;
    ++v8;
    ++v9;
    if (!--v6)
    {
      return a3[a1 - 1] + ((a5 - a2[a1 - 1]) * a4[a1 - 1]);
    }
  }

  v10 = *(v8 - 1);
  if (*v8 == v10)
  {
    return *v8;
  }

  v11 = *(v7 - 1);
  v12 = *v7 - v11;
  v13 = (a5 - v11) / v12;
  return v10 + ((*v8 - v10) * (((((v13 * v13) * 3.0) + ((v13 * (v13 * v13)) * -2.0)) + ((v13 + ((v13 * (v13 * v13)) + ((v13 * v13) * -2.0))) * (*(v9 - 1) * (v12 / (*v8 - v10))))) + (((v13 * (v13 * v13)) - (v13 * v13)) * (*v9 * (v12 / (*v8 - v10))))));
}

float spl_apply_with_linear_extension_and_high_clip(float a1, unsigned int a2, const float *a3, float *a4, const float *a5)
{
  if (*a3 > a1)
  {
    return *a4;
  }

  if (a2 < 2)
  {
LABEL_7:
    v10 = 4 * a2 - 4;
    v11 = *(a3 + v10);
    v12 = *(a4 + v10) + ((a1 - v11) * *(a5 + v10));
    if (v12 >= v11)
    {
      return *(a3 + v10);
    }

    else
    {
      return v12;
    }
  }

  v6 = a2 - 1;
  v7 = (a3 + 1);
  v8 = a4 + 1;
  v9 = (a5 + 1);
  while (*v7 <= a1)
  {
    ++v7;
    ++v8;
    ++v9;
    if (!--v6)
    {
      goto LABEL_7;
    }
  }

  v14 = *(v8 - 1);
  v5 = *v8;
  if (*v8 == v14)
  {
    return v5;
  }

  v15 = *(v7 - 1);
  v16 = *v7 - v15;
  v17 = (a1 - v15) / v16;
  return v14 + ((v5 - v14) * (((((v17 * v17) * 3.0) + ((v17 * (v17 * v17)) * -2.0)) + ((v17 + ((v17 * (v17 * v17)) + ((v17 * v17) * -2.0))) * (*(v9 - 1) * (v16 / (v5 - v14))))) + (((v17 * (v17 * v17)) - (v17 * v17)) * (*v9 * (v16 / (v5 - v14))))));
}

float spl_apply_with_linear_extension_and_high_clip_monotonic(float a1, unsigned int a2, const float *a3, float *a4, float32x2_t *a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (*a3 > a1)
  {
    return *a4;
  }

  if (a2 < 2)
  {
LABEL_7:
    v17 = 4 * a2 - 4;
    v18 = *(a3 + v17);
    v19 = *(a4 + v17) + ((a1 - v18) * *(a5->f32 + v17));
    if (v19 >= v18)
    {
      return *(a3 + v17);
    }

    else
    {
      return v19;
    }
  }

  v12 = (a3 + 1);
  v13 = a4 + 1;
  v14 = a2 - 1;
  v15 = a5;
  while (1)
  {
    v16 = *v12;
    if (*v12 > a1)
    {
      break;
    }

    v15 = (v15 + 4);
    ++v12;
    ++v13;
    if (!--v14)
    {
      goto LABEL_7;
    }
  }

  v21 = *(v13 - 1);
  v11 = *v13;
  if (*v13 == v21)
  {
    return v11;
  }

  v22 = *(v12 - 1);
  v23 = v16 - v22;
  v24 = v11 - v21;
  v25 = (v16 - v22) / v24;
  *&a11 = v24 / v23;
  v26 = vdiv_f32(*v15, vdup_lane_s32(*&a11, 0));
  v27 = COERCE_FLOAT(vmul_f32(v26, v26).i32[1]) + (v26.f32[0] * v26.f32[0]);
  if (v27 <= 9.0)
  {
    v28 = vbic_s8(*v15, vcltz_f32(v26));
  }

  else
  {
    v28 = vmul_n_f32(vmul_n_f32(v26, 3.0 / sqrtf(v27)), *&a11);
  }

  v29 = (a1 - v22) / v23;
  return v21 + (v24 * (((((v29 * v29) * 3.0) + ((v29 * (v29 * v29)) * -2.0)) + ((v29 + ((v29 * (v29 * v29)) + ((v29 * v29) * -2.0))) * (v25 * v28.f32[0]))) + (((v29 * (v29 * v29)) - (v29 * v29)) * vmuls_lane_f32(v25, v28, 1))));
}

float spl_calculate(float a1, int a2, const float *a3, float (*a4)[2], const float (*a5)[4])
{
  if (*a3 >= a1)
  {
    v6 = 1;
    v5 = a4;
    return *v5 + ((*a4)[v6] * a1);
  }

  if (a3[a2 - 1] < a1)
  {
    v5 = &(*a4)[2];
    v6 = 3;
    return *v5 + ((*a4)[v6] * a1);
  }

  v8 = (a2 - 1) & ~((a2 - 1) >> 31);
  v9 = &(*a5)[-4];
  v10 = (a3 + 1);
  v11 = 0.0;
  while (v8)
  {
    v12 = *v10++;
    v9 += 4;
    --v8;
    if (v12 >= a1)
    {
      if ((a2 & 0x80000000) == 0)
      {
        v13 = 0;
        v14 = a1 - *(v10 - 2);
        v15 = (a2 + 1);
        v11 = 0.0;
        do
        {
          v16 = *v9++;
          v11 = v11 + (v16 * powf(v14, v13++));
        }

        while (v15 != v13);
      }

      return v11;
    }
  }

  return v11;
}

void poly_apply(float a1, int a2, const float *a3, const float (*a4)[2], const float (*a5)[4])
{
  if (*a3 < a1 && a3[a2 - 1] >= a1)
  {
    v6 = (a2 - 1) & ~((a2 - 1) >> 31);
    v7 = &(*a5)[-4];
    v8 = (a3 + 1);
    while (v6)
    {
      v9 = *v8++;
      v7 += 4;
      --v6;
      if (v9 >= a1)
      {
        if ((a2 & 0x80000000) == 0)
        {
          v10 = 0;
          v11 = (a2 + 1);
          v12 = 0.0;
          do
          {
            v13 = *v7++;
            v12 = v12 + (v13 * powf(a1, v10++));
          }

          while (v11 != v10);
        }

        return;
      }
    }
  }
}

float ebz_norm(unsigned int a1, float *a2, float a3)
{
  *&v25[52] = *MEMORY[0x277D85DE8];
  v24 = a3;
  v3 = a1 - 2;
  v23[v3] = 1.0 - a3;
  if (a1 >= 3)
  {
    v4 = v3;
    v5 = &v23[a1];
    v6 = *(v5 - 2);
    v7 = v5 - 3;
    v8 = v25;
    v9 = a3;
    do
    {
      v9 = v9 * a3;
      *v8++ = v9;
      v6 = (1.0 - a3) * v6;
      *v7-- = v6;
      --v4;
    }

    while (v4);
  }

  v10 = *&v25[4 * v3 - 4] * a3;
  if (a1 >= 2)
  {
    v11 = a1 - 1;
    v12 = &EBZ_COEFFS[14 * a1 - 14];
    v13 = v23;
    v14 = &v24;
    do
    {
      v15 = *v12++;
      v16 = v15;
      v17 = *v14++;
      v18 = v17;
      v19 = *v13++;
      v20 = (v18 * v16) * v19;
      v21 = *a2++;
      v10 = v10 + (v20 * v21);
      --v11;
    }

    while (v11);
  }

  return fmaxf(fminf(v10, 1.0), 0.0);
}

float ebz_prime(unsigned int a1, uint64_t a2, float a3)
{
  *&v20[52] = *MEMORY[0x277D85DE8];
  v3 = 1.0;
  v4 = 1.0 - a3;
  v19 = 1065353216;
  v5 = a1 - 2;
  v18[v5] = 1.0;
  if (a1 >= 3)
  {
    v6 = v5;
    v7 = &v18[a1];
    v8 = *(v7 - 2);
    v9 = v7 - 3;
    v10 = v20;
    do
    {
      v3 = v3 * a3;
      *v10++ = v3;
      v8 = v4 * v8;
      *v9-- = v8;
      --v6;
    }

    while (v6);
  }

  if (a1 <= 1)
  {
    v12 = a1;
    v13 = -a1;
    v16 = 0.0;
  }

  else
  {
    v11 = 0;
    v12 = a1;
    v13 = -a1;
    v14 = 0.0;
    do
    {
      v15 = ((*&v20[4 * v11 - 4] * EBZ_COEFFS[14 * a1 - 14 + v11]) * v18[v11]) * *(a2 + 4 * v11);
      v14 = v14 + (v15 * (++v11 + (v13 * a3)));
    }

    while (a1 - 1 != v11);
    v16 = v14;
  }

  return v16 + 1.0 / v4 * (*&v20[4 * v5 - 4] * a3) * (v12 + (v13 * a3));
}

float piecewiseLinearInterp(float *a1, float *a2, unsigned int a3, float a4)
{
  if (*a1 > a4)
  {
    return *a2;
  }

  if (a3 < 2)
  {
    return a2[a3 - 1];
  }

  v5 = 0;
  v6 = a2 + 1;
  v7 = a3 - 1;
  for (i = a1 + 1; *i <= a4; ++i)
  {
    v5 += 0x100000000;
    ++v6;
    if (!--v7)
    {
      return a2[a3 - 1];
    }
  }

  return *(a2 + (v5 >> 30)) + (((a4 - *(a1 + (v5 >> 30))) * (*v6 - *(a2 + (v5 >> 30)))) / (*i - *(a1 + (v5 >> 30))));
}

float applyLinearStretchInPQ(float result, float a2, float a3)
{
  if (a2 != 1.0)
  {
    v5 = result < 0.00000073096;
    if (result < 0.00000073096)
    {
      result = -(result + -0.0000014619);
    }

    v6 = flt_2508CD850[v5];
    v7 = powf(result, 0.012683);
    v8 = fmax(((v7 + -0.83594) / ((v7 * -18.688) + 18.852)), 0.0);
    v9 = a3 + (((v6 * powf(v8, 6.2774)) - a3) * a2);
    if (v9 >= 0.0)
    {
      v11 = powf(v9 * 0.0001, 0.1593);
      v12 = ((v11 * 18.852) + 0.83594) / ((v11 * 18.688) + 1.0);

      return powf(v12, 78.844);
    }

    else
    {
      v10 = powf(v9 * -0.0001, 0.1593);
      return 0.0000014619 - powf(((v10 * 18.852) + 0.83594) / ((v10 * 18.688) + 1.0), 78.844);
    }
  }

  return result;
}

float applyNonlinearStretchInPQ(float result, float a2, float a3)
{
  v3 = a3 + ((result - a3) * a2);
  if (a2 != 1.0)
  {
    return v3;
  }

  return result;
}

float applyRWTMO(float a1, const _EdrAdaptationParam *a2)
{
  RWTMO_srcRefWtNits = a2->RWTMO_srcRefWtNits;
  RWTMO_tgtRefWtNits = a2->RWTMO_tgtRefWtNits;
  RWTMO_b = a2->RWTMO_b;
  RWTMO_p2x = a2->RWTMO_p2x;
  RWTMO_c = a2->RWTMO_c;
  RWTMO_p0y = a2->RWTMO_p0y;
  RWTMO_p1y = a2->RWTMO_p1y;
  RWTMO_p2y = a2->RWTMO_p2y;
  RWTMO_tgtRefWt = a2->RWTMO_tgtRefWt;
  RWTMO_a = a2->RWTMO_a;
  v9 = a1 < 0.00000073096;
  if (a1 < 0.00000073096)
  {
    a1 = -(a1 + -0.0000014619);
  }

  v10 = flt_2508CD850[v9];
  v11 = powf(a1, 0.012683);
  v12 = fmax(((v11 + -0.83594) / ((v11 * -18.688) + 18.852)), 0.0);
  v13 = (v10 * powf(v12, 6.2774)) / RWTMO_srcRefWtNits;
  if (v13 <= RWTMO_p2x)
  {
    if (v13 <= a2->RWTMO_p0x)
    {
      v14 = v13 * RWTMO_tgtRefWt;
    }

    else
    {
      if (RWTMO_a == 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v15 = RWTMO_b + (RWTMO_a * v13);
        if (v15 < 0.0)
        {
          v15 = 0.0;
        }

        v16 = (fabs(sqrt(v15)) + RWTMO_c) / RWTMO_a;
        v17 = v16;
      }

      v14 = (v17 + v17) * (1.0 - v17) * RWTMO_p1y + RWTMO_p0y * ((1.0 - v17) * (1.0 - v17)) + RWTMO_p2y * (v17 * v17);
    }
  }

  else
  {
    v14 = a2->RWTMO_ExtensionOffset + (v13 * a2->RWTMO_ExtensionWeight);
  }

  v18 = RWTMO_tgtRefWtNits * v14;
  if (v18 >= 0.0)
  {
    v21 = powf(v18 * 0.0001, 0.1593);
    v22 = ((v21 * 18.852) + 0.83594) / ((v21 * 18.688) + 1.0);

    return powf(v22, 78.844);
  }

  else
  {
    v19 = powf(v18 * -0.0001, 0.1593);
    return 0.0000014619 - powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
  }
}

void calculateEdrAdaptationParamS(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v8 = *(a1 + 4);
  v7 = *(a1 + 5);
  v10 = *(a1 + 7);
  v9 = *(a1 + 8);
  v11 = *(a1 + 13);
  v12 = a1[47];
  v14 = *(a1 + 39);
  v13 = *(a1 + 40);
  v15 = *(a1 + 41);
  v16 = *(a1 + 168);
  v17 = *(a1 + 43);
  v18 = *(a1 + 44);
  v20 = *(a1 + 45);
  v19 = *(a1 + 46);
  v21 = *(a1 + 48);
  v22 = *(a1 + 49);
  v24 = *(a1 + 50);
  v23 = *(a1 + 51);
  v26 = *(a1 + 52);
  v25 = *(a1 + 53);
  v28 = *(a1 + 55);
  v27 = *(a1 + 56);
  *(a3 + 168) = 0;
  *a3 = 1;
  *(a3 + 52) = *(a1 + 130);
  switch(LODWORD(v4))
  {
    case 2:
      *(a3 + 2) = 3;
      v31 = v10 * v9;
      if ((v10 * v9) >= v8)
      {
        v31 = v8;
      }

      if (v6 >= v31)
      {
        v31 = v6;
      }

      *(a3 + 4) = v6;
      *(a3 + 8) = v31;
      *(a3 + 12) = v8;
      v32 = v10 * v11;
      if ((v10 * v11) >= v8)
      {
        v32 = v8;
      }

      if (v6 >= v32)
      {
        v33 = v6;
      }

      else
      {
        v33 = v32;
      }

      *(a3 + 20) = v6;
      *(a3 + 24) = v33;
      *(a3 + 28) = v8;
      v34 = 1.0;
      v35 = 1.0;
      if (v31 != v6)
      {
        v35 = (((v33 - v6) / (v31 - v6)) + 1.0) * 0.5;
      }

      if (v8 != v31)
      {
        v34 = (v8 - v33) / (v8 - v31);
      }

      *(a3 + 36) = 1065353216;
      v36 = (1.0 / v35) * (v34 * v34);
      goto LABEL_351;
    case 3:
      *(a3 + 2) = 3;
      v248 = v6 + ((v9 - v6) * v10);
      if (v248 >= v8)
      {
        v248 = v8;
      }

      if (v6 >= v248)
      {
        v249 = v6;
      }

      else
      {
        v249 = v248;
      }

      if (v16)
      {
        v872 = v14;
        v898 = v13;
        v907 = v9;
        if (v7 <= v11)
        {
          v251 = v6;
          v250 = v8;
          v252 = v11;
          v253 = powf((v11 - v7) / (v8 - v7), v17) * v20;
        }

        else
        {
          v250 = v8;
          v251 = v6;
          v252 = v11;
          v253 = v18 * powf((v7 - v11) / (v7 - v6), v17);
        }

        v500 = v249 + (((v252 - v907) * v253) * v10);
        v8 = v250;
        v6 = v251;
        v13 = v898;
        v14 = v872;
      }

      else
      {
        v500 = v6 + (((v249 + ((v11 - v9) * v10)) - v6) * v19);
      }

      if (v500 >= v8)
      {
        v500 = v8;
      }

      if (v6 >= v500)
      {
        v500 = v6;
      }

      *(a3 + 4) = v6;
      *(a3 + 8) = v249;
      *(a3 + 12) = v8;
      *(a3 + 20) = v6;
      *(a3 + 24) = v500;
      *(a3 + 28) = v8;
      v685 = v8 / v8;
      v686 = 1.0;
      if (v8 == 0.0)
      {
        v685 = 1.0;
      }

      v687 = 1.0;
      if (v249 != v6)
      {
        v687 = (v500 - v6) / (v249 - v6);
      }

      if (v8 != v249)
      {
        v686 = (v8 - v500) / (v8 - v249);
      }

      if (v249 <= v500)
      {
        v691 = v687 - v685;
        v690 = v685 + ((v687 - v685) * v14);
        v689 = v685 + (v691 * v13);
        v403 = (1.0 / v689) * (v686 * v686);
      }

      else
      {
        v688 = v686 - v685;
        v403 = v685 + ((v686 - v685) * v15);
        v689 = v685 + (v688 * v13);
        v690 = (v687 * v687) * (1.0 / v689);
      }

      *(a3 + 36) = v690;
      *(a3 + 40) = v689;
      goto LABEL_862;
    case 4:
      *(a3 + 2) = 3;
      v187 = v6 + ((v9 - v6) * v10);
      if (v187 >= v8)
      {
        v187 = v8;
      }

      if (v6 >= v187)
      {
        v188 = v6;
      }

      else
      {
        v188 = v187;
      }

      if (v16)
      {
        v871 = v14;
        v897 = v13;
        v189 = v9;
        if (v7 <= v11)
        {
          v191 = v6;
          v190 = v8;
          v192 = v11;
          v193 = powf((v11 - v7) / (v8 - v7), v17) * v20;
        }

        else
        {
          v190 = v8;
          v191 = v6;
          v192 = v11;
          v193 = v18 * powf((v7 - v11) / (v7 - v6), v17);
        }

        v499 = v188 + (((v192 - v189) * v193) * v10);
        v8 = v190;
        v6 = v191;
        v13 = v897;
        v14 = v871;
      }

      else
      {
        v499 = v6 + (((v188 + ((v11 - v9) * v10)) - v6) * v19);
      }

      if (v499 >= v8)
      {
        v499 = v8;
      }

      if (v6 >= v499)
      {
        v678 = v6;
      }

      else
      {
        v678 = v499;
      }

      *(a3 + 4) = v6;
      *(a3 + 8) = v188;
      *(a3 + 12) = v8;
      *(a3 + 20) = v6;
      *(a3 + 24) = v678;
      *(a3 + 28) = v8;
      v679 = v8 / v8;
      v680 = 1.0;
      if (v8 == 0.0)
      {
        v679 = 1.0;
      }

      v681 = 1.0;
      if (v188 != v6)
      {
        v681 = (v678 - v6) / (v188 - v6);
      }

      if (v8 != v188)
      {
        v680 = (v8 - v678) / (v8 - v188);
      }

      v682 = v681 - v679;
      if (v188 <= v678)
      {
        v684 = v679 + (v682 * v14);
        v126 = v679 + (v682 * v13);
        v683 = 1.0 / v126;
      }

      else
      {
        v126 = v679 + (v682 * v13);
        v683 = 1.0 / v126;
        v684 = (v681 * v681) * (1.0 / v126);
      }

      v496 = (v680 * v680) * v683;
      *(a3 + 36) = v684;
      goto LABEL_990;
    case 5:
      v221 = v14;
      v222 = v13;
      *(a3 + 2) = 3;
      v223 = v8;
      v224 = v6;
      v225 = v9;
      v226 = v8 * piecewiseLinearInterp(adjLUTs_xs, &adjLUTs_ys[40 * v12], 0xAu, v11);
      v227 = v224 + ((v225 - v224) * v10);
      if (v227 >= v223)
      {
        v227 = v223;
      }

      if (v224 >= v227)
      {
        v227 = v224;
      }

      v228 = v227 + ((v226 - v225) * v10);
      if (v228 >= v223)
      {
        v228 = v223;
      }

      if (v224 >= v228)
      {
        v228 = v224;
      }

      *(a3 + 4) = v224;
      *(a3 + 8) = v227;
      *(a3 + 12) = v223;
      *(a3 + 20) = v224;
      *(a3 + 24) = v228;
      *(a3 + 28) = v223;
      v229 = v223 / v223;
      v230 = 1.0;
      if (v223 == 0.0)
      {
        v229 = 1.0;
      }

      v231 = 1.0;
      if (v227 != v224)
      {
        v231 = (v228 - v224) / (v227 - v224);
      }

      if (v223 != v227)
      {
        v230 = (v223 - v228) / (v223 - v227);
      }

      v232 = v231 - v229;
      v293 = v227 > v228;
      v233 = v229 + ((v231 - v229) * v222);
      v234 = (v231 * v231) * (1.0 / v233);
      v235 = v229 + (v232 * v221);
      if (v293)
      {
        v235 = v234;
      }

      v236 = (v230 * v230) * (1.0 / v233);
      *(a3 + 36) = v235;
      goto LABEL_962;
    case 6:
      *(a3 + 2) = 3;
      v115 = (v11 - v7) / v7;
      v116 = fabsf(v115);
      if (v115 >= 0.0)
      {
        v117 = v22;
      }

      else
      {
        v117 = v21;
      }

      v118 = v9 + (-(v9 - (v11 * (v23 + ((((v11 / v8) - v24) * (v25 - v23)) / (v26 - v24))))) * (v116 * v117));
      v119 = v6 + ((v9 - v6) * v10);
      if (v119 >= v8)
      {
        v119 = v8;
      }

      if (v6 >= v119)
      {
        v119 = v6;
      }

      v120 = v6 + ((v118 - v6) * v10);
      if (v120 >= v8)
      {
        v120 = v8;
      }

      if (v6 >= v120)
      {
        v121 = v6;
      }

      else
      {
        v121 = v120;
      }

      *(a3 + 4) = v6;
      *(a3 + 8) = v119;
      *(a3 + 12) = v8;
      *(a3 + 20) = v6;
      *(a3 + 24) = v121;
      *(a3 + 28) = v8;
      v122 = v8 / v8;
      v123 = 1.0;
      if (v8 == 0.0)
      {
        v122 = 1.0;
      }

      v124 = 1.0;
      if (v119 != v6)
      {
        v124 = (v121 - v6) / (v119 - v6);
      }

      if (v8 != v119)
      {
        v123 = (v8 - v121) / (v8 - v119);
      }

      v125 = v124 - v122;
      if (v119 <= v121)
      {
        v128 = v122 + (v125 * v14);
        v126 = v122 + (v125 * v13);
        v127 = 1.0 / v126;
      }

      else
      {
        v126 = v122 + (v125 * v13);
        v127 = 1.0 / v126;
        v128 = (v124 * v124) * (1.0 / v126);
      }

      v496 = (v123 * v123) * v127;
      goto LABEL_989;
    case 7:
      *(a3 + 2) = 3;
      v311 = (v11 - v7) / v7;
      v312 = fabsf(v311);
      if (v311 >= 0.0)
      {
        v313 = v22;
      }

      else
      {
        v313 = v21;
      }

      v314 = v9 + (-(v9 - (v11 * (v23 + ((((v11 / v8) - v24) * (v25 - v23)) / (v26 - v24))))) * (v312 * v313));
      v315 = v6 + ((v9 - v6) * v10);
      if (v315 >= v8)
      {
        v315 = v8;
      }

      if (v6 >= v315)
      {
        v315 = v6;
      }

      v316 = v6 + ((v314 - v6) * v10);
      if (v316 >= v8)
      {
        v316 = v8;
      }

      if (v6 >= v316)
      {
        v316 = v6;
      }

      *(a3 + 4) = v6;
      *(a3 + 8) = v315;
      *(a3 + 12) = v8;
      *(a3 + 20) = v6;
      *(a3 + 24) = v316;
      *(a3 + 28) = v8;
      v317 = v8 / v8;
      v318 = 1.0;
      if (v8 == 0.0)
      {
        v317 = 1.0;
      }

      v319 = 1.0;
      if (v315 != v6)
      {
        v319 = (v316 - v6) / (v315 - v6);
      }

      if (v8 != v315)
      {
        v318 = (v8 - v316) / (v8 - v315);
      }

      v320 = v319 - v317;
      if (v315 <= v316)
      {
        v322 = v317 + (v320 * v14);
        v323 = v317 + (v320 * v13);
        v324 = (1.0 / v323) * (v318 * v318);
      }

      else
      {
        v321 = v317 + (v320 * v13);
        *(a3 + 20) = v28 + ((v6 - v28) * v27);
        *(a3 + 24) = v28 + ((v316 - v28) * v27);
        *(a3 + 28) = v28 + ((v8 - v28) * v27);
        v322 = v27 * ((v319 * v319) * (1.0 / v321));
        v323 = v27 * v321;
        v324 = v27 * ((1.0 / v321) * (v318 * v318));
      }

      goto LABEL_585;
    case 8:
      *(a3 + 2) = 3;
      if (v9 >= v8)
      {
        v391 = v8;
      }

      else
      {
        v391 = v9;
      }

      if (v6 >= v391)
      {
        v392 = v6;
      }

      else
      {
        v392 = v391;
      }

      if (v11 <= v9)
      {
        v393 = v8;
        v394 = v6;
        v395 = v9;
        v396 = powf(v11 / v9, 2.2);
        v6 = v394;
        v8 = v393;
        v9 = v395 * v396;
      }

      if (v9 >= v8)
      {
        v397 = v8;
      }

      else
      {
        v397 = v9;
      }

      if (v6 >= v397)
      {
        v397 = v6;
      }

      *(a3 + 4) = v6;
      *(a3 + 8) = v392;
      *(a3 + 12) = v8;
      *(a3 + 20) = v6;
      *(a3 + 24) = v397;
      *(a3 + 28) = v8;
      v398 = v8 / v8;
      if (v8 == 0.0)
      {
        v398 = 1.0;
      }

      v399 = (v397 - v6) / (v392 - v6);
      if (v392 == v6)
      {
        v399 = 1.0;
      }

      v400 = (v8 - v397) / (v8 - v392);
      if (v8 == v392)
      {
        v400 = 1.0;
      }

      v401 = (1.0 / v398) * (v399 * v399);
      if (v392 <= v397)
      {
        v402 = v398;
      }

      else
      {
        v402 = v401;
      }

      v403 = (1.0 / v398) * (v400 * v400);
      *(a3 + 36) = v402;
      *(a3 + 40) = v398;
LABEL_862:
      *(a3 + 44) = v403;
      return;
    case 9:
      *(a3 + 2) = 3;
      v237 = 1.0;
      v238 = fmaxf(fminf(v11 / v5, 1.0), 0.0);
      v239 = v238 * 1.2 + (1.0 - v238) * 0.75;
      v240 = v11 * v239;
      if (v240 > v9)
      {
        v241 = v9;
      }

      else
      {
        v241 = v240;
      }

      if (v9 >= v8)
      {
        v242 = v8;
      }

      else
      {
        v242 = v9;
      }

      if (v6 >= v242)
      {
        v242 = v6;
      }

      if (v241 >= v8)
      {
        v241 = v8;
      }

      if (v6 >= v241)
      {
        v243 = v6;
      }

      else
      {
        v243 = v241;
      }

      *(a3 + 4) = v6;
      *(a3 + 8) = v242;
      *(a3 + 12) = v8;
      *(a3 + 20) = v6;
      *(a3 + 24) = v243;
      *(a3 + 28) = v8;
      v244 = v8 / v8;
      if (v8 == 0.0)
      {
        v244 = 1.0;
      }

      v245 = 1.0;
      if (v242 != v6)
      {
        v245 = (v243 - v6) / (v242 - v6);
      }

      if (v8 == v242)
      {
        goto LABEL_668;
      }

      v246 = v8 - v243;
      v247 = v8 - v242;
      goto LABEL_667;
    case 0xA:
      v440 = v9;
      v441 = v6;
      v442 = v8;
      v443 = v11;
      *(a3 + 2) = 3;
      if (GetConfig())
      {
        Config = GetConfig();
        v445 = *HDRConfig::GetConfigEntryValue(Config, 0x7Du, 0);
        if (v445 < 0.0)
        {
          v446 = powf(v445 * -0.0001, 0.1593);
          v447 = 0.0000014619 - powf(((v446 * 18.852) + 0.83594) / ((v446 * 18.688) + 1.0), 78.844);
          goto LABEL_651;
        }
      }

      else
      {
        v445 = 0.0;
      }

      v576 = powf(v445 * 0.0001, 0.1593);
      v447 = powf(((v576 * 18.852) + 0.83594) / ((v576 * 18.688) + 1.0), 78.844);
LABEL_651:
      v577 = v443 / v447;
      v237 = 1.0;
      v578 = fmaxf(fminf(v577, 1.0), 0.0);
      v579 = v578 + (1.0 - v578) * 0.6;
      v580 = v440 * v579;
      if (v440 >= v442)
      {
        v242 = v442;
      }

      else
      {
        v242 = v440;
      }

      if (v441 >= v242)
      {
        v242 = v441;
      }

      if (v580 >= v442)
      {
        v580 = v442;
      }

      if (v441 >= v580)
      {
        v243 = v441;
      }

      else
      {
        v243 = v580;
      }

      *(a3 + 4) = v441;
      *(a3 + 8) = v242;
      *(a3 + 12) = v442;
      *(a3 + 20) = v441;
      *(a3 + 24) = v243;
      *(a3 + 28) = v442;
      v244 = v442 / v442;
      if (v442 == 0.0)
      {
        v244 = 1.0;
      }

      v245 = 1.0;
      if (v242 != v441)
      {
        v245 = (v243 - v441) / (v242 - v441);
      }

      if (v442 != v242)
      {
        v246 = v442 - v243;
        v247 = v442 - v242;
LABEL_667:
        v237 = v246 / v247;
      }

LABEL_668:
      v581 = v244 + (v245 - v244) * 0.0;
      v293 = v242 > v243;
      v582 = v244;
      if (v293)
      {
        v582 = (v245 * v245) * (1.0 / v581);
      }

      v575 = v244 + (v237 - v244);
      *(a3 + 36) = v582;
      *(a3 + 40) = v581;
LABEL_672:
      *(a3 + 44) = v575;
      return;
    case 0xB:
      v870 = v14;
      v896 = v13;
      v149 = v7;
      v906 = v9;
      v880 = v6;
      v887 = v8;
      *(a3 + 2) = 3;
      v150 = -(v11 + -0.0000014619);
      v151 = v11;
      if (v11 >= 0.00000073096)
      {
        v150 = v11;
      }

      v152 = flt_2508CD850[v11 < 0.00000073096];
      v153 = powf(v150, 0.012683);
      v154 = fmax(((v153 + -0.83594) / ((v153 * -18.688) + 18.852)), 0.0);
      v155 = v152 * powf(v154, 6.2774);
      if (GetConfig())
      {
        v156 = GetConfig();
        v157 = *HDRConfig::GetConfigEntryValue(v156, 0x88u, 0);
      }

      else
      {
        v157 = 0.0;
      }

      v551 = v155 * v157;
      if (v551 >= 0.0)
      {
        v554 = powf(v551 * 0.0001, 0.1593);
        v553 = powf(((v554 * 18.852) + 0.83594) / ((v554 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v552 = powf(v551 * -0.0001, 0.1593);
        v553 = 0.0000014619 - powf(((v552 * 18.852) + 0.83594) / ((v552 * 18.688) + 1.0), 78.844);
      }

      v555 = (v553 - v149) / v149;
      v556 = fabsf(v555);
      _NF = v555 < 0.0;
      v557 = -1.5;
      if (_NF)
      {
        v557 = 0.5;
      }

      v558 = v906 + (-(v906 - (v553 * (v23 + ((((v151 / v887) - v24) * (v25 - v23)) / (v26 - v24))))) * (v556 * v557));
      if (v906 <= v887)
      {
        v559 = v906;
      }

      else
      {
        v559 = v887;
      }

      if (v906 >= v880)
      {
        v560 = v559;
      }

      else
      {
        v560 = v880;
      }

      if (v558 <= v887)
      {
        v561 = v558;
      }

      else
      {
        v561 = v887;
      }

      if (v558 >= v880)
      {
        v562 = v561;
      }

      else
      {
        v562 = v880;
      }

      *(a3 + 4) = v880;
      *(a3 + 8) = v560;
      *(a3 + 12) = v887;
      *(a3 + 20) = v880;
      *(a3 + 24) = v562;
      *(a3 + 28) = v887;
      v563 = 1.0;
      if (v887 == 0.0)
      {
        v564 = 1.0;
      }

      else
      {
        v564 = v887 / v887;
      }

      v565 = 1.0;
      if (v560 != v880)
      {
        v565 = (v562 - v880) / (v560 - v880);
      }

      if (v887 != v560)
      {
        v563 = (v887 - v562) / (v887 - v560);
      }

      v566 = v565 - v564;
      if (v560 <= v562)
      {
        v569 = v564 + (v566 * v870);
        v567 = v564 + (v566 * v896);
        v568 = 1.0 / v567;
      }

      else
      {
        v567 = v564 + (v566 * v896);
        v568 = 1.0 / v567;
        v569 = (v565 * v565) * (1.0 / v567);
      }

      v570 = (v563 * v563) * v568;
      v571 = v565 * 3.0;
      v293 = v571 <= v569;
      v572 = v571;
      if (!v293)
      {
        v572 = v569;
      }

      *(a3 + 36) = v572;
      *(a3 + 40) = v567;
      v573 = v563 * 3.0;
      if (v573 <= v570)
      {
        v574 = v573;
        v575 = v574;
      }

      else
      {
        v575 = v570;
      }

      goto LABEL_672;
    case 0xC:
      v423 = v6;
      v424 = v8;
      v425 = v11;
      if (!GetConfig() || (v426 = GetConfig(), *HDRConfig::GetConfigEntryValue(v426, 0, 0) != 1) || !GetConfig() || (v427 = GetConfig(), !*(v427 + 2689)) || (v427[5376] & 0x80) == 0)
      {
        v428 = 250.0;
LABEL_478:
        v429 = *(a1 + 8);
        *(a3 + 2) = 3;
LABEL_479:
        v430 = powf(v428 * 0.0001, 0.1593);
        v431 = powf(((v430 * 18.852) + 0.83594) / ((v430 * 18.688) + 1.0), 78.844);
        goto LABEL_480;
      }

      if (!GetConfig())
      {
        v428 = 0.0;
        goto LABEL_478;
      }

      v802 = GetConfig();
      v428 = *HDRConfig::GetConfigEntryValue(v802, 0x7Au, 0);
      v429 = *(a1 + 8);
      *(a3 + 2) = 3;
      if (v428 >= 0.0)
      {
        goto LABEL_479;
      }

      v803 = powf(v428 * -0.0001, 0.1593);
      v431 = 0.0000014619 - powf(((v803 * 18.852) + 0.83594) / ((v803 * 18.688) + 1.0), 78.844);
LABEL_480:
      v432 = v425 / v431;
      v433 = 1.0;
      v434 = fminf(v432, 1.0);
      v435 = 0.0;
      v436 = v429 * (((((fmaxf(v434, 0.0) * 0.35) + 0.65) + -1.0) * ((((1.0 - (v425 / v424)) + -0.1) / 0.4) + 0.0)) + 1.0);
      if (v429 >= v424)
      {
        v437 = v424;
      }

      else
      {
        v437 = v429;
      }

      if (v423 >= v437)
      {
        v437 = v423;
      }

      if (v436 >= v424)
      {
        v436 = v424;
      }

      if (v423 >= v436)
      {
        v436 = v423;
      }

      *(a3 + 4) = v423;
      *(a3 + 8) = v437;
      *(a3 + 12) = v424;
      *(a3 + 20) = v423;
      *(a3 + 24) = v436;
      *(a3 + 28) = v424;
      if (v437 != v423)
      {
        v435 = ((v436 - v423) / (v437 - v423)) + -1.0;
      }

      if (v424 == v437)
      {
        goto LABEL_828;
      }

      v438 = v424 - v436;
      v439 = v424 - v437;
      goto LABEL_827;
    case 0xD:
      v94 = *(a1 + 58);
      v93 = *(a1 + 59);
      v95 = *(a1 + 61);
      v96 = *(a1 + 64);
      v97 = *(a1 + 66);
      v98 = *(a1 + 67);
      v99 = *(a1 + 68);
      v100 = *(a1 + 69);
      v101 = *(a1 + 70);
      v102 = *(a1 + 284);
      v103 = *(a1 + 285);
      v104 = *(a1 + 286);
      v105 = *(a1 + 287);
      *(a3 + 2) = 3;
      v106 = v94 / v93;
      v107 = (v11 - v7) / v7;
      if (v98 <= 0.0)
      {
        v98 = fmax(fmin(v106 * -0.45 + 0.5615, 0.6), 0.2);
      }

      if (v107 >= 0.0)
      {
        v97 = v98;
      }

      v108 = v107 * v97;
      v109 = 1.0;
      v110 = 4;
      if (v107 < 0.0)
      {
        v110 = 62;
      }

      v111 = *&a1[v110];
      if (v102)
      {
        v112 = 0.0;
        if (v101 > 0.0)
        {
          v878 = v6;
          v895 = v100;
          if (v96 >= 0.0)
          {
            v713 = powf(v96 * 0.0001, 0.1593);
            v114 = powf(((v713 * 18.852) + 0.83594) / ((v713 * 18.688) + 1.0), 78.844);
          }

          else
          {
            v113 = powf(v96 * -0.0001, 0.1593);
            v114 = 0.0000014619 - powf(((v113 * 18.852) + 0.83594) / ((v113 * 18.688) + 1.0), 78.844);
          }

          v893 = v114;
          v714 = powf(v101 * 0.0001, 0.1593);
          v715 = powf(((v714 * 18.852) + 0.83594) / ((v714 * 18.688) + 1.0), 78.844);
          v6 = v878;
          v112 = fmaxf(fminf(v893 / v715, 1.0), 0.0);
          v106 = v94 / v93;
          v100 = v895;
        }

        v99 = (v99 * (1.0 - v112)) + (v112 * v100);
      }

      v716 = v111 - v95;
      if (v103)
      {
        v109 = v716 / (v111 - v6);
      }

      v717 = 1.0;
      v718 = fmax(fmin(1.0 - (v716 / (v93 - v94)), 1.0), 0.0);
      if (v104)
      {
        v719 = v718;
      }

      else
      {
        v719 = 1.0;
      }

      if (v95 >= v111)
      {
        v720 = v111;
      }

      else
      {
        v720 = v95;
      }

      if (v6 >= v720)
      {
        v720 = v6;
      }

      v721 = (v100 * v109) + (1.0 - v109) * v99;
      v722 = v720 - v6;
      v723 = v6 + (((v6 + ((v720 - v6) * v721)) - v6) * (v108 + 1.0));
      if (v723 >= v111)
      {
        v723 = v111;
      }

      if (v6 >= v723)
      {
        v723 = v6;
      }

      v724 = v6 + (v722 * 0.5);
      if (v724 >= v111)
      {
        v724 = v111;
      }

      if (v6 >= v724)
      {
        v724 = v6;
      }

      v725 = v6 + (v722 * 2.0);
      if (v725 >= v111)
      {
        v725 = v111;
      }

      if (v6 >= v725)
      {
        v725 = v6;
      }

      v726 = v111 + ((v720 - v111) * 2.0);
      if (v726 >= v111)
      {
        v726 = v111;
      }

      if (v6 >= v726)
      {
        v726 = v6;
      }

      v727 = v111 + ((v720 - v111) * 0.5);
      if (v727 >= v111)
      {
        v727 = v111;
      }

      if (v6 >= v727)
      {
        v727 = v6;
      }

      if (v724 < v726)
      {
        v724 = v726;
      }

      if (v725 < v727)
      {
        v727 = v725;
      }

      if (v723 >= v727)
      {
        v723 = v727;
      }

      if (v724 >= v723)
      {
        v728 = v724;
      }

      else
      {
        v728 = v723;
      }

      v729 = (v111 - v720) + v728;
      if (v729 >= v111)
      {
        v729 = v111;
      }

      *(a3 + 4) = v6;
      *(a3 + 8) = v720;
      *(a3 + 12) = v111;
      *(a3 + 20) = v6;
      *(a3 + 24) = v728;
      v730 = (v111 * v719) + ((1.0 - v719) * v729);
      *(a3 + 28) = v730;
      v731 = 1.0;
      if (v720 != v6)
      {
        v731 = (v728 - v6) / v722;
      }

      if (v111 != v720)
      {
        v717 = (v730 - v728) / (v111 - v720);
      }

      v323 = 1.0;
      if (v105)
      {
        v323 = (v106 * v717) + (1.0 - v106) * v731;
      }

      v324 = (v717 * v717) * (1.0 / v323);
      *(a3 + 36) = (v731 * v731) * (1.0 / v323);
      goto LABEL_941;
    case 0xE:
      v879 = v6;
      v886 = v8;
      v129 = v11;
      v131 = *(a1 + 58);
      v130 = *(a1 + 59);
      if (!GetConfig() || (v132 = GetConfig(), *HDRConfig::GetConfigEntryValue(v132, 0, 0) != 1) || !GetConfig() || (v133 = GetConfig(), !*(v133 + 2689)) || (v133[5376] & 0x80) == 0)
      {
        v134 = 250.0;
        goto LABEL_132;
      }

      if (!GetConfig())
      {
        v134 = 0.0;
        goto LABEL_132;
      }

      v798 = GetConfig();
      v134 = *HDRConfig::GetConfigEntryValue(v798, 0x7Au, 0);
      if (v134 >= 0.0)
      {
LABEL_132:
        v135 = powf(v134 * 0.0001, 0.1593);
        v136 = powf(((v135 * 18.852) + 0.83594) / ((v135 * 18.688) + 1.0), 78.844);
        v137 = 0;
        goto LABEL_133;
      }

      v799 = powf(v134 * -0.0001, 0.1593);
      v136 = 0.0000014619 - powf(((v799 * 18.852) + 0.83594) / ((v799 * 18.688) + 1.0), 78.844);
      v137 = 1;
LABEL_133:
      v138 = *(a1 + 8);
      *(a3 + 2) = 3;
      if (v129 >= 0.5)
      {
        if (v137)
        {
          v497 = powf(v134 * -0.0001, 0.1593);
          v498 = 0.0000014619 - powf(((v497 * 18.852) + 0.83594) / ((v497 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v675 = powf(v134 * 0.0001, 0.1593);
          v498 = powf(((v675 * 18.852) + 0.83594) / ((v675 * 18.688) + 1.0), 78.844);
        }

        v148 = ((v129 / v498) * 0.35) + 0.65;
      }

      else
      {
        v139 = ((0.1882 / v136) * 0.35) + 0.65;
        v140 = ((0.5 / v136) * 0.35) + 0.65;
        v141 = GetConfig();
        v142 = 0.0;
        if (v141)
        {
          v143 = GetConfig();
          v142 = *HDRConfig::GetConfigEntryValue(v143, 0x93u, 0);
        }

        if (v130 >= v142)
        {
          v142 = v130;
        }

        v144 = v142 - v131;
        v145 = 0.22;
        if (v144 <= 0.22)
        {
          v145 = v144;
        }

        v146 = v145 + -0.13;
        if (v144 >= 0.13)
        {
          v147 = v146;
        }

        else
        {
          v147 = 0.0;
        }

        v148 = ((((v139 + -1.0) * v147) / 0.09) + 1.0) + (((v129 + -0.1882) * (v140 - ((((v139 + -1.0) * v147) / 0.09) + 1.0))) / 0.3118);
      }

      v433 = 1.0;
      v435 = 0.0;
      v676 = v138 * (((v148 + -1.0) * ((((1.0 - (v129 / v886)) + -0.1) / 0.4) + 0.0)) + 1.0);
      if (v138 >= v886)
      {
        v677 = v886;
      }

      else
      {
        v677 = v138;
      }

      if (v879 >= v677)
      {
        v677 = v879;
      }

      if (v676 >= v886)
      {
        v676 = v886;
      }

      if (v879 >= v676)
      {
        v676 = v879;
      }

      *(a3 + 4) = v879;
      *(a3 + 8) = v677;
      *(a3 + 12) = v886;
      *(a3 + 20) = v879;
      *(a3 + 24) = v676;
      *(a3 + 28) = v886;
      if (v677 != v879)
      {
        v435 = ((v676 - v879) / (v677 - v879)) + -1.0;
      }

      if (v886 != v677)
      {
        v438 = v886 - v676;
        v439 = v886 - v677;
LABEL_827:
        v433 = v438 / v439;
      }

LABEL_828:
      v126 = (v435 * 0.5) + 1.0;
      v496 = ((((1.0 / v126) * (v433 * v433)) + -1.0) * 0.0) + 1.0;
      *(a3 + 36) = v126;
LABEL_990:
      *(a3 + 40) = v126;
      *(a3 + 44) = v496;
      return;
    case 0xF:
      v376 = v6;
      v377 = v8;
      v378 = v11;
      v379 = *(a1 + 58);
      v380 = *(a1 + 59);
      v381 = *(a1 + 61);
      if (!GetConfig() || (v382 = GetConfig(), *HDRConfig::GetConfigEntryValue(v382, 0, 0) != 1) || !GetConfig() || (v383 = GetConfig(), !*(v383 + 2689)) || (v383[5376] & 0x80) == 0)
      {
        v384 = 250.0;
        goto LABEL_434;
      }

      if (!GetConfig())
      {
        v384 = 0.0;
        goto LABEL_434;
      }

      v800 = GetConfig();
      v384 = *HDRConfig::GetConfigEntryValue(v800, 0x7Au, 0);
      if (v384 >= 0.0)
      {
LABEL_434:
        v385 = powf(v384 * 0.0001, 0.1593);
        v386 = powf(((v385 * 18.852) + 0.83594) / ((v385 * 18.688) + 1.0), 78.844);
        goto LABEL_435;
      }

      v801 = powf(v384 * -0.0001, 0.1593);
      v386 = 0.0000014619 - powf(((v801 * 18.852) + 0.83594) / ((v801 * 18.688) + 1.0), 78.844);
LABEL_435:
      *(a3 + 2) = 3;
      v387 = v378;
      if (v378 >= 0.5)
      {
        v517 = ((v378 / v386) * 0.35) + 0.65;
        v518 = v377;
        v519 = v376;
      }

      else
      {
        v388 = ((0.5 / v386) * 0.35) + 0.65;
        if (GetConfig())
        {
          v389 = GetConfig();
          v390 = *HDRConfig::GetConfigEntryValue(v389, 0x93u, 0);
        }

        else
        {
          v390 = 0.0;
        }

        v518 = v377;
        v519 = v376;
        if (v380 >= v390)
        {
          v390 = v380;
        }

        v692 = v390 - v379;
        v693 = 0.3;
        if (v692 <= 0.3)
        {
          v693 = v692;
        }

        v694 = (((v693 + -0.13) * -0.25) / 0.17) + 0.95;
        if (v692 >= 0.13)
        {
          v695 = v694;
        }

        else
        {
          v695 = 0.95;
        }

        v387 = v378;
        v517 = v695 + (((v378 + -0.3327) * (v388 - v695)) / 0.1673);
      }

      v696 = 0.0;
      v697 = v381 * (((v517 + -1.0) * ((((1.0 - (v387 / v518)) + -0.1) / 0.4) + 0.0)) + 1.0);
      if (v381 >= v518)
      {
        v698 = v518;
      }

      else
      {
        v698 = v381;
      }

      if (v519 >= v698)
      {
        v699 = v519;
      }

      else
      {
        v699 = v698;
      }

      if (v697 >= v518)
      {
        v697 = v518;
      }

      if (v519 >= v697)
      {
        v700 = v519;
      }

      else
      {
        v700 = v697;
      }

      v701 = v518;
      if (*(a2 + 17) == 1)
      {
        v702 = GetConfig();
        v519 = v376;
        v518 = v377;
        v701 = v377;
        if (v702)
        {
          v703 = GetConfig();
          ConfigEntryValue = HDRConfig::GetConfigEntryValue(v703, 0xE9u, 0);
          v519 = v376;
          v518 = v377;
          v701 = v377;
          if (*ConfigEntryValue == 1)
          {
            v705 = 1.0 / *(a1 + 1);
            v706 = -(v378 + -0.0000014619);
            if (v378 >= 0.00000073096)
            {
              v706 = v378;
            }

            v707 = flt_2508CD850[v378 < 0.00000073096];
            v708 = powf(v706, 0.012683);
            v709 = fmax(((v708 + -0.83594) / ((v708 * -18.688) + 18.852)), 0.0);
            v710 = v707 * powf(v709, 6.2774);
            v711 = v710 * powf(v705, *(a2 + 20));
            if (v711 >= 0.0)
            {
              v733 = powf(v711 * 0.0001, 0.1593);
              v701 = powf(((v733 * 18.852) + 0.83594) / ((v733 * 18.688) + 1.0), 78.844);
            }

            else
            {
              v712 = powf(v711 * -0.0001, 0.1593);
              v701 = 0.0000014619 - powf(((v712 * 18.852) + 0.83594) / ((v712 * 18.688) + 1.0), 78.844);
            }

            v518 = v377;
            if (v377 < v701)
            {
              v701 = v377;
            }

            v519 = v376;
          }
        }
      }

      *(a3 + 4) = v519;
      *(a3 + 8) = v699;
      *(a3 + 12) = v518;
      *(a3 + 20) = v519;
      *(a3 + 24) = v700;
      *(a3 + 28) = v701;
      if (v699 != v519)
      {
        v696 = ((v700 - v519) / (v699 - v519)) + -1.0;
      }

      v734 = 1.0;
      if (v518 != v699)
      {
        v734 = (v701 - v700) / (v518 - v699);
      }

      v233 = (v696 * 0.5) + 1.0;
      v236 = ((((1.0 / v233) * (v734 * v734)) + -1.0) * 0.8) + 1.0;
      *(a3 + 36) = v233;
LABEL_962:
      *(a3 + 40) = v233;
      *(a3 + 44) = v236;
      return;
    case 0x10:
      v78 = v6;
      v79 = v8;
      v80 = v11;
      if (!GetConfig() || (v81 = GetConfig(), *HDRConfig::GetConfigEntryValue(v81, 0, 0) != 1) || !GetConfig() || (v82 = GetConfig(), !*(v82 + 2689)) || (v82[5376] & 0x80) == 0)
      {
        v83 = 250.0;
LABEL_80:
        v84 = *(a1 + 8);
        *(a3 + 2) = 3;
LABEL_81:
        v85 = powf(v83 * 0.0001, 0.1593);
        v86 = powf(((v85 * 18.852) + 0.83594) / ((v85 * 18.688) + 1.0), 78.844);
        goto LABEL_82;
      }

      if (!GetConfig())
      {
        v83 = 0.0;
        goto LABEL_80;
      }

      v796 = GetConfig();
      v83 = *HDRConfig::GetConfigEntryValue(v796, 0x7Au, 0);
      v84 = *(a1 + 8);
      *(a3 + 2) = 3;
      if (v83 >= 0.0)
      {
        goto LABEL_81;
      }

      v797 = powf(v83 * -0.0001, 0.1593);
      v86 = 0.0000014619 - powf(((v797 * 18.852) + 0.83594) / ((v797 * 18.688) + 1.0), 78.844);
LABEL_82:
      v87 = v80 / v86;
      v88 = 1.0;
      v89 = v84 * (((((fmaxf(fminf(v87, 1.0), 0.0) * 0.2) + 0.8) + -1.0) * ((((1.0 - (v80 / v79)) + -0.1) / 0.4) + 0.0)) + 1.0);
      if (v84 >= v79)
      {
        v90 = v79;
      }

      else
      {
        v90 = v84;
      }

      if (v78 >= v90)
      {
        v90 = v78;
      }

      if (v89 >= v79)
      {
        v89 = v79;
      }

      if (v78 >= v89)
      {
        v89 = v78;
      }

      *(a3 + 4) = v78;
      *(a3 + 8) = v90;
      *(a3 + 12) = v79;
      *(a3 + 20) = v78;
      *(a3 + 24) = v89;
      *(a3 + 28) = v79;
      v91 = 1.0;
      if (v90 != v78)
      {
        v91 = (v89 - v78) / (v90 - v78);
      }

      if (v79 != v90)
      {
        v88 = (v79 - v89) / (v79 - v90);
      }

      v92 = ((v91 + -1.0) * 0.5) + 1.0;
      v35 = ((v91 * v91) + -1.0) + 1.0;
      v36 = ((((1.0 / v35) * (v88 * v88)) + -1.0) * 0.0) + 1.0;
LABEL_256:
      *(a3 + 36) = v92;
LABEL_351:
      *(a3 + 40) = v35;
      *(a3 + 44) = v36;
      return;
    case 0x11:
      v194 = *(a1 + 58);
      v195 = *(a1 + 59);
      v196 = *(a1 + 61);
      v197 = *(a1 + 66);
      v198 = *(a1 + 68);
      v199 = *(a1 + 69);
      v200 = *(a1 + 287);
      v201 = *(a1 + 286);
      *(a3 + 2) = 3;
      v202 = v194 / v195;
      v203 = (v11 - v7) / v7;
      if (v203 >= 0.0)
      {
        v197 = ((v194 / v195) * -0.4) + 0.6;
      }

      v204 = v203 * v197;
      v205 = 1.0;
      v206 = v204 + 1.0;
      v207 = fmax(fmin(1.0 - ((v8 - v196) / (v195 - v194)), 1.0), 0.0);
      if (v201 == 1)
      {
        v208 = v207;
      }

      else
      {
        v208 = 1.0;
      }

      if (v196 >= v8)
      {
        v209 = v8;
      }

      else
      {
        v209 = v196;
      }

      if (v6 >= v209)
      {
        v209 = v6;
      }

      v210 = (((v8 - v196) / (v8 - v6)) * v199) + (1.0 - ((v8 - v196) / (v8 - v6))) * v198;
      v211 = v209 - v6;
      v212 = v6 + (((v6 + ((v209 - v6) * v210)) - v6) * v206);
      if (v212 >= v8)
      {
        v212 = v8;
      }

      if (v6 >= v212)
      {
        v212 = v6;
      }

      v213 = v6 + (v211 * 0.5);
      if (v213 >= v8)
      {
        v213 = v8;
      }

      if (v6 >= v213)
      {
        v213 = v6;
      }

      v214 = v6 + (v211 * 2.0);
      if (v214 >= v8)
      {
        v214 = v8;
      }

      if (v6 >= v214)
      {
        v214 = v6;
      }

      v215 = v8 + ((v209 - v8) * 2.0);
      if (v215 >= v8)
      {
        v215 = v8;
      }

      if (v6 >= v215)
      {
        v215 = v6;
      }

      v216 = v8 + ((v209 - v8) * 0.5);
      if (v216 >= v8)
      {
        v216 = v8;
      }

      if (v6 >= v216)
      {
        v216 = v6;
      }

      if (v213 < v215)
      {
        v213 = v215;
      }

      if (v214 < v216)
      {
        v216 = v214;
      }

      if (v212 >= v216)
      {
        v212 = v216;
      }

      if (v213 >= v212)
      {
        v217 = v213;
      }

      else
      {
        v217 = v212;
      }

      v218 = (v8 - v209) + v217;
      if (v218 >= v8)
      {
        v218 = v8;
      }

      *(a3 + 4) = v6;
      *(a3 + 8) = v209;
      *(a3 + 12) = v8;
      *(a3 + 20) = v6;
      *(a3 + 24) = v217;
      v219 = (v8 * v208) + ((1.0 - v208) * v218);
      *(a3 + 28) = v219;
      v220 = 1.0;
      if (v209 != v6)
      {
        v220 = (v217 - v6) / v211;
      }

      if (v8 != v209)
      {
        v205 = (v219 - v217) / (v8 - v209);
      }

      v35 = 1.0;
      if (v200)
      {
        v35 = (v202 * v205) + (1.0 - v202) * v220;
      }

      v92 = (v220 * v220) * (1.0 / v35);
      v36 = (v205 * v205) * (1.0 / v35);
      goto LABEL_256;
    case 0x12:
      v37 = *(a1 + 58);
      v38 = *(a1 + 59);
      v39 = *(a1 + 61);
      v40 = *(a1 + 68);
      v41 = *(a1 + 69);
      v42 = *(a1 + 287);
      v43 = *(a1 + 286);
      *(a3 + 2) = 3;
      v44 = v37 / v38;
      v45 = fminf((v11 - v7) / v7, 0.4);
      v46 = ((v37 / v38) * -0.45) + 0.5;
      if (v46 <= 0.5)
      {
        v47 = ((v37 / v38) * -0.45) + 0.5;
      }

      else
      {
        v47 = 0.5;
      }

      if (v46 >= 0.1)
      {
        v48 = v47;
      }

      else
      {
        v48 = 0.1;
      }

      v49 = (v44 * -0.58) + 0.52;
      v50 = 0.3;
      if (v49 <= 0.3)
      {
        v50 = (v44 * -0.58) + 0.52;
      }

      if (v49 >= 0.1)
      {
        v51 = v50;
      }

      else
      {
        v51 = 0.1;
      }

      if (v45 < 0.0)
      {
        v48 = v51;
      }

      v52 = 1.0;
      v53 = (v45 * v48) + 1.0;
      v54 = (v8 - v39) / (v8 - v6);
      v55 = fmax(fmin(1.0 - ((v8 - v39) / (v38 - v37)), 1.0), 0.0);
      if (v43 != 1)
      {
        v55 = 1.0;
      }

      if (v39 >= v8)
      {
        v39 = v8;
      }

      if (v6 >= v39)
      {
        v56 = v6;
      }

      else
      {
        v56 = v39;
      }

      v57 = (v54 * v41) + (1.0 - v54) * v40;
      v58 = v56 - v6;
      v59 = v6 + (((v6 + ((v56 - v6) * v57)) - v6) * v53);
      if (v59 >= v8)
      {
        v59 = v8;
      }

      if (v6 >= v59)
      {
        v59 = v6;
      }

      v60 = v6 + (v58 * 0.5);
      if (v60 >= v8)
      {
        v60 = v8;
      }

      if (v6 >= v60)
      {
        v60 = v6;
      }

      v61 = v6 + (v58 * 2.0);
      if (v61 >= v8)
      {
        v61 = v8;
      }

      if (v6 >= v61)
      {
        v61 = v6;
      }

      v62 = v8 + ((v56 - v8) * 2.0);
      if (v62 >= v8)
      {
        v62 = v8;
      }

      if (v6 >= v62)
      {
        v62 = v6;
      }

      v63 = v8 + ((v56 - v8) * 0.5);
      if (v63 >= v8)
      {
        v63 = v8;
      }

      if (v6 >= v63)
      {
        v63 = v6;
      }

      if (v60 < v62)
      {
        v60 = v62;
      }

      if (v61 < v63)
      {
        v63 = v61;
      }

      if (v59 < v63)
      {
        v63 = v59;
      }

      if (v60 >= v63)
      {
        v64 = v60;
      }

      else
      {
        v64 = v63;
      }

      v65 = v8 - v56;
      v66 = (v8 - v56) + v64;
      if (v66 >= v8)
      {
        v66 = v8;
      }

      v67 = (v8 * v55) + ((1.0 - v55) * v66);
      if (*(a2 + 17) == 1)
      {
        v877 = v6;
        v885 = v8;
        v68 = v11;
        if (GetConfig())
        {
          v69 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v69, 0xE9u, 0) == 1)
          {
            v905 = v65;
            v894 = 1.0 / *(a1 + 1);
            v70 = -(v68 + -0.0000014619);
            if (v68 >= 0.00000073096)
            {
              v70 = v68;
            }

            v71 = flt_2508CD850[v68 < 0.00000073096];
            v72 = powf(v70, 0.012683);
            v73 = fmax(((v72 + -0.83594) / ((v72 * -18.688) + 18.852)), 0.0);
            v74 = v71 * powf(v73, 6.2774);
            v75 = v74 * powf(v894, *(a2 + 20));
            if (v75 >= 0.0)
            {
              v732 = powf(v75 * 0.0001, 0.1593);
              v77 = powf(((v732 * 18.852) + 0.83594) / ((v732 * 18.688) + 1.0), 78.844);
            }

            else
            {
              v76 = powf(v75 * -0.0001, 0.1593);
              v77 = 0.0000014619 - powf(((v76 * 18.852) + 0.83594) / ((v76 * 18.688) + 1.0), 78.844);
            }

            v65 = v905;
            if (v67 >= v77)
            {
              v67 = v77;
            }
          }
        }

        v6 = v877;
        v8 = v885;
      }

      *(a3 + 4) = v6;
      *(a3 + 8) = v56;
      *(a3 + 12) = v8;
      *(a3 + 20) = v6;
      *(a3 + 24) = v64;
      *(a3 + 28) = v67;
      if (v56 != v6)
      {
        v52 = (v64 - v6) / v58;
      }

      v126 = 1.0;
      v496 = 1.0;
      if (v8 != v56)
      {
        v496 = (v67 - v64) / v65;
      }

      if (v42)
      {
        v126 = ((v44 * v496) * 0.82) + (1.0 - v44) * v52;
      }

      *(a3 + 36) = v52;
      goto LABEL_990;
    case 0x13:
      v254 = *(a1 + 58);
      v255 = *(a1 + 59);
      v256 = *(a1 + 61);
      v257 = *(a1 + 66);
      v258 = *(a1 + 67);
      v259 = *(a1 + 68);
      v260 = *(a1 + 69);
      v261 = *(a1 + 285);
      v262 = *(a1 + 286);
      v263 = *(a1 + 287);
      *(a3 + 2) = 3;
      v264 = v254 / v255;
      v265 = (v11 - v7) / v7;
      if (v258 <= 0.0)
      {
        v258 = fmax(fmin(v264 * -0.45 + 0.5615, 0.6), 0.2);
      }

      if (v265 >= 0.0)
      {
        v257 = v258;
      }

      v266 = v265 * v257;
      v267 = 1.0;
      v268 = v266 + 1.0;
      v269 = v8 - v256;
      v270 = 1.0;
      if (v261)
      {
        v270 = v269 / (v8 - v6);
      }

      v271 = fmax(fmin(1.0 - (v269 / (v255 - v254)), 1.0), 0.0);
      if (v262)
      {
        v272 = v271;
      }

      else
      {
        v272 = 1.0;
      }

      if (v256 >= v8)
      {
        v256 = v8;
      }

      if (v6 >= v256)
      {
        v256 = v6;
      }

      v273 = (v260 * v270) + (1.0 - v270) * v259;
      v274 = v256 - v6;
      v275 = v6 + (((v6 + ((v256 - v6) * v273)) - v6) * v268);
      if (v275 >= v8)
      {
        v275 = v8;
      }

      if (v6 >= v275)
      {
        v275 = v6;
      }

      v276 = v6 + (v274 * 0.5);
      if (v276 >= v8)
      {
        v276 = v8;
      }

      if (v6 >= v276)
      {
        v276 = v6;
      }

      v277 = v6 + (v274 * 2.0);
      if (v277 >= v8)
      {
        v277 = v8;
      }

      if (v6 >= v277)
      {
        v277 = v6;
      }

      v278 = v8 + ((v256 - v8) * 2.0);
      if (v278 >= v8)
      {
        v278 = v8;
      }

      if (v6 >= v278)
      {
        v278 = v6;
      }

      v279 = v8 + ((v256 - v8) * 0.5);
      if (v279 >= v8)
      {
        v279 = v8;
      }

      if (v6 >= v279)
      {
        v279 = v6;
      }

      if (v276 < v278)
      {
        v276 = v278;
      }

      if (v277 < v279)
      {
        v279 = v277;
      }

      if (v275 >= v279)
      {
        v275 = v279;
      }

      if (v276 >= v275)
      {
        v275 = v276;
      }

      v280 = v8 - v256;
      v281 = (v8 - v256) + v275;
      if (v281 >= v8)
      {
        v281 = v8;
      }

      *(a3 + 4) = v6;
      *(a3 + 8) = v256;
      *(a3 + 12) = v8;
      *(a3 + 20) = v6;
      *(a3 + 24) = v275;
      v282 = (v8 * v272) + ((1.0 - v272) * v281);
      *(a3 + 28) = v282;
      if (v256 != v6)
      {
        v267 = (v275 - v6) / v274;
      }

      v35 = 1.0;
      _ZF = v8 == v256;
      v284 = 1.0;
      if (!_ZF)
      {
        v284 = (v282 - v275) / v280;
      }

      if (v263)
      {
        v35 = (v264 * v284) + (1.0 - v264) * v267;
      }

      v36 = (v284 * v284) * (1.0 / v35);
      *(a3 + 36) = (v267 * v267) * (1.0 / v35);
      goto LABEL_351;
    case 0x14:
      v890 = v8;
      v838 = *(a1 + 73);
      v842 = a1[72];
      v847 = *(a1 + 74);
      v852 = *(a1 + 75);
      v867 = *(a1 + 80);
      v873 = *(a1 + 79);
      v404 = a1[81];
      *(a3 + 2) = 3;
      v833 = *(a1 + 61);
      v857 = *(a1 + 62);
      v862 = *&v404;
      v405 = -(v9 + -0.0000014619);
      v910 = v9;
      if (v9 < 0.00000073096)
      {
        v406 = -10000.0;
      }

      else
      {
        v405 = v9;
        v406 = 10000.0;
      }

      v900 = v406;
      v407 = v11;
      v408 = powf(v405, 0.012683);
      v409 = fmax(((v408 + -0.83594) / ((v408 * -18.688) + 18.852)), 0.0);
      v830 = v900 * powf(v409, 6.2774);
      v410 = -(v407 + -0.0000014619);
      if (v407 < 0.00000073096)
      {
        v411 = -10000.0;
      }

      else
      {
        v410 = v407;
        v411 = 10000.0;
      }

      v823 = v411;
      v412 = powf(v410, 0.012683);
      v413 = fmax(((v412 + -0.83594) / ((v412 * -18.688) + 18.852)), 0.0);
      v414 = v823 * powf(v413, 6.2774);
      v415 = -(v833 + -0.0000014619);
      if (v833 < 0.00000073096)
      {
        v416 = -10000.0;
      }

      else
      {
        v415 = v833;
        v416 = 10000.0;
      }

      v417 = v414 / v830;
      v418 = powf(v415, 0.012683);
      v419 = fmax(((v418 + -0.83594) / ((v418 * -18.688) + 18.852)), 0.0);
      v420 = v417 * (v416 * powf(v419, 6.2774));
      if (v420 >= 0.0)
      {
        v520 = powf(v420 * 0.0001, 0.1593);
        v422 = powf(((v520 * 18.852) + 0.83594) / ((v520 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v421 = powf(v420 * -0.0001, 0.1593);
        v422 = 0.0000014619 - powf(((v421 * 18.852) + 0.83594) / ((v421 * 18.688) + 1.0), 78.844);
      }

      v521 = v422 - v833;
      v522 = 1.0;
      v523 = *&v842;
      if (v417 >= 1.0)
      {
        v523 = v838;
      }

      v524 = v833 + (v521 * v523);
      v525 = v847 * v833;
      v526 = v847 * v524;
      v527 = (v407 / v910) * v857;
      if (v527 >= v890)
      {
        v527 = v890;
      }

      v528 = v407 + (v857 - v910);
      if (v528 >= v890)
      {
        v528 = v890;
      }

      v529 = v527 + (v852 * (v528 - v527));
      *(a3 + 4) = 0;
      *(a3 + 8) = v525;
      *(a3 + 12) = v857;
      *(a3 + 20) = 0;
      *(a3 + 24) = v526;
      *(a3 + 28) = v529;
      if (v525 != 0.0)
      {
        v522 = v526 / v525;
      }

      v530 = ((v529 - v526) / (v857 - v525));
      if (v857 == v525)
      {
        v530 = 1.0;
      }

      v531 = v522;
      v323 = v531 + (1.0 - v531) * v862;
      if (v867 <= v323)
      {
        v323 = v867;
      }

      if (v873 >= v323)
      {
        v323 = v873;
      }

      v532 = 1.0 / v323;
      v322 = v531 * v531 * v532;
      v324 = v532 * (v530 * v530);
LABEL_585:
      *(a3 + 36) = v322;
LABEL_941:
      *(a3 + 40) = v323;
      *(a3 + 44) = v324;
      return;
    case 0x15:
      v882 = v6;
      v891 = v8;
      v811 = *(a1 + 73);
      v813 = a1[72];
      v815 = *(a1 + 74);
      v817 = *(a1 + 75);
      v828 = *(a1 + 78);
      v831 = *(a1 + 77);
      v826 = *(a1 + 79);
      v819 = *(a1 + 81);
      v821 = *(a1 + 80);
      v848 = *(a1 + 82);
      v839 = *(a1 + 76);
      v843 = *(a1 + 83);
      v834 = *(a1 + 84);
      v858 = *(a1 + 86);
      v863 = *(a1 + 85);
      v853 = *(a1 + 87);
      v807 = *(a1 + 88);
      v808 = *(a1 + 89);
      *(a3 + 2) = 4;
      v458 = -(v7 + -0.0000014619);
      v875 = v7;
      if (v7 >= 0.00000073096)
      {
        v458 = v7;
      }

      v459 = 10000.0;
      if (v7 < 0.00000073096)
      {
        v459 = -10000.0;
      }

      v902 = v459;
      v806 = *(a1 + 61);
      v824 = *(a1 + 62);
      v460 = v11;
      v912 = v9;
      v461 = powf(v458, 0.012683);
      v462 = fmax(((v461 + -0.83594) / ((v461 * -18.688) + 18.852)), 0.0);
      v463 = v902 * powf(v462, 6.2774);
      v464 = -(v460 + -0.0000014619);
      if (v460 < 0.00000073096)
      {
        v465 = -10000.0;
      }

      else
      {
        v464 = v460;
        v465 = 10000.0;
      }

      v804 = v465;
      v805 = v463;
      v466 = powf(v464, 0.012683);
      v467 = fmax(((v466 + -0.83594) / ((v466 * -18.688) + 18.852)), 0.0);
      v468 = (v804 * powf(v467, 6.2774)) / v805;
      v469 = v912 + ((v806 - v912) * v807);
      v470 = -(v469 + -0.0000014619);
      if (v469 < 0.00000073096)
      {
        v471 = -10000.0;
      }

      else
      {
        v470 = v912 + ((v806 - v912) * v807);
        v471 = 10000.0;
      }

      v472 = v468;
      v473 = powf(v470, 0.012683);
      v474 = fmax(((v473 + -0.83594) / ((v473 * -18.688) + 18.852)), 0.0);
      v475 = v472 * (v471 * powf(v474, 6.2774));
      if (v475 >= 0.0)
      {
        v533 = powf(v475 * 0.0001, 0.1593);
        v477 = powf(((v533 * 18.852) + 0.83594) / ((v533 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v476 = powf(v475 * -0.0001, 0.1593);
        v477 = 0.0000014619 - powf(((v476 * 18.852) + 0.83594) / ((v476 * 18.688) + 1.0), 78.844);
      }

      v534 = v477 - v469;
      v535 = *&v813;
      if (v472 >= 1.0)
      {
        v535 = v811;
      }

      v536 = v815 * v469;
      v537 = v815 * (v469 + (v534 * v535));
      v538 = v824 + ((v891 - v824) * v808);
      v539 = (v460 / v875) * v824;
      if (v539 >= v538)
      {
        v539 = v824 + ((v891 - v824) * v808);
      }

      if ((v460 + (v824 - v875)) < v538)
      {
        v538 = v460 + (v824 - v875);
      }

      v540 = v539 + (v817 * (v538 - v539));
      *(a3 + 4) = v882;
      *(a3 + 8) = v536;
      *(a3 + 12) = v824;
      *(a3 + 16) = v891;
      *(a3 + 20) = v882;
      *(a3 + 24) = v537;
      *(a3 + 28) = v540;
      *(a3 + 32) = v891;
      v541 = 1.0;
      v542 = 1.0;
      if (v536 != v882)
      {
        v542 = ((v537 - v882) / (v536 - v882));
      }

      if (v824 != v536)
      {
        v541 = ((v540 - v537) / (v824 - v536));
      }

      v543 = v542 + (1.0 - v542) * v819;
      if (v821 <= v543)
      {
        v543 = v821;
      }

      if (v826 >= v543)
      {
        v543 = v826;
      }

      v544 = 1.0 / v543;
      v545 = v542 * v542 * v544;
      v546 = v545 + (1.0 - v545) * v828;
      if (v831 <= v546)
      {
        v546 = v831;
      }

      if (v839 >= v546)
      {
        v546 = v839;
      }

      v547 = v544 * (v541 * v541);
      v548 = v547 + (1.0 - v547) * v834;
      if (v843 <= v548)
      {
        v548 = v843;
      }

      if (v848 >= v548)
      {
        v548 = v848;
      }

      v549 = v548;
      if (v891 != v824)
      {
        v549 = ((v891 - v540) / (v891 - v824)) * ((v891 - v540) / (v891 - v824)) * (1.0 / v548);
      }

      v550 = v549 + (1.0 - v549) * v853;
      if (v858 <= v550)
      {
        v550 = v858;
      }

      *(a3 + 36) = v546;
      *(a3 + 40) = v543;
      if (v863 >= v550)
      {
        v550 = v863;
      }

      *(a3 + 44) = v548;
      *(a3 + 48) = v550;
      return;
    case 0x16:
      v888 = v8;
      v816 = *(a1 + 73);
      v818 = a1[72];
      v829 = *(a1 + 78);
      v832 = *(a1 + 77);
      v825 = *(a1 + 80);
      v827 = *(a1 + 79);
      v820 = *(a1 + 74);
      v822 = *(a1 + 81);
      v851 = *(a1 + 82);
      v841 = *(a1 + 76);
      v846 = *(a1 + 83);
      v837 = *(a1 + 84);
      v861 = *(a1 + 86);
      v866 = *(a1 + 85);
      v856 = *(a1 + 87);
      v285 = a1[88];
      *(a3 + 2) = 4;
      v812 = *(a1 + 61);
      v814 = *&v285;
      v286 = -(v7 + -0.0000014619);
      if (v7 < 0.00000073096)
      {
        v287 = -10000.0;
      }

      else
      {
        v286 = v7;
        v287 = 10000.0;
      }

      v288 = v11;
      v289 = v6;
      v908 = v9;
      v290 = powf(v286, 0.012683);
      v291 = fmax(((v290 + -0.83594) / ((v290 * -18.688) + 18.852)), 0.0);
      v809 = v287 * powf(v291, 6.2774);
      v292 = -(v288 + -0.0000014619);
      v293 = v288 < 0.00000073096;
      if (v288 >= 0.00000073096)
      {
        v292 = v288;
      }

      v294 = -10000.0;
      if (v293)
      {
        v295 = -10000.0;
      }

      else
      {
        v295 = 10000.0;
      }

      v881 = v295;
      v296 = powf(v292, 0.012683);
      v297 = fmax(((v296 + -0.83594) / ((v296 * -18.688) + 18.852)), 0.0);
      v298 = v881 * powf(v297, 6.2774);
      v299 = -(v289 + -0.0000014619);
      if (v289 < 0.00000073096)
      {
        v300 = -10000.0;
      }

      else
      {
        v299 = v289;
        v300 = 10000.0;
      }

      v810 = v298 / v809;
      v301 = powf(v299, 0.012683);
      v302 = fmax(((v301 + -0.83594) / ((v301 * -18.688) + 18.852)), 0.0);
      v303 = v300 * powf(v302, 6.2774);
      v304 = v908 + ((v812 - v908) * v814);
      v305 = -(v304 + -0.0000014619);
      if (v304 >= 0.00000073096)
      {
        v305 = v908 + ((v812 - v908) * v814);
        v294 = 10000.0;
      }

      v306 = powf(v305, 0.012683);
      v307 = fmax(((v306 + -0.83594) / ((v306 * -18.688) + 18.852)), 0.0);
      v308 = v303 + (((v294 * powf(v307, 6.2774)) - v303) * v810);
      if (v308 >= 0.0)
      {
        v501 = powf(v308 * 0.0001, 0.1593);
        v310 = powf(((v501 * 18.852) + 0.83594) / ((v501 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v309 = powf(v308 * -0.0001, 0.1593);
        v310 = 0.0000014619 - powf(((v309 * 18.852) + 0.83594) / ((v309 * 18.688) + 1.0), 78.844);
      }

      v502 = v310 - v304;
      v503 = *&v818;
      if (v810 >= 1.0)
      {
        v503 = v816;
      }

      v504 = v304 + (v502 * v503);
      v505 = v289 + ((v304 - v289) * v820);
      v506 = v289 + ((v504 - v289) * v820);
      *(a3 + 4) = v289;
      *(a3 + 8) = v505;
      *(a3 + 12) = v888;
      *(a3 + 16) = v888;
      *(a3 + 20) = v289;
      *(a3 + 24) = v506;
      *(a3 + 28) = v888;
      *(a3 + 32) = v888;
      v507 = 1.0;
      v508 = 1.0;
      if (v505 != v289)
      {
        v508 = ((v506 - v289) / (v505 - v289));
      }

      if (v888 != v505)
      {
        v507 = ((v888 - v506) / (v888 - v505));
      }

      v509 = v508 + (1.0 - v508) * v822;
      if (v825 <= v509)
      {
        v509 = v825;
      }

      if (v827 >= v509)
      {
        v509 = v827;
      }

      v510 = 1.0 / v509;
      v511 = v508 * v508 * v510;
      v512 = v511 + (1.0 - v511) * v829;
      if (v832 <= v512)
      {
        v512 = v832;
      }

      if (v841 >= v512)
      {
        v512 = v841;
      }

      v513 = v510 * (v507 * v507);
      v514 = v513 + (1.0 - v513) * v837;
      if (v846 <= v514)
      {
        v514 = v846;
      }

      if (v851 >= v514)
      {
        v514 = v851;
      }

      v515 = v514 + (1.0 - v514) * v856;
      if (v861 <= v515)
      {
        v515 = v861;
      }

      *(a3 + 36) = v512;
      *(a3 + 40) = v509;
      if (v866 >= v515)
      {
        v516 = v866;
      }

      else
      {
        v516 = v515;
      }

      *(a3 + 44) = v514;
      *(a3 + 48) = v516;
      return;
    case 0x17:
      v325 = v7;
      v326 = v9;
      v327 = v11;
      v328 = *(a1 + 72);
      v329 = *(a1 + 73);
      v330 = *(a1 + 74);
      v331 = GetConfig();
      v909 = 0;
      v332 = 0;
      if (v331)
      {
        v333 = GetConfig();
        v332 = *HDRConfig::GetConfigEntryValue(v333, 0xDBu, 0);
      }

      v899 = v332;
      if (GetConfig())
      {
        v334 = GetConfig();
        v909 = *HDRConfig::GetConfigEntryValue(v334, 0xDCu, 0);
      }

      v335 = GetConfig();
      v336 = 0;
      if (v335)
      {
        v337 = GetConfig();
        v336 = *HDRConfig::GetConfigEntryValue(v337, 0xDDu, 0);
      }

      v889 = v336;
      v338 = GetConfig();
      v339 = 0;
      if (v338)
      {
        v340 = GetConfig();
        v339 = *HDRConfig::GetConfigEntryValue(v340, 0xDEu, 0);
      }

      v342 = *(a1 + 3);
      v341 = *(a1 + 4);
      if (v342 >= v341)
      {
        v342 = *(a1 + 4);
      }

      v343 = fmaxf(v342, 0.0);
      if (v326 >= v341)
      {
        v344 = *(a1 + 4);
      }

      else
      {
        v344 = v326;
      }

      v345 = fmaxf(v344, 0.0);
      v346 = fmaxf((v327 - v343) / (v326 - v343), 0.0);
      v347 = 1.0;
      if (v346 >= 1.0)
      {
        v348 = v329;
      }

      else
      {
        v348 = v328;
      }

      if (v346 >= 1.0)
      {
        v349 = v330;
      }

      else
      {
        v349 = 1.0;
      }

      v350 = v345 + ((v327 - v345) * v348);
      v351 = v345 * v349;
      v352 = v349 * v350;
      if (v351 >= v341)
      {
        v351 = *(a1 + 4);
      }

      if (v352 >= v341)
      {
        v353 = *(a1 + 4);
      }

      else
      {
        v353 = v352;
      }

      _NF = v346 < 1.0;
      v354 = vmla_f32(__PAIR64__(v889, v899), vdup_n_s32(0x3DCCCCCDu), vsub_f32(__PAIR64__(v339, v909), __PAIR64__(v889, v899)));
      v355 = vsqrt_f32(v354);
      *(a3 + 2) = 3;
      v356 = fmaxf(v351, 0.0);
      v357 = fmaxf(v353, 0.0);
      if (_NF)
      {
        v358 = *(a1 + 58) / v325;
        if (v358 < 1.0)
        {
          v358 = 1.0;
        }

        v359 = (*(a1 + 59) / v325);
        if (v359 < 1.0)
        {
          v359 = 1.0;
        }

        v347 = v359 / v358;
      }

      v360 = vceq_f32(v354, 0x7F0000007FLL);
      v361 = vabs_f32(v355);
      v362 = vneg_f32(0x7F0000007FLL);
      v363 = v341 - v356;
      v364 = v357 + ((v341 - v356) * v347);
      if (v364 >= v341)
      {
        v364 = v341;
      }

      if (v364 >= v357)
      {
        v365 = v364;
      }

      else
      {
        v365 = v357;
      }

      *(a3 + 4) = v343;
      *(a3 + 8) = v356;
      *(a3 + 12) = v341;
      *(a3 + 20) = v343;
      *(a3 + 24) = v357;
      *(a3 + 28) = v365;
      v366.f64[0] = 1.0;
      if (v343 < v356)
      {
        v366.f64[0] = ((v357 - v343) / (v356 - v343));
      }

      v367 = vbsl_s8(v360, v362, v361);
      _NF = v356 < v341;
      v368 = 1.0;
      if (_NF)
      {
        v368 = (v365 - v357) / v363;
      }

      v369.f32[0] = v366.f64[0] * v366.f64[0];
      v370 = v368 * v368;
      v369.f32[1] = v368;
      v371 = vcvtq_f64_f32(vmul_f32(v367, v369));
      __asm { FMOV            V3.2D, #1.0 }

      v366.f64[1] = (v327 / v326);
      *&v371.f64[0] = vcvt_f32_f64(vmlaq_f64(v371, v366, vsubq_f64(_Q3, vcvtq_f64_f32(v367))));
      v375 = v370 * (1.0 / *(v371.f64 + 1));
      *(a3 + 36) = v371.f64[0];
      goto LABEL_971;
    case 0x18:
      v874 = v7;
      v911 = v9;
      v901 = v11;
      v448 = 0.0;
      v449 = 0.0;
      if (GetConfig())
      {
        v450 = GetConfig();
        v449 = *HDRConfig::GetConfigEntryValue(v450, 0xE0u, 0);
      }

      if (GetConfig())
      {
        v451 = GetConfig();
        v448 = *HDRConfig::GetConfigEntryValue(v451, 0xDBu, 0);
      }

      v452 = 0.0;
      v453 = 0.0;
      if (GetConfig())
      {
        v454 = GetConfig();
        v453 = *HDRConfig::GetConfigEntryValue(v454, 0xDCu, 0);
      }

      if (GetConfig())
      {
        v455 = GetConfig();
        v452 = *HDRConfig::GetConfigEntryValue(v455, 0xDDu, 0);
      }

      if (GetConfig())
      {
        v456 = GetConfig();
        v457 = *HDRConfig::GetConfigEntryValue(v456, 0xDEu, 0);
      }

      else
      {
        v457 = 0.0;
      }

      v583 = v452 + (v449 * (v457 - v452));
      v584 = fabsf(sqrtf(v583));
      _ZF = v583 == -INFINITY;
      v585 = INFINITY;
      if (!_ZF)
      {
        v585 = v584;
      }

      v859 = v585;
      if (GetConfig())
      {
        v586 = GetConfig();
        v587 = *HDRConfig::GetConfigEntryValue(v586, 0xE1u, 0);
      }

      else
      {
        v587 = 0.0;
      }

      *(a3 + 2) = 3;
      v840 = *(a1 + 58);
      v588 = *(a1 + 62);
      v589 = *(a1 + 3);
      v590 = *(a1 + 4);
      v892 = *(a1 + 9);
      v883 = v448;
      v865 = v453;
      v869 = v449;
      v849 = v587;
      v844 = *(a1 + 59);
      if ((IsVirtualized() & 1) == 0)
      {
        if (GetConfig())
        {
          v591 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v591, 0x102u, 0) == 1)
          {
            v874 = *(a1 + 6);
            v911 = *(a1 + 14);
          }
        }

        if (GetConfig() && (v592 = GetConfig(), (*HDRConfig::GetConfigEntryValue(v592, 0x103u, 0) & 1) != 0) || (v593 = *&v892, GetConfig()) && (v594 = GetConfig(), v593 = *&v892, *HDRConfig::GetConfigEntryValue(v594, 0x106u, 0) == 1))
        {
          v593 = *(a1 + 11);
        }

        if (!GetConfig())
        {
          goto LABEL_698;
        }

        v595 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v595, 0x106u, 0) != 1)
        {
          goto LABEL_698;
        }

        v596 = 0.0;
        v597 = 0.0;
        if (GetConfig())
        {
          v598 = GetConfig();
          v597 = *HDRConfig::GetConfigEntryValue(v598, 0x107u, 0);
        }

        if (GetConfig())
        {
          v599 = GetConfig();
          v596 = *HDRConfig::GetConfigEntryValue(v599, 0x108u, 0);
        }

        v600 = *(a1 + 90);
        if (v600 >= v597)
        {
          v601 = COERCE_DOUBLE(vmla_n_f32(vmul_n_f32(v892, 1.0 - ((v600 - v597) / (v596 - v597))), *&v593, (v600 - v597) / (v596 - v597)));
          if (v600 <= v596)
          {
            v602 = v601;
          }

          else
          {
            v602 = v593;
          }
        }

        else
        {
LABEL_698:
          v602 = v593;
        }

        *&v892 = v602;
      }

      v603 = -(v901 + -0.0000014619);
      if (v901 >= 0.00000073096)
      {
        v603 = v901;
      }

      v604 = powf(v603, 0.012683);
      v605 = fmax(((v604 + -0.83594) / ((v604 * -18.688) + 18.852)), 0.0);
      v835 = powf(v605, 6.2774);
      if (v588 < v590)
      {
        v588 = v590;
      }

      if (v589 >= v588)
      {
        v606 = v588;
      }

      else
      {
        v606 = v589;
      }

      v854 = v606;
      v607 = fmaxf(v911, 0.0);
      v608 = 1.0;
      if (v607 <= v588)
      {
        v609 = 1.0;
      }

      else
      {
        v609 = v588 / v607;
      }

      if (v607 <= v588)
      {
        v610 = v607;
      }

      else
      {
        v610 = v588;
      }

      if (GetConfig())
      {
        v611 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v611, 0xE7u, 0) == 1)
        {
          v612 = fminf(v840 / 0.14995, 1.0);
          v608 = v612 + (1.0 - v612) * 0.5;
        }
      }

      v613 = v901 / v911;
      if (v892.f32[1] >= 0.0)
      {
        v616 = powf(v892.f32[1] * 0.0001, 0.1593);
        v615 = powf(((v616 * 18.852) + 0.83594) / ((v616 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v614 = powf(v892.f32[1] * -0.0001, 0.1593);
        v615 = 0.0000014619 - powf(((v614 * 18.852) + 0.83594) / ((v614 * 18.688) + 1.0), 78.844);
      }

      v617 = fmaxf(v613, 0.0);
      v618 = v892.f32[0];
      if (v892.f32[0] >= v615)
      {
        v618 = v615;
      }

      if (v590 != v911)
      {
        v618 = v911 + (((v901 - v911) * (v618 - v911)) / (v590 - v911));
      }

      v619 = 1.0;
      if (v901 >= v618)
      {
        v620 = v618;
      }

      else
      {
        v620 = v901;
      }

      if (v617 < 1.0)
      {
        v621 = ((v901 * v609) * v608) + (1.0 - v608) * v610;
        v622 = v621;
      }

      else
      {
        v622 = v620;
      }

      if (v610 >= v588)
      {
        v623 = v588;
      }

      else
      {
        v623 = v610;
      }

      v624 = fmaxf(v623, 0.0);
      if (v622 >= v590)
      {
        v622 = v590;
      }

      v625 = fmaxf(v622, 0.0);
      if (v588 == v624)
      {
        v626 = v588 - v624;
      }

      else
      {
        v626 = v588 - v624;
        v627 = ((v844 - v874) / (v588 - v624));
        if (v627 < 1.0)
        {
          v627 = 1.0;
        }

        if (v627 >= v849)
        {
          v627 = v849;
        }

        v619 = v627;
      }

      v628 = fmaxf(v854, 0.0);
      v629 = v625 + (v626 * v619);
      if (v629 >= v590)
      {
        v629 = v590;
      }

      if (v629 >= v625)
      {
        v630 = v629;
      }

      else
      {
        v630 = v625;
      }

      if (*(a2 + 17) == 1)
      {
        if (GetConfig())
        {
          v631 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v631, 0xE9u, 0) == 1)
          {
            v914 = flt_2508CD850[v901 < 0.00000073096] * v835;
            v632 = v914 * powf(1.0 / *(a1 + 1), *(a2 + 20));
            if (v632 >= 0.0)
            {
              v735 = powf(v632 * 0.0001, 0.1593);
              v634 = powf(((v735 * 18.852) + 0.83594) / ((v735 * 18.688) + 1.0), 78.844);
            }

            else
            {
              v633 = powf(v632 * -0.0001, 0.1593);
              v634 = 0.0000014619 - powf(((v633 * 18.852) + 0.83594) / ((v633 * 18.688) + 1.0), 78.844);
            }

            if (v630 >= v634)
            {
              v630 = v634;
            }
          }
        }
      }

      *(a3 + 4) = v628;
      *(a3 + 8) = v624;
      *(a3 + 12) = v588;
      v736 = 1.0;
      *(a3 + 20) = v628;
      *(a3 + 24) = v625;
      *(a3 + 28) = v630;
      if (v628 < v624)
      {
        v736 = (v625 - v628) / (v624 - v628);
      }

      v737 = v736;
      if (v624 < v588)
      {
        v737 = (v630 - v625) / v626;
      }

      v738 = ((v883 + (v869 * (v865 - v883))) * (v736 * v736)) + (1.0 - (v883 + (v869 * (v865 - v883)))) * v736;
      v739 = (v859 * v737) + (1.0 - v859) * v613;
      v375 = v737 * v737 * (1.0 / v739);
      *(a3 + 36) = v738;
      *(a3 + 40) = v739;
LABEL_971:
      *(a3 + 44) = v375;
      return;
    case 0x19:
      v876 = v7;
      v913 = v9;
      v903 = v11;
      v478 = 0.0;
      v479 = 0.0;
      if (GetConfig())
      {
        v480 = GetConfig();
        v479 = *HDRConfig::GetConfigEntryValue(v480, 0xE0u, 0);
      }

      if (GetConfig())
      {
        v481 = GetConfig();
        v478 = *HDRConfig::GetConfigEntryValue(v481, 0xDBu, 0);
      }

      v482 = 0.0;
      v483 = 0.0;
      if (GetConfig())
      {
        v484 = GetConfig();
        v483 = *HDRConfig::GetConfigEntryValue(v484, 0xDCu, 0);
      }

      if (GetConfig())
      {
        v485 = GetConfig();
        v482 = *HDRConfig::GetConfigEntryValue(v485, 0xDDu, 0);
      }

      v486 = 0.0;
      v487 = 0.0;
      if (GetConfig())
      {
        v488 = GetConfig();
        v487 = *HDRConfig::GetConfigEntryValue(v488, 0xDEu, 0);
      }

      if (GetConfig())
      {
        v489 = GetConfig();
        v486 = *HDRConfig::GetConfigEntryValue(v489, 0xDFu, 0);
      }

      v490 = v482 + (v479 * (v487 - v482));
      v491 = fabsf(sqrtf(v490));
      if (v490 == -INFINITY)
      {
        v492 = INFINITY;
      }

      else
      {
        v492 = v491;
      }

      v864 = v483;
      v868 = v486;
      if (GetConfig())
      {
        v493 = GetConfig();
        v494 = *HDRConfig::GetConfigEntryValue(v493, 0xE1u, 0);
      }

      else
      {
        v494 = 0.0;
      }

      v855 = v494;
      *(a3 + 2) = 3;
      v845 = *(a1 + 58);
      v850 = *(a1 + 59);
      v635 = *(a1 + 62);
      v636 = *(a1 + 3);
      v637 = *(a1 + 4);
      v884 = v479;
      v860 = v492;
      if ((IsVirtualized() & 1) == 0)
      {
        if (GetConfig())
        {
          v638 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v638, 0x102u, 0) == 1)
          {
            v876 = *(a1 + 6);
            v913 = *(a1 + 14);
          }
        }

        if (!GetConfig() || (v639 = GetConfig(), (*HDRConfig::GetConfigEntryValue(v639, 0x103u, 0) & 1) == 0))
        {
          if (GetConfig())
          {
            v640 = GetConfig();
            HDRConfig::GetConfigEntryValue(v640, 0x106u, 0);
          }
        }

        if (GetConfig())
        {
          v641 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v641, 0x106u, 0) == 1)
          {
            if (GetConfig())
            {
              v642 = GetConfig();
              HDRConfig::GetConfigEntryValue(v642, 0x107u, 0);
            }

            if (GetConfig())
            {
              v643 = GetConfig();
              HDRConfig::GetConfigEntryValue(v643, 0x108u, 0);
            }
          }
        }
      }

      v644 = -(v903 + -0.0000014619);
      if (v903 >= 0.00000073096)
      {
        v644 = v903;
      }

      v645 = powf(v644, 0.012683);
      v646 = fmax(((v645 + -0.83594) / ((v645 * -18.688) + 18.852)), 0.0);
      v836 = powf(v646, 6.2774);
      if (v635 >= v637)
      {
        v647 = v635;
      }

      else
      {
        v647 = v637;
      }

      if (v913 >= v647)
      {
        v648 = v913;
      }

      else
      {
        v648 = v647;
      }

      v649 = *(a1 + 25) / *(a1 + 15);
      v650 = 1.0;
      v651 = 0.0;
      if (v649 != 1.0)
      {
        v651 = (((v637 / v903) + -1.0) / (v649 + -1.0));
      }

      v652 = fmax(fmin(v651, 1.0), 0.0);
      if (v636 >= v648)
      {
        v653 = v648;
      }

      else
      {
        v653 = v636;
      }

      v654 = fmaxf(v913, 0.0);
      if (v654 <= v648)
      {
        v655 = 1.0;
      }

      else
      {
        v655 = v648 / v654;
      }

      if (v654 <= v648)
      {
        v656 = v654;
      }

      else
      {
        v656 = v648;
      }

      if (GetConfig())
      {
        v657 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v657, 0xE7u, 0) == 1)
        {
          v658 = fminf(v845 / 0.14995, 1.0);
          v650 = v658 + (1.0 - v658) * 0.5;
        }
      }

      v659 = v903;
      v660 = v876 * ((v903 / v876) * ((*(a1 + 17) / *(a1 + 15)) + (((*(a1 + 19) / *(a1 + 15)) - (*(a1 + 17) / *(a1 + 15))) * v652)));
      if (v660 >= v637)
      {
        v660 = v637;
      }

      v661 = v913;
      if (v903 < v913)
      {
        v660 = (v650 * (v655 * v660)) + v656 * (1.0 - v650);
      }

      if (v656 >= v648)
      {
        v662 = v648;
      }

      else
      {
        v662 = v656;
      }

      v663 = fmaxf(v662, 0.0);
      if (v660 >= v637)
      {
        v660 = v637;
      }

      v664 = fmaxf(v660, 0.0);
      if (v648 == v663)
      {
        v665 = v648 - v663;
        v667 = 1.0;
      }

      else
      {
        v665 = v648 - v663;
        v666 = ((v850 - v876) / (v648 - v663));
        if (v666 < 1.0)
        {
          v666 = 1.0;
        }

        if (v666 >= v855)
        {
          v666 = v855;
        }

        v667 = v666;
      }

      v668 = fmaxf(v653, 0.0);
      v669 = v664 + (v665 * v667);
      if (v669 < v637)
      {
        v637 = v669;
      }

      if (*(a2 + 17) == 1)
      {
        if (GetConfig() && (v670 = GetConfig(), *HDRConfig::GetConfigEntryValue(v670, 0xE9u, 0) == 1))
        {
          v671 = flt_2508CD850[v903 < 0.00000073096] * v836;
          v672 = v671 * powf(1.0 / *(a1 + 1), *(a2 + 20));
          if (v672 >= 0.0)
          {
            v740 = powf(v672 * 0.0001, 0.1593);
            v674 = powf(((v740 * 18.852) + 0.83594) / ((v740 * 18.688) + 1.0), 78.844);
          }

          else
          {
            v673 = powf(v672 * -0.0001, 0.1593);
            v674 = 0.0000014619 - powf(((v673 * 18.852) + 0.83594) / ((v673 * 18.688) + 1.0), 78.844);
          }

          if (v637 >= v674)
          {
            v637 = v674;
          }

          v659 = v903;
          v661 = v913;
        }

        else
        {
          v659 = v903;
          v661 = v913;
        }
      }

      if (v637 >= v664)
      {
        v741 = v637;
      }

      else
      {
        v741 = v664;
      }

      *(a3 + 4) = v668;
      *(a3 + 8) = v663;
      *(a3 + 12) = v648;
      *(a3 + 20) = v668;
      *(a3 + 24) = v664;
      *(a3 + 28) = v741;
      v742 = 1.0;
      if (v668 < v663)
      {
        v742 = (v664 - v668) / (v663 - v668);
      }

      v743 = v742;
      if (v663 < v648)
      {
        v743 = (v741 - v664) / v665;
      }

      v128 = ((v478 + (v884 * (v864 - v478))) * (v742 * v742)) + (1.0 - (v478 + (v884 * (v864 - v478)))) * v742;
      v126 = (v860 * v743) + (1.0 - v860) * (v659 / v661);
      if (v868 <= v126)
      {
        v744 = v868;
      }

      else
      {
        v744 = (v860 * v743) + (1.0 - v860) * (v659 / v661);
      }

      if (v868 > 0.0)
      {
        v126 = v744;
      }

      v496 = v743 * v743 * (1.0 / v126);
LABEL_989:
      *(a3 + 36) = v128;
      goto LABEL_990;
    case 0x1A:
      *(a3 + 168) = 1;
      v183 = fminf(*(a1 + 91), 1000.0);
      if (v183 >= 100.0)
      {
        v184 = v183;
      }

      else
      {
        v184 = 100.0;
      }

      if (GetConfig())
      {
        v185 = GetConfig();
        if (*(v185 + 4009))
        {
          if ((v185[8016] & 0x80) != 0)
          {
            if (GetConfig())
            {
              v186 = GetConfig();
              v184 = *HDRConfig::GetConfigEntryValue(v186, 0xB6u, 0);
            }

            else
            {
              v184 = 0.0;
            }
          }
        }
      }

      v745 = 0.0;
      v746 = 0.0;
      if (GetConfig())
      {
        v747 = GetConfig();
        v746 = *HDRConfig::GetConfigEntryValue(v747, 0xABu, 0);
      }

      if (GetConfig())
      {
        v748 = GetConfig();
        v745 = *HDRConfig::GetConfigEntryValue(v748, 0xACu, 0);
      }

      v749 = 0.0;
      v750 = 0.0;
      if (GetConfig())
      {
        v751 = GetConfig();
        v750 = *HDRConfig::GetConfigEntryValue(v751, 0xAFu, 0);
      }

      if (GetConfig())
      {
        v752 = GetConfig();
        v749 = *HDRConfig::GetConfigEntryValue(v752, 0xAEu, 0);
      }

      v753 = 0.0;
      v754 = 0.0;
      if (GetConfig())
      {
        v755 = GetConfig();
        v754 = *HDRConfig::GetConfigEntryValue(v755, 0xA9u, 0);
      }

      if (GetConfig())
      {
        v756 = GetConfig();
        v753 = *HDRConfig::GetConfigEntryValue(v756, 0xAAu, 0);
      }

      v915 = v749;
      v757 = GetConfig();
      v758 = v754;
      if (v757)
      {
        v759 = GetConfig();
        v760 = HDRConfig::GetConfigEntryValue(v759, 0xB1u, 0);
        v758 = v754;
        if (*v760 == 1)
        {
          v758 = v745 * v753;
          if ((v745 * v753) < v184)
          {
            v758 = v184;
          }

          if (v754 < v758)
          {
            v758 = v754;
          }
        }
      }

      v761 = v758 / v753;
      v762 = v758 / v753;
      if (GetConfig())
      {
        v763 = GetConfig();
        v762 = v761;
        if (*(v763 + 3811))
        {
          v762 = v761;
          if ((v763[7620] & 0x80) != 0)
          {
            if (GetConfig())
            {
              v764 = GetConfig();
              v762 = *HDRConfig::GetConfigEntryValue(v764, 0xADu, 0);
            }

            else
            {
              v762 = 0.0;
            }
          }
        }
      }

      if (GetConfig())
      {
        v765 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v765, 0xB2u, 0) == 1)
        {
          v904 = v184;
          v766 = 0.0;
          v767 = 0.0;
          if (GetConfig())
          {
            v768 = GetConfig();
            v767 = *HDRConfig::GetConfigEntryValue(v768, 0xB3u, 0);
          }

          if (GetConfig())
          {
            v769 = GetConfig();
            v766 = *HDRConfig::GetConfigEntryValue(v769, 0xB4u, 0);
          }

          if (GetConfig())
          {
            v770 = GetConfig();
            v771 = *HDRConfig::GetConfigEntryValue(v770, 0xB5u, 0);
          }

          else
          {
            v771 = 0.0;
          }

          v772 = v904;
          if (v904 < v753)
          {
            v772 = v753;
          }

          if (v754 < v772)
          {
            v772 = v754;
          }

          v773 = powf(fminf((v772 - v753) / (v754 - v753), 1.0), v771);
          v746 = (v767 * v773) + (v766 * (1.0 - v773));
        }
      }

      *(a3 + 172) = v753;
      v774 = *(a1 + 13);
      v775 = v774 < 0.00000073096;
      if (v774 < 0.00000073096)
      {
        v774 = -(v774 + -0.0000014619);
      }

      v776 = flt_2508CD850[v775];
      v777 = powf(v774, 0.012683);
      v778 = fmax(((v777 + -0.83594) / ((v777 * -18.688) + 18.852)), 0.0);
      v779 = v776 * powf(v778, 6.2774);
      v780 = *(a1 + 90);
      if (v780 >= v761)
      {
        v780 = v761;
      }

      *(a3 + 176) = v779;
      *(a3 + 180) = v780;
      v781 = 1.0 - v746;
      v782 = 1.0 - v781 * fmin(((v761 + -1.0) / (v762 + -1.0)), 1.0);
      *&v781 = v781 / (v745 + -1.0);
      v783 = v782 + (*&v781 * (v780 + -1.0));
      v784 = 1.0;
      v785 = fminf(v783, 1.0);
      v786 = v780 - (((v915 / -100.0) + 1.0) * (v780 - (v750 * v785)));
      v787 = v786 / v785;
      v788 = (v786 / v785);
      v789 = (v750 + v761) + v788 * -2.0;
      v790 = v780 * 0.001 / 3.0;
      v791 = (v761 + v790) - v789;
      v792 = fabsf(v789);
      _NF = v792 < v790;
      if (v792 >= v790)
      {
        v794 = v761;
      }

      else
      {
        v794 = (v761 + v790) - v789;
      }

      if (_NF)
      {
        v789 = (v750 + v791) + ((v786 / v785) * -2.0);
      }

      *(a3 + 216) = v786;
      *(a3 + 220) = v780;
      *(a3 + 208) = v794;
      *(a3 + 212) = v750 * v785;
      *(a3 + 184) = v785;
      *(a3 + 188) = v789;
      v795 = v788 * v788 - (v750 * v794);
      *(a3 + 192) = v795;
      *(a3 + 196) = v750 - v787;
      *(a3 + 200) = v750;
      if ((v794 - v787) > 0.000000001)
      {
        v784 = (v780 - v786) / (v794 - v787);
      }

      *(a3 + 224) = v784;
      *(a3 + 228) = v786 - (v784 * v787);
      return;
    case 0x1B:
      v158 = v9;
      v159 = v11;
      v160 = GetConfig();
      v161 = 0.0;
      if (v160)
      {
        v162 = GetConfig();
        v161 = *HDRConfig::GetConfigEntryValue(v162, 0x101u, 0);
      }

      *(a3 + 2) = 4;
      v163 = *(a1 + 3);
      v164 = *(a1 + 4);
      v165 = *(a1 + 62);
      v166 = *(a1 + 63);
      if (v165 >= v164)
      {
        v167 = *(a1 + 62);
      }

      else
      {
        v167 = *(a1 + 4);
      }

      if (v165 >= v164)
      {
        v168 = *(a1 + 4);
      }

      else
      {
        v168 = *(a1 + 62);
      }

      if (v158 >= v167)
      {
        v169 = v158;
      }

      else
      {
        v169 = v167;
      }

      if (v163 >= v169)
      {
        v163 = v169;
      }

      v170 = fmaxf(v163, 0.0);
      v171 = fmaxf(v158, 0.0);
      if (v158 >= v165)
      {
        v172 = v158;
      }

      else
      {
        v172 = *(a1 + 62);
      }

      if (v159 >= v168)
      {
        v168 = v159;
      }

      v173 = v170 + (((v171 - v170) * (v168 - v170)) / (v172 - v170));
      if (v173 >= (v170 + (((v171 - v170) * (v159 - v170)) / (v158 - v170))))
      {
        v173 = v170 + (((v171 - v170) * (v159 - v170)) / (v158 - v170));
      }

      if (v161 >= 0.0 && v161 < 1.0)
      {
        v174 = 1.0 - v161;
        v173 = (v161 * v173) + v171 * v174;
        v168 = (v161 * v168) + v172 * v174;
      }

      if (v173 >= v168)
      {
        v175 = v168;
      }

      else
      {
        v175 = v173;
      }

      if (v168 >= v166)
      {
        v166 = v168;
      }

      if (v175 >= v171)
      {
        v176 = v171;
      }

      else
      {
        v176 = v175;
      }

      if (v168 >= v172)
      {
        v177 = v172;
      }

      else
      {
        v177 = v168;
      }

      if (v166 >= v167)
      {
        v178 = v167;
      }

      else
      {
        v178 = v166;
      }

      *(a3 + 4) = v170;
      *(a3 + 8) = v171;
      *(a3 + 12) = v172;
      *(a3 + 16) = v167;
      *(a3 + 20) = v170;
      *(a3 + 24) = v176;
      *(a3 + 28) = v177;
      *(a3 + 32) = v178;
      v179 = 1.0;
      if (v170 < v171)
      {
        v179 = (v176 - v170) / (v171 - v170);
      }

      v180 = v179;
      if (v171 < v172)
      {
        v180 = (v177 - v176) / (v172 - v171);
      }

      v181 = v180 * v180 * (1.0 / v179);
      v182 = v181;
      if (v167 != v172)
      {
        v182 = ((v178 - v177) / (v167 - v172)) * ((v178 - v177) / (v167 - v172)) * (1.0 / v181);
      }

      *(a3 + 36) = v179;
      *(a3 + 40) = v179;
      *(a3 + 44) = v181;
      *(a3 + 48) = v182;
      return;
    default:
      *a3 = 0;
      *(a3 + 2) = 3;
      *(a3 + 12) = 1065353216;
      *(a3 + 4) = 0x3F00000000000000;
      *(a3 + 28) = 1065353216;
      *(a3 + 20) = 0x3F00000000000000;
      __asm { FMOV            V0.2S, #1.0 }

      *(a3 + 36) = _D0;
      *(a3 + 44) = 1065353216;
      return;
  }
}