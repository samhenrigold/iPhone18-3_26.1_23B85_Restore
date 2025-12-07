BOOL getCoexSpmiExists()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = IOServiceNameMatching("wlan-idc");
  getIORegNodeName(v0, &v2, 9uLL);
  return (v2 ^ 0x6364692D6E616C77 | v3) == 0;
}

BOOL getCoexSpmiDisable()
{
  buffer[0] = 0;
  v0 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/options");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"bt-coex-spmi-disable", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v3 = CFProperty;
      Length = CFDataGetLength(CFProperty);
      v5 = CFGetTypeID(v3);
      if (v5 == CFDataGetTypeID() && Length <= 1)
      {
        v33.location = 0;
        v33.length = Length;
        CFDataGetBytes(v3, v33, buffer);
        buffer[Length] = 0;
      }

      else
      {
        buffer[0] = 0;
        v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v7)
        {
          getCoexSpmiDisable_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
        }
      }

      CFRelease(v3);
    }

    else
    {
      buffer[0] = 0;
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v23)
      {
        getCoexSpmiDisable_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
      }
    }

    IOObjectRelease(v1);
  }

  else
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      getCoexSpmiDisable_cold_3(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  return *buffer == 49;
}

void getHostPlatformName(char *a1, size_t a2)
{
  v4 = IOServiceMatching("IOPlatformExpertDevice");

  getIORegNodeName(v4, a1, a2);
}

const __CFData *CentauriBetaPatchBayCopyData()
{
  v42 = *MEMORY[0x277D85DE8];
  memset(v40, 0, sizeof(v40));
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  *bytes = 0x1CAFECAFELL;
  v41 = -889271554;
  v0 = IOServiceMatching("IOPlatformExpertDevice");
  getIORegNodeName(v0, &v30, 0x10uLL);
  v1 = strnlen(&v30, 0x10uLL);
  v2 = strncasecmp(&bytes[v1 + 5], "DEV", 3uLL);
  v3 = v31 & 0xFFFFFFFE;
  if (!v2)
  {
    ++v3;
  }

  LODWORD(v31) = v3;
  if (getCoexSpmiExists())
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  LODWORD(v31) = v31 & 0xFFFFFFFD | v4;
  CoexSpmiDisable = getCoexSpmiDisable();
  v6 = v31;
  if (CoexSpmiDisable)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  LODWORD(v31) = v31 & 0xFFFFFFFB | v7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136316418;
    v20 = "CentauriBetaPatchBayCopyData";
    v21 = 1024;
    *v22 = *&bytes[4];
    *&v22[4] = 2080;
    *&v22[6] = &v30;
    v23 = 1024;
    v24 = v6 & 1;
    v25 = 1024;
    v26 = (v6 >> 1) & 1;
    v27 = 1024;
    v28 = v7 >> 2;
    _os_log_impl(&dword_243384000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: version=%d, hostPlatformName=%s, isDevBoard=%d, coexSpmiExists=%d, coexSpmiDisable=%d", &v19, 0x2Eu);
  }

  v8 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 200);
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      Length = CFDataGetLength(v8);
      v19 = 136315394;
      v20 = "CentauriBetaPatchBayCopyData";
      v21 = 2048;
      *v22 = Length;
      _os_log_impl(&dword_243384000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: returning %ld bytes", &v19, 0x16u);
    }
  }

  else
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      CentauriBetaPatchBayCopyData_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return v8;
}

void getIORegNodeName(CFDictionaryRef matching, char *a2, size_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  if (matching)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], matching);
    if (MatchingService)
    {
      v6 = MatchingService;
      if (MEMORY[0x245D31040](MatchingService, __src))
      {
        v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v7)
        {
          getIORegNodeName_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
        }
      }

      else
      {
        strncpy(a2, __src, a3);
        a2[a3 - 1] = 0;
      }

      IOObjectRelease(v6);
    }

    else
    {
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v23)
      {
        getIORegNodeName_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
      }
    }
  }

  else
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      getIORegNodeName_cold_3(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void getCoexSpmiDisable_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "getStringFromNVRAM";
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: wrong type or wrong length", a5, a6, a7, a8, v8, DWORD2(v8));
}

void getCoexSpmiDisable_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "getStringFromNVRAM";
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: variable not found", a5, a6, a7, a8, v8, DWORD2(v8));
}

void getCoexSpmiDisable_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "getStringFromNVRAM";
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: failed to get options", a5, a6, a7, a8, v8, DWORD2(v8));
}

void CentauriBetaPatchBayCopyData_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CentauriBetaPatchBayCopyData";
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: failed to create CF data", a5, a6, a7, a8, v8, DWORD2(v8));
}

void getIORegNodeName_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "getIORegNodeName";
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: Failed to get name for service\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void getIORegNodeName_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "getIORegNodeName";
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: service not found", a5, a6, a7, a8, v8, DWORD2(v8));
}

void getIORegNodeName_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "getIORegNodeName";
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: failed to create matching dict", a5, a6, a7, a8, v8, DWORD2(v8));
}